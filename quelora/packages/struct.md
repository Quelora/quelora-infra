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
│   │   ├── AdCampaign.js
│   │   ├── AdCreative.js
│   │   ├── AdvertiserProfile.js
│   │   ├── Client.js
│   │   ├── Comment.js
│   │   ├── CommentAnalysis.js
│   │   ├── CommentAudio.js
│   │   ├── Placement.js
│   │   ├── PlacementPricing.js
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
│   │   └── SurveyResponse.js
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
│   │   ├── adCampaignController.js
│   │   ├── adminController.js
│   │   ├── advertiserProfileController.js
│   │   ├── authController.js
│   │   ├── clientController.js
│   │   ├── mediaController.js
│   │   ├── notificationsController.js
│   │   ├── placementController.js
│   │   ├── placementPricingController.js
│   │   ├── statsController.js
│   │   ├── surveyController.js
│   │   └── userController.js
│   ├── cron
│   │   ├── adStatsJob.js
│   │   ├── dailyRollupJob.js
│   │   ├── discoveryJob.js
│   │   ├── index.js
│   │   ├── profileStatsJob.js
│   │   ├── statsJob.js
│   │   └── tokenUsageRollupJob.js
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
│   │   ├── adminAuthMiddleware.js
│   │   ├── roleAuthMiddleware.js
│   │   └── uploadMiddleware.js
│   ├── models
│   │   ├── GeoPostStats.js
│   │   ├── GeoStats.js
│   │   ├── PostStats.js
│   │   ├── ProfileStats.js
│   │   ├── ProfileStatsDaily.js
│   │   ├── Stats.js
│   │   ├── TokenUsageStats.js
│   │   ├── User.js
│   │   └── UserSchema.js
│   ├── package.json
│   ├── public
│   │   └── assets
│   ├── routes
│   │   ├── adCampaignRoutes.js
│   │   ├── adminRoutes.js
│   │   ├── advertiserProfileRoutes.js
│   │   ├── authRoutes.js
│   │   ├── clientRoutes.js
│   │   ├── healthRoutes.js
│   │   ├── mediaRoutes.js
│   │   ├── notificationsRoutes.js
│   │   ├── placementPricingRoutes.js
│   │   ├── placementRoutes.js
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
│   │   ├── migrateClients.js
│   │   ├── nohup.out
│   │   ├── seedAdminUser.js
│   │   ├── seedComments.js
│   │   ├── seedFakerUser.js
│   │   ├── seedVAPID.js
│   │   └── seed_start.sh
│   ├── services
│   │   ├── adCampaignService.js
│   │   ├── adStatsService.js
│   │   ├── commentAnalysisNolanService.js
│   │   ├── puppeteerService.js
│   │   ├── statsRollupService.js
│   │   └── statsService.js
│   ├── templates
│   │   └── emails
│   │       └── verificationTemplate.js
│   └── utils
│       └── accessControl.js
├── quelora-public-api
│   ├── .env
│   ├── .env.example
│   ├── .gitignore
│   ├── app.js
│   ├── controllers
│   │   ├── adController.js
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
│   ├── routes
│   │   ├── adRoutes.js
│   │   ├── authRoutes.js
│   │   ├── commentRoutes.js
│   │   ├── notificationsRoutes.js
│   │   ├── postRoutes.js
│   │   ├── profileRoutes.js
│   │   ├── routes.js
│   │   ├── ssoRoutes.js
│   │   └── surveyRoutes.js
│   ├── services
│   │   ├── adsService.js
│   │   └── webSocketService.js
│   └── templates
│       └── emails
│           └── verificationTemplate.js
├── quelora-worker
│   ├── .env
│   ├── .gitignore
│   ├── index.js
│   ├── package.json
│   └── processors
│       ├── emailProcessor.js
│       ├── metrics.js
│       └── pushProcessor.js
└── struct.md
