.class public Lcom/android/server/notification/NotificationManagerService$9;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Lcom/android/internal/app/IAppOpsService;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/telephony/TelephonyManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$-vxawwcdKxNnOxoLMphtg6YkfSU(Lcom/android/server/notification/NotificationManagerService$9;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onAutomaticRuleStatusChanged$3(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iebv08fJT0iIcj__UUDk6jYXS_Y(Lcom/android/server/notification/NotificationManagerService$9;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onConsolidatedPolicyChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$mHS_J2_-Oh0CAfHImtM8tBqg_HA(Lcom/android/server/notification/NotificationManagerService$9;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onPolicyChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$z03KVNtSZ2zoJTOSMl0jiLP0fgM(Lcom/android/server/notification/NotificationManagerService$9;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onZenModeChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 2585
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAutomaticRuleStatusChanged$3(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

    .line 2649
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

    .line 2650
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2651
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$onConsolidatedPolicyChanged$2()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2640
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method private synthetic lambda$onPolicyChanged$1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2628
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2632
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mnotifyZenPolicy(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method

.method private synthetic lambda$onZenModeChanged$0()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2594
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2595
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 2597
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    .line 2595
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2599
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2600
    :try_start_26
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2601
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_7c

    .line 2604
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledLifeStyle()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 2605
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_42

    const-string v0, "NotificationService"

    const-string v2, "LifeStyle rule is added when DND is on."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :cond_42
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_55

    .line 2607
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/PreferencesHelper;->setChannelsBypassingDndForLifeStyle(Z)V

    goto :goto_6f

    .line 2609
    :cond_55
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/PreferencesHelper;->setChannelsBypassingDndForLifeStyle(Z)V

    goto :goto_6f

    .line 2612
    :cond_5d
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_68

    const-string v0, "NotificationService"

    const-string v2, "There is not a LifeStyle rule."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_68
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/PreferencesHelper;->setChannelsBypassingDndForLifeStyle(Z)V

    .line 2617
    :goto_6f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2620
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mnotifyZenPolicy(Lcom/android/server/notification/NotificationManagerService;)V

    return-void

    :catchall_7c
    move-exception p0

    .line 2601
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0
.end method


# virtual methods
.method public onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 2646
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$9;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onConfigChanged()V
    .registers 1

    .line 2588
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public onConsolidatedPolicyChanged()V
    .registers 2

    .line 2639
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$9;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onPolicyChanged()V
    .registers 2

    .line 2627
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$9;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onZenModeChanged()V
    .registers 2

    .line 2593
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$9;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
