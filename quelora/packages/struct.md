├── quelora-common
│   ├── config
│   │   ├── commentAnalysisPromptConfig.js
│   │   ├── corsClientConfig.js
│   │   ├── dynamicCorsConfig.js
│   │   ├── entityPromptConfig.js
│   │   ├── helmetConfig.js
│   │   └── moderationPromptConfig.js
│   ├── db.js
│   ├── locale
│   │   ├── ar.json
│   │   ├── de.json
│   │   ├── en.json
│   │   ├── es.json
│   │   ├── fr.json
│   │   ├── he.json
│   │   ├── hi.json
│   │   ├── it.json
│   │   ├── jp.json
│   │   ├── pt.json
│   │   ├── ru.json
│   │   └── zh.json
│   ├── middlewares
│   │   ├── authMiddleware.js
│   │   ├── cacheInvalidator.js
│   │   ├── captchaMiddleware.js
│   │   ├── extractGeoDataMiddleware.js
│   │   ├── globalErrorHandler.js
│   │   ├── optionalAuthMiddleware.js
│   │   ├── rateLimiterMiddleware.js
│   │   ├── requestLogger.js
│   │   ├── responseCompressor.js
│   │   └── validateClientHeaderMiddleware.js
│   ├── models
│   │   ├── Activity.js
│   │   ├── Comment.js
│   │   ├── CommentAnalysis.js
│   │   ├── CommentAudio.js
│   │   ├── Post.js
│   │   ├── Profile.js
│   │   ├── ProfileBlock.js
│   │   ├── ProfileBookmark.js
│   │   ├── ProfileComment.js
│   │   ├── ProfileFollowRequest.js
│   │   ├── ProfileFollower.js
│   │   ├── ProfileFollowing.js
│   │   ├── ProfileLike.js
│   │   ├── ProfileShare.js
│   │   ├── ReportedComment.js
│   │   ├── Survey.js
│   │   ├── SurveyResponse.js
│   │   ├── User.js
│   │   └── UserSchema.js
│   ├── moderationProviders
│   │   ├── DeepSeekModerationProvider.js
│   │   ├── GeminiModerationProvider.js
│   │   ├── GrokModerationProvider.js
│   │   ├── ModerationProvider.js
│   │   └── OpenAIModerationProvider.js
│   ├── package.json
│   ├── services
│   │   ├── activityService.js
│   │   ├── authService.js
│   │   ├── cacheService.js
│   │   ├── captchaService.js
│   │   ├── clientConfigService.js
│   │   ├── commentAnalysisService.js
│   │   ├── emailService.js
│   │   ├── i18nService.js
│   │   ├── languageService.js
│   │   ├── loggerService.js
│   │   ├── moderateService.js
│   │   ├── profileService.js
│   │   ├── pushNotificationService.js
│   │   ├── pushService.js
│   │   ├── ssoService.js
│   │   ├── surveyService.js
│   │   ├── toxicityService.js
│   │   └── translateService.js
│   ├── ssoProviders
│   │   ├── AppleProvider.js
│   │   ├── FacebookProvider.js
│   │   ├── GoogleProvider.js
│   │   ├── QueloraProvider.js
│   │   └── XProvider.js
│   └── utils
│       ├── cacheUtils.js
│       ├── cipher.js
│       ├── commentAnalysisUtils.js
│       ├── deepMerge.js
│       ├── firstDefined.js
│       ├── followStatusUtils.js
│       ├── formatComment.js
│       ├── imageHelper.js
│       ├── notificationUtils.js
│       ├── password.js
│       ├── profileUtils.js
│       ├── recordProfileActivity.js
│       ├── recordStatsActivity.js
│       └── textUtils.js
├── quelora-dashboard-api
│   ├── .env
│   ├── .env.example
│   ├── .gitignore
│   ├── app.js
│   ├── config
│   │   └── commentAnalysisNolanPromptConfig.js
│   ├── controllers
│   │   ├── authController.js
│   │   ├── clientController.js
│   │   ├── notificationsController.js
│   │   ├── statsController.js
│   │   └── userController.js
│   ├── cron
│   │   ├── dailyRollupJob.js
│   │   ├── discoveryJob.js
│   │   ├── index.js
│   │   ├── profileStatsJob.js
│   │   ├── statsJob.js
│   │   └── tokenUsageRollupJob.js
│   ├── middlewares
│   │   └── adminAuthMiddleware.js
│   ├── models
│   │   ├── GeoPostStats.js
│   │   ├── GeoStats.js
│   │   ├── PostStats.js
│   │   ├── ProfileStats.js
│   │   ├── ProfileStatsDaily.js
│   │   ├── Stats.js
│   │   ├── TokenUsageStats.js
│   │   └── User.js
│   ├── package.json
│   ├── public
│   │   └── assets
│   │       └── german_1762889674146.webp
│   ├── routes
│   │   ├── authRoutes.js
│   │   ├── clientRoutes.js
│   │   ├── notificationsRoutes.js
│   │   ├── routes.js
│   │   ├── statsRoutes.js
│   │   └── userRoutes.js
│   ├── seed
│   │   ├── ReconcileProfileComments.js
│   │   ├── SeedFollowers.js
│   │   ├── SeedPostsLikes.js
│   │   ├── SeedRedditCommentsCoordinator.js
│   │   ├── SeedRedditCommentsUpdate.js
│   │   ├── SeedRedditThread.js
│   │   ├── SeedRedditThreadComments.js
│   │   ├── backfillDailyStats.js
│   │   ├── backfill_comment_roots
│   │   ├── config
│   │   │   └── geoData.js
│   │   ├── empty.nosql
│   │   ├── nohup.out
│   │   ├── seedAdminUser.js
│   │   ├── seedComments.js
│   │   ├── seedFakerUser.js
│   │   ├── seedVAPID.js
│   │   └── seed_start.sh
│   └── services
│       ├── commentAnalysisNolanService.js
│       ├── puppeteerService.js
│       ├── statsRollupService.js
│       └── statsService.js
├── quelora-public-api
│   ├── .env
│   ├── .env.example
│   ├── .gitignore
│   ├── app.js
│   ├── controllers
│   │   ├── commentController.js
│   │   ├── notificationsController.js
│   │   ├── postController.js
│   │   ├── profileController.js
│   │   ├── registrationController.js
│   │   ├── ssoController.js
│   │   └── surveyController.js
│   ├── package.json
│   ├── public
│   │   ├── .gitkeep
│   │   └── assets
│   │       ├── .gitkeep
│   │       ├── 1f912bd89888338fed818a2d24a7f404ff58412679d584870c0f4ec35c43ea21.background.webp
│   │       ├── 34cc22e898190b12b9cf7c621c0552e84833f35964d6a3ae18126d142cba3e52.background.webp
│   │       └── 34cc22e898190b12b9cf7c621c0552e84833f35964d6a3ae18126d142cba3e52.webp
│   ├── routes
│   │   ├── authRoutes.js
│   │   ├── commentRoutes.js
│   │   ├── notificationsRoutes.js
│   │   ├── postRoutes.js
│   │   ├── profileRoutes.js
│   │   ├── routes.js
│   │   ├── ssoRoutes.js
│   │   └── surveyRoutes.js
│   ├── services
│   │   └── webSocketService.js
│   └── templates
│       └── emails
│           └── verificationTemplate.js
└── struct.md
