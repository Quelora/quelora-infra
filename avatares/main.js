const axios = require('axios');
const cheerio = require('cheerio');
const fs = require('fs');
const path = require('path');

// Configuración
const TARGET_URL = 'https://www.steamcardexchange.net/index.php?newitems-filter-frames';
const DOWNLOAD_FOLDER = path.join(__dirname, 'downloads');

// Crear carpeta de descargas si no existe
if (!fs.existsSync(DOWNLOAD_FOLDER)) {
    fs.mkdirSync(DOWNLOAD_FOLDER);
}

const scrapeAndDownload = async () => {
    try {
        console.log(`⏳ Obteniendo página: ${TARGET_URL}...`);
        const { data } = await axios.get(TARGET_URL);
        const $ = cheerio.load(data);

        const items = [];

        // Iteramos sobre los contenedores de los items.
        // Basado en tu HTML, los items están en divs con estas clases específicas
        $('.flex.flex-col.items-center.p-5').each((index, element) => {
            // 1. Obtener el NOMBRE usando la clase que pediste
            let name = $(element).find('.text-sm.text-center.break-words').text().trim();

            if (!name) return; // Si no hay nombre, saltar

            // Limpiar el nombre para que sea válido como nombre de archivo (quitar / : * ? " < > |)
            const safeName = name.replace(/[\\/:*?"<>|]/g, '_');

            // 2. Obtener la URL de la imagen
            // Prioridad 1: El enlace directo a la "Animation" (clase gallery-src)
            let imgUrl = $(element).find('a.gallery-src').attr('href');

            // Prioridad 2: Si no hay link de animación, buscar la imagen estática dentro del toggle secundario o primario
            if (!imgUrl) {
                // Nota: La web usa Lazy Load, por eso buscamos 'data-original' en lugar de 'src'
                imgUrl = $(element).find('.hover-toggle-secondary img').attr('data-original');
            }
            if (!imgUrl) {
                imgUrl = $(element).find('.hover-toggle-primary img').attr('data-original');
            }

            if (imgUrl) {
                items.push({
                    name: safeName,
                    url: imgUrl
                });
            }
        });

        console.log(`✅ Se encontraron ${items.length} imágenes. Comenzando descarga...`);

        // Procesar descargas
        let count = 0;
        for (const item of items) {
            // Obtener la extensión del archivo original (png, apng, jpg, etc)
            const extension = path.extname(item.url) || '.png';
            const filename = `${item.name}${extension}`;
            const filePath = path.join(DOWNLOAD_FOLDER, filename);

            try {
                await downloadImage(item.url, filePath);
                count++;
                console.log(`[${count}/${items.length}] Descargado: ${filename}`);
            } catch (err) {
                console.error(`❌ Error descargando ${filename}: ${err.message}`);
            }
        }

        console.log('\n🎉 ¡Proceso completado!');

    } catch (error) {
        console.error('Error principal:', error.message);
    }
};

// Función auxiliar para descargar una imagen
const downloadImage = async (url, imagePath) => {
    const writer = fs.createWriteStream(imagePath);

    const response = await axios({
        url,
        method: 'GET',
        responseType: 'stream'
    });

    response.data.pipe(writer);

    return new Promise((resolve, reject) => {
        writer.on('finish', resolve);
        writer.on('error', reject);
    });
};

// Ejecutar
scrapeAndDownload();