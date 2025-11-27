├── Dockerfile.api
├── Dockerfile.api.dashboard
├── Dockerfile.worker
├── package.json
├── packages
│   ├── quelora-common
│   │   ├── config
│   │   │   ├── commentAnalysisPromptConfig.js
│   │   │   ├── corsClientConfig.js
│   │   │   ├── dynamicCorsConfig.js
│   │   │   ├── entityPromptConfig.js
│   │   │   ├── helmetConfig.js
│   │   │   └── moderationPromptConfig.js
│   │   ├── db.js
│   │   ├── locale
│   │   │   ├── ar.json
│   │   │   ├── de.json
│   │   │   ├── en.json
│   │   │   ├── es.json
│   │   │   ├── fr.json
│   │   │   ├── he.json
│   │   │   ├── hi.json
│   │   │   ├── it.json
│   │   │   ├── jp.json
│   │   │   ├── pt.json
│   │   │   ├── ru.json
│   │   │   └── zh.json
│   │   ├── middlewares
│   │   │   ├── authMiddleware.js
│   │   │   ├── cacheInvalidator.js
│   │   │   ├── captchaMiddleware.js
│   │   │   ├── extractGeoDataMiddleware.js
│   │   │   ├── globalErrorHandler.js
│   │   │   ├── optionalAuthMiddleware.js
│   │   │   ├── rateLimiterMiddleware.js
│   │   │   ├── requestLogger.js
│   │   │   ├── responseCompressor.js
│   │   │   └── validateClientHeaderMiddleware.js
│   │   ├── models
│   │   │   ├── Activity.js
│   │   │   ├── AdCampaign.js
│   │   │   ├── AdCreative.js
│   │   │   ├── AdvertiserProfile.js
│   │   │   ├── Client.js
│   │   │   ├── Comment.js
│   │   │   ├── CommentAnalysis.js
│   │   │   ├── CommentAudio.js
│   │   │   ├── Placement.js
│   │   │   ├── PlacementPricing.js
│   │   │   ├── Post.js
│   │   │   ├── Profile.js
│   │   │   ├── ProfileBlock.js
│   │   │   ├── ProfileBookmark.js
│   │   │   ├── ProfileComment.js
│   │   │   ├── ProfileFollowRequest.js
│   │   │   ├── ProfileFollower.js
│   │   │   ├── ProfileFollowing.js
│   │   │   ├── ProfileLike.js
│   │   │   ├── ProfileShare.js
│   │   │   ├── ReportedComment.js
│   │   │   ├── Survey.js
│   │   │   └── SurveyResponse.js
│   │   ├── moderationProviders
│   │   │   ├── DeepSeekModerationProvider.js
│   │   │   ├── GeminiModerationProvider.js
│   │   │   ├── GrokModerationProvider.js
│   │   │   ├── ModerationProvider.js
│   │   │   └── OpenAIModerationProvider.js
│   │   ├── package.json
│   │   ├── services
│   │   │   ├── activityService.js
│   │   │   ├── authService.js
│   │   │   ├── cacheService.js
│   │   │   ├── captchaService.js
│   │   │   ├── clientConfigService.js
│   │   │   ├── commentAnalysisService.js
│   │   │   ├── emailService.js
│   │   │   ├── i18nService.js
│   │   │   ├── languageService.js
│   │   │   ├── loggerService.js
│   │   │   ├── moderateService.js
│   │   │   ├── profileService.js
│   │   │   ├── pushService.js
│   │   │   ├── ssoService.js
│   │   │   ├── surveyService.js
│   │   │   ├── toxicityService.js
│   │   │   └── translateService.js
│   │   ├── ssoProviders
│   │   │   ├── AppleProvider.js
│   │   │   ├── FacebookProvider.js
│   │   │   ├── GoogleProvider.js
│   │   │   ├── QueloraProvider.js
│   │   │   └── XProvider.js
│   │   └── utils
│   │       ├── cacheUtils.js
│   │       ├── cipher.js
│   │       ├── commentAnalysisUtils.js
│   │       ├── deepMerge.js
│   │       ├── firstDefined.js
│   │       ├── followStatusUtils.js
│   │       ├── formatComment.js
│   │       ├── imageHelper.js
│   │       ├── notificationUtils.js
│   │       ├── password.js
│   │       ├── profileUtils.js
│   │       ├── recordProfileActivity.js
│   │       ├── recordStatsActivity.js
│   │       └── textUtils.js
│   ├── quelora-dashboard-api
│   │   ├── .env
│   │   ├── .env.example
│   │   ├── .gitignore
│   │   ├── app.js
│   │   ├── config
│   │   │   └── commentAnalysisNolanPromptConfig.js
│   │   ├── controllers
│   │   │   ├── adCampaignController.js
│   │   │   ├── adminController.js
│   │   │   ├── advertiserProfileController.js
│   │   │   ├── authController.js
│   │   │   ├── clientController.js
│   │   │   ├── mediaController.js
│   │   │   ├── notificationsController.js
│   │   │   ├── placementController.js
│   │   │   ├── placementPricingController.js
│   │   │   ├── statsController.js
│   │   │   ├── surveyController.js
│   │   │   └── userController.js
│   │   ├── cron
│   │   │   ├── adStatsJob.js
│   │   │   ├── dailyRollupJob.js
│   │   │   ├── discoveryJob.js
│   │   │   ├── index.js
│   │   │   ├── profileStatsJob.js
│   │   │   ├── statsJob.js
│   │   │   └── tokenUsageRollupJob.js
│   │   ├── locale
│   │   │   ├── ar.json
│   │   │   ├── de.json
│   │   │   ├── en.json
│   │   │   ├── es.json
│   │   │   ├── fr.json
│   │   │   ├── he.json
│   │   │   ├── hi.json
│   │   │   ├── it.json
│   │   │   ├── jp.json
│   │   │   ├── pt.json
│   │   │   ├── ru.json
│   │   │   └── zh.json
│   │   ├── middlewares
│   │   │   ├── adminAuthMiddleware.js
│   │   │   ├── roleAuthMiddleware.js
│   │   │   └── uploadMiddleware.js
│   │   ├── models
│   │   │   ├── GeoPostStats.js
│   │   │   ├── GeoStats.js
│   │   │   ├── PostStats.js
│   │   │   ├── ProfileStats.js
│   │   │   ├── ProfileStatsDaily.js
│   │   │   ├── Stats.js
│   │   │   ├── TokenUsageStats.js
│   │   │   ├── User.js
│   │   │   └── UserSchema.js
│   │   ├── package.json
│   │   ├── public
│   │   │   └── assets
│   │   │       ├── ads
│   │   │       │   ├── creative-1763300564699-147971348.png
│   │   │       │   ├── creative-1763318542465-151272918.png
│   │   │       │   ├── creative-1763318712275-1399668.png
│   │   │       │   ├── creative-1763330768161-793207111.png
│   │   │       │   ├── creative-1763331482935-943488398.png
│   │   │       │   ├── creative-1763331685797-771392107.png
│   │   │       │   ├── creative-1763331689551-815206276.png
│   │   │       │   ├── creative-1763332045072-755225400.png
│   │   │       │   ├── creative-1763338925402-105805430.png
│   │   │       │   ├── creative-1763339032565-704339186.png
│   │   │       │   ├── creative-1763339421700-644007211.png
│   │   │       │   ├── creative-1763339975283-991318694.png
│   │   │       │   ├── creative-1763340314165-699256291.png
│   │   │       │   ├── creative-1763340428895-477527643.png
│   │   │       │   ├── creative-1763340593480-173112261.png
│   │   │       │   ├── creative-1763340606533-291669978.png
│   │   │       │   ├── creative-1763340725516-627401802.png
│   │   │       │   ├── creative-1763343591023-527966816.png
│   │   │       │   ├── creative-1763393670237-756115273.png
│   │   │       │   ├── creative-1763393702522-208409254.png
│   │   │       │   ├── creative-1763393707934-742711698.png
│   │   │       │   ├── creative-1763393716723-112590741.png
│   │   │       │   ├── creative-1763398194192-266759384.mp4
│   │   │       │   ├── creative-1763418006983-408534226.jpg
│   │   │       │   ├── creative-1763418018489-407725103.png
│   │   │       │   ├── creative-1763518408003-395083081.jpg
│   │   │       │   ├── creative-1763518415491-27244894.png
│   │   │       │   ├── creative-1763659360320-839902784.png
│   │   │       │   ├── creative-1763662375257-334077106.png
│   │   │       │   ├── creative-1763662417904-349419375.png
│   │   │       │   ├── creative-1763734149729-179113930.jpeg
│   │   │       │   ├── creative-1763790874863-383885682.jpg
│   │   │       │   ├── creative-1763790882023-304889402.png
│   │   │       │   ├── creative-1763791416540-973436097.jpg
│   │   │       │   ├── creative-1763791420227-989115392.png
│   │   │       │   ├── creative-1763859117469-172247248.mp4
│   │   │       │   ├── creative-1763859169142-165583969.mp4
│   │   │       │   └── creative-1763859348073-282284773.mp4
│   │   │       ├── avatars
│   │   │       │   ├── avatar-13c5c438-4afe-4b60-bb90-1802f3029a8f.jpeg
│   │   │       │   ├── avatar-23ec6593-44e8-4d1a-a6aa-575ddf9b57b2.jpeg
│   │   │       │   ├── avatar-261cc365-e900-4ee5-a6b0-75fc7140f20f.jpeg
│   │   │       │   ├── avatar-3b1c1a79-757e-45c3-accd-854164d75712.jpeg
│   │   │       │   ├── avatar-452c2584-6486-4b3e-81b6-06d5e47c348f.jpeg
│   │   │       │   ├── avatar-45343398-9a1d-472b-a52c-3e4e4e9e2552.jpeg
│   │   │       │   ├── avatar-7097bd05-6a95-40b4-92b9-84f880a783f7.jpeg
│   │   │       │   ├── avatar-77c7cd0e-1792-4147-a005-9ae1ad6e2467.jpeg
│   │   │       │   ├── avatar-872de800-c3fa-488e-9a47-1d6f5e8fb601.jpeg
│   │   │       │   ├── avatar-9a5687ff-6a9d-4941-a671-78bb08c082ae.jpeg
│   │   │       │   ├── avatar-a5e86f60-ab3e-4ff3-bd25-4e902a9c1885.jpeg
│   │   │       │   ├── avatar-adba7408-96d4-4253-9a2b-65be74088645.jpeg
│   │   │       │   └── avatar-ae3aab2b-7b6c-4bef-8ce9-870fc432596d.jpeg
│   │   │       ├── backgrounds
│   │   │       │   ├── background-69507222-87f0-4831-841f-e0dc95bd5659.jpeg
│   │   │       │   └── background-6ee4acb0-0bd4-46b1-af2d-34d1120f6413.jpeg
│   │   │       ├── cosme_1763656480730.webp
│   │   │       ├── gerchoz_1763789807050.webp
│   │   │       ├── gerchoz_1763834075621.webp
│   │   │       ├── german_1762889674146.webp
│   │   │       ├── german_1763331558209.webp
│   │   │       ├── german_1763391063883.webp
│   │   │       ├── german_1763652837386.webp
│   │   │       ├── godmode_1763681377900.webp
│   │   │       └── publicidad_1763773424888.webp
│   │   ├── routes
│   │   │   ├── adCampaignRoutes.js
│   │   │   ├── adminRoutes.js
│   │   │   ├── advertiserProfileRoutes.js
│   │   │   ├── authRoutes.js
│   │   │   ├── clientRoutes.js
│   │   │   ├── healthRoutes.js
│   │   │   ├── mediaRoutes.js
│   │   │   ├── notificationsRoutes.js
│   │   │   ├── placementPricingRoutes.js
│   │   │   ├── placementRoutes.js
│   │   │   ├── routes.js
│   │   │   ├── statsRoutes.js
│   │   │   └── userRoutes.js
│   │   ├── seed
│   │   │   ├── ReconcileProfileComments.js
│   │   │   ├── SeedFollowers.js
│   │   │   ├── SeedPostsLikes.js
│   │   │   ├── SeedRedditCommentsCoordinator.js
│   │   │   ├── SeedRedditCommentsUpdate.js
│   │   │   ├── SeedRedditThread.js
│   │   │   ├── SeedRedditThreadComments.js
│   │   │   ├── backfillDailyStats.js
│   │   │   ├── backfill_comment_roots
│   │   │   ├── config
│   │   │   │   └── geoData.js
│   │   │   ├── empty.nosql
│   │   │   ├── migrateClients.js
│   │   │   ├── nohup.out
│   │   │   ├── seedAdminUser.js
│   │   │   ├── seedComments.js
│   │   │   ├── seedFakerUser.js
│   │   │   ├── seedVAPID.js
│   │   │   └── seed_start.sh
│   │   ├── services
│   │   │   ├── adCampaignService.js
│   │   │   ├── adStatsService.js
│   │   │   ├── commentAnalysisNolanService.js
│   │   │   ├── puppeteerService.js
│   │   │   ├── statsRollupService.js
│   │   │   └── statsService.js
│   │   ├── templates
│   │   │   └── emails
│   │   │       └── verificationTemplate.js
│   │   └── utils
│   │       └── accessControl.js
│   ├── quelora-public-api
│   │   ├── .env
│   │   ├── .env.example
│   │   ├── .gitignore
│   │   ├── app.js
│   │   ├── controllers
│   │   │   ├── adController.js
│   │   │   ├── commentController.js
│   │   │   ├── notificationsController.js
│   │   │   ├── postController.js
│   │   │   ├── profileController.js
│   │   │   ├── registrationController.js
│   │   │   ├── ssoController.js
│   │   │   └── surveyController.js
│   │   ├── package.json
│   │   ├── public
│   │   │   ├── .gitkeep
│   │   │   └── assets
│   │   │       ├── .gitkeep
│   │   │       ├── 1f912bd89888338fed818a2d24a7f404ff58412679d584870c0f4ec35c43ea21.background.webp
│   │   │       ├── 34cc22e898190b12b9cf7c621c0552e84833f35964d6a3ae18126d142cba3e52.background.webp
│   │   │       └── 34cc22e898190b12b9cf7c621c0552e84833f35964d6a3ae18126d142cba3e52.webp
│   │   ├── routes
│   │   │   ├── adRoutes.js
│   │   │   ├── authRoutes.js
│   │   │   ├── commentRoutes.js
│   │   │   ├── notificationsRoutes.js
│   │   │   ├── postRoutes.js
│   │   │   ├── profileRoutes.js
│   │   │   ├── routes.js
│   │   │   ├── ssoRoutes.js
│   │   │   └── surveyRoutes.js
│   │   ├── services
│   │   │   ├── adsService.js
│   │   │   └── webSocketService.js
│   │   └── templates
│   │       └── emails
│   │           └── verificationTemplate.js
│   ├── quelora-worker
│   │   ├── .env
│   │   ├── .gitignore
│   │   ├── index.js
│   │   ├── package.json
│   │   └── processors
│   │       ├── emailProcessor.js
│   │       └── pushProcessor.js
│   └── struct.md
└── struct.md
