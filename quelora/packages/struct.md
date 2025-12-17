├── .gitignore
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
│   │   ├── trackUserPresence.js
│   │   ├── validateClientHeaderMiddleware.js
│   │   └── validatePasswordResetTokenMiddleware.js
│   ├── models
│   │   ├── Activity.js
│   │   ├── Client.js
│   │   ├── Comment.js
│   │   ├── CommentAudio.js
│   │   ├── GeoPostStats.js
│   │   ├── GeoStats.js
│   │   ├── JobExecutionLog.js
│   │   ├── Post.js
│   │   ├── PostStats.js
│   │   ├── Profile.js
│   │   ├── ProfileBlock.js
│   │   ├── ProfileBookmark.js
│   │   ├── ProfileComment.js
│   │   ├── ProfileFollowRequest.js
│   │   ├── ProfileFollower.js
│   │   ├── ProfileFollowing.js
│   │   ├── ProfileLike.js
│   │   ├── ProfileNotInterested.js
│   │   ├── ProfileShare.js
│   │   ├── ProfileStats.js
│   │   ├── ProfileStatsDaily.js
│   │   ├── ProfileSuggestion.js
│   │   ├── ReportedComment.js
│   │   ├── ReputationConfig.js
│   │   ├── ReputationLog.js
│   │   ├── Stats.js
│   │   └── TokenUsageStats.js
│   ├── moderationProviders
│   │   ├── DeepSeekModerationProvider.js
│   │   ├── GeminiModerationProvider.js
│   │   ├── GrokModerationProvider.js
│   │   ├── ModerationProvider.js
│   │   └── OpenAIModerationProvider.js
│   ├── package.json
│   ├── services
│   │   ├── activeUsersService.js
│   │   ├── activityProcessorService.js
│   │   ├── activityService.js
│   │   ├── authService.js
│   │   ├── cacheService.js
│   │   ├── captchaService.js
│   │   ├── clientConfigService.js
│   │   ├── commentProcessingService.js
│   │   ├── emailService.js
│   │   ├── geoService.js
│   │   ├── i18nService.js
│   │   ├── languageService.js
│   │   ├── loggerService.js
│   │   ├── moderateService.js
│   │   ├── notificationAggregatorService.js
│   │   ├── onboardingService.js
│   │   ├── profileService.js
│   │   ├── pushService.js
│   │   ├── queueFactory.js
│   │   ├── reputationProcessorService.js
│   │   ├── reputationService.js
│   │   ├── ssoService.js
│   │   ├── statsRollupService.js
│   │   ├── statsService.js
│   │   ├── suggestService.js
│   │   ├── tokenUsageService.js
│   │   ├── toxicityService.js
│   │   ├── translateService.js
│   │   └── userEventService.js
│   ├── ssoProviders
│   │   ├── AppleProvider.js
│   │   ├── FacebookProvider.js
│   │   ├── GoogleProvider.js
│   │   ├── QueloraProvider.js
│   │   └── XProvider.js
│   ├── templates
│   │   └── emails
│   │       ├── notificationTemplate.js
│   │       └── verificationTemplate.js
│   └── utils
│       ├── cipher.js
│       ├── deepMerge.js
│       ├── featureLoader.js
│       ├── formatComment.js
│       ├── geoUtils.js
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
│   │   ├── adminController.js
│   │   ├── authController.js
│   │   ├── clientController.js
│   │   ├── mediaController.js
│   │   ├── notificationsController.js
│   │   ├── statsController.js
│   │   ├── suggestionController.js
│   │   └── userController.js
│   ├── cron
│   │   ├── discoveryJob.js
│   │   └── index.js
│   ├── data
│   │   └── geoip_cache
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
│   │   ├── User.js
│   │   └── UserSchema.js
│   ├── package.json
│   ├── public
│   │   └── assets
│   │       └── ads
│   ├── routes
│   │   ├── activateAllJobs.js
│   │   ├── adminRoutes.js
│   │   ├── authRoutes.js
│   │   ├── clientRoutes.js
│   │   ├── healthRoutes.js
│   │   ├── mediaRoutes.js
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
│   │   ├── backfill_comment_roots.js
│   │   ├── config
│   │   │   └── geoData.js
│   │   ├── empty.nosql
│   │   ├── initJobsConfig.js
│   │   ├── migrateClients.js
│   │   ├── nohup.out
│   │   ├── schemaSchore.nosql
│   │   ├── seedAdminUser.js
│   │   ├── seedComments.js
│   │   ├── seedFakerUser.js
│   │   ├── seedGamificationLevels.js
│   │   ├── seedGamificationRules.js
│   │   ├── seedGamificationShopItems.js
│   │   ├── seedReputationConfigs.js
│   │   ├── seedVAPID.js
│   │   ├── seed_start.sh
│   │   └── seggestedbBackfill.js
│   ├── services
│   │   ├── commentAnalysisNolanService.js
│   │   └── puppeteerService.js
│   └── utils
│       └── accessControl.js
├── quelora-enterprise
│   ├── controllers
│   │   ├── adCampaignController.js
│   │   ├── adController.js
│   │   ├── advertiserProfileController.js
│   │   ├── gamificationController.js
│   │   ├── gamificationDashboardController.js
│   │   ├── gamificationStoreController.js
│   │   ├── placementController.js
│   │   ├── placementPricingController.js
│   │   ├── sseController.js
│   │   ├── surveyController.js
│   │   └── surveyDashboardController.js
│   ├── index.js
│   ├── locale
│   │   ├── en.json
│   │   └── es.json
│   ├── middlewares
│   │   ├── gamificationCapabilityMiddleware.js
│   │   ├── sseAuthMiddleware.js
│   │   └── uploadMiddlewareFactory.js
│   ├── models
│   │   ├── AdCampaign.js
│   │   ├── AdClickLog.js
│   │   ├── AdCreative.js
│   │   ├── AdDailyStats.js
│   │   ├── AdvertiserProfile.js
│   │   ├── GamificationConfig.js
│   │   ├── GamificationInventory.js
│   │   ├── GamificationLedger.js
│   │   ├── GamificationLevel.js
│   │   ├── GamificationProfile.js
│   │   ├── GamificationQuest.js
│   │   ├── GamificationQuestProgress.js
│   │   ├── GamificationRule.js
│   │   ├── GamificationShopItem.js
│   │   ├── Placement.js
│   │   ├── PlacementPricing.js
│   │   ├── Survey.js
│   │   └── SurveyResponse.js
│   ├── package.json
│   ├── processors
│   │   ├── adStatsJobProcessor.js
│   │   └── gamificationJobProcessor.js
│   ├── routes
│   │   ├── adCampaignRoutes.js
│   │   ├── adRoutes.js
│   │   ├── advertiserProfileRoutes.js
│   │   ├── gamificationDashboardRoutes.js
│   │   ├── gamificationRoutes.js
│   │   ├── gamificationStoreRoutes.js
│   │   ├── placementPricingRoutes.js
│   │   ├── placementRoutes.js
│   │   ├── sseRoutes.js
│   │   ├── surveyDashboardRoutes.js
│   │   └── surveyRoutes.js
│   ├── services
│   │   ├── adCampaignService.js
│   │   ├── adStatsService.js
│   │   ├── adsService.js
│   │   ├── gamificationCapabilityService.js
│   │   ├── gamificationProcessorService.js
│   │   ├── gamificationService.js
│   │   ├── gamificationStoreService.js
│   │   ├── sseService.js
│   │   ├── surveyService.js
│   │   └── webSocketService.js
│   ├── templates
│   │   └── emails
│   └── utils
│       ├── accessControl.js
│       ├── gamificationNotificationUtils.js
│       └── recordGamificationActivity.js
├── quelora-jobs
│   ├── .gitignore
│   ├── index.js
│   ├── package.json
│   ├── queues.js
│   └── scheduler.js
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
│   │   └── ssoController.js
│   ├── package.json
│   ├── public
│   │   └── assets
│   └── routes
│       ├── authRoutes.js
│       ├── commentRoutes.js
│       ├── notificationsRoutes.js
│       ├── postRoutes.js
│       ├── profileRoutes.js
│       ├── routes.js
│       └── ssoRoutes.js
├── quelora-worker
│   ├── .env
│   ├── .gitignore
│   ├── data
│   │   └── geoip_cache
│   ├── index.js
│   ├── package.json
│   └── processors
│       ├── activityJobProcessor.js
│       ├── aggregationProcessor.js
│       ├── emailProcessor.js
│       ├── enterpriseJobRouter.js
│       ├── pushProcessor.js
│       ├── reputationJobProcessor.js
│       ├── suggestionJobProcessor.js
│       └── systemJobProcessor.js
└── struct.md
