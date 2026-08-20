.class public Lcom/android/server/notification/NotificationManagerService$12;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$GYuj1nqpaZQ7FJyvy4vSrUkGKMM(Lcom/android/server/notification/NotificationManagerService$12;ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$dispatchDelayedWakelockAndBlocked$0(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQPBHuTyS0UETjhhPCwmV72fOlc(Lcom/android/server/notification/NotificationManagerService$12;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$getActiveNotificationsWithAttribution$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKhHqIBRbnTtskvXnHJ7C8O6TUQ(Lcom/android/server/notification/NotificationManagerService$12;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$dispatchDelayedWakeUpAndBlocked$1(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 3798
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$dispatchDelayedWakeUpAndBlocked$1(ILjava/lang/String;)V
    .registers 7

    .line 3912
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDGELIGHTING:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dispatchDelayedWakelockAndBlocked$0(ILjava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 3869
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EDGELIGHTING:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3870
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 3871
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1, p3, p4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3872
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3873
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private synthetic lambda$getActiveNotificationsWithAttribution$2(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5029
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    array-length v0, p0

    :goto_10
    if-ge v1, v0, :cond_1e

    aget v2, p0, v1

    .line 5030
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "automaticZenRule is null"

    .line 5690
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5691
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5692
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    .line 5693
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 5694
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5697
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5698
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5699
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 5700
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    goto :goto_47

    .line 5701
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ZenPolicy is only applicable to INTERRUPTION_FILTER_PRIORITY filters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5704
    :cond_47
    :goto_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "addAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 5709
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingAppIdSystem()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 5710
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 5711
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 5715
    :cond_66
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final addEventLogTags(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_49

    .line 4052
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_49

    const/4 p0, 0x0

    .line 4053
    invoke-virtual {p3, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-char v0, v0

    .line 4055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4056
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3a

    .line 4057
    invoke-virtual {p3, p0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/server/EventLogTags;->writeNotificationEnqueueToast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 4059
    :cond_3a
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p0, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/server/EventLogTags;->writeNotificationEnqueueToast(ILjava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public addWearableAppToList(ILjava/lang/String;)Z
    .registers 7

    .line 6793
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "NotificationService"

    .line 6794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NMS : addWearableAppToList pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / userid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / uid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6795
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->setWearableAppMuted(ILjava/lang/String;I)V
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3c} :catch_3d

    return p1

    :catch_3d
    const/4 p0, 0x0

    return p0
.end method

.method public allowAssistantAdjustment(Ljava/lang/String;)V
    .registers 3

    .line 4986
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4987
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    .line 4989
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 4

    .line 6342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6343
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6344
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    return-void
.end method

.method public applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .line 6352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6354
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_86

    .line 6355
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6356
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Adjustment;

    .line 6357
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    const/4 v7, 0x1

    if-eqz v6, :cond_18

    .line 6358
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/notification/ManagedServices;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 6359
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mapplyAdjustment(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    .line 6363
    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "key_importance"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 6364
    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v8, "key_importance"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_70

    new-array v5, v7, [Ljava/lang/String;

    .line 6366
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, p1, v5}, Lcom/android/server/notification/NotificationManagerService$12;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    goto :goto_18

    .line 6368
    :cond_70
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    move v4, v7

    goto :goto_18

    .line 6373
    :cond_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_9 .. :try_end_76} :catchall_83

    if-eqz v4, :cond_7f

    .line 6375
    :try_start_78
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_86

    .line 6378
    :cond_7f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_83
    move-exception p0

    .line 6373
    :try_start_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p0

    .line 6378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6379
    throw p0
.end method

.method public applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 12

    .line 6311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6313
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_78

    .line 6314
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6315
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v4, v3, :cond_6b

    .line 6317
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 6318
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 6319
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    .line 6320
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/ManagedServices;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 6321
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5, v6, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mapplyAdjustment(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    .line 6322
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    .line 6326
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    const/4 v5, 0x1

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_6b
    if-nez v5, :cond_70

    .line 6331
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 6333
    :cond_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_75

    .line 6335
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_75
    move-exception p0

    .line 6333
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p0

    .line 6335
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6336
    throw p0
.end method

.method public applyRestore([BI)V
    .registers 7

    .line 6005
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemUI(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6006
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6007
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 6010
    :cond_22
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6015
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " payload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_49

    .line 6016
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6015
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-nez p1, :cond_6b

    .line 6018
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyRestore: no payload to restore for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6021
    :cond_6b
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6023
    :try_start_70
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V

    .line 6024
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_7b} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_7b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7b} :catch_7c

    goto :goto_82

    :catch_7c
    move-exception p0

    const-string p1, "applyRestore: error reading payload"

    .line 6026
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_82
    return-void
.end method

.method public areBubblesAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 4317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public areBubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 5

    .line 4326
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 4327
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areBubblesEnabled for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4329
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 4327
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    :cond_2a
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public areChannelsBypassingDnd()Z
    .registers 1

    .line 4901
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->areChannelsBypassingDnd()Z

    move-result p0

    return p0
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 4282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6

    const-string v0, "Caller not system or systemui or same package"

    .line 4290
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4292
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_34

    .line 4294
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_34

    .line 4295
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canNotifyAsPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6560
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public canAppBypassDnd(Ljava/lang/String;I)Z
    .registers 4

    .line 6896
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6897
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canAppBypassDnd(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 4493
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4495
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 4496
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v1, p3, :cond_2f

    .line 4497
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canNotifyAsPackage for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4501
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 p0, 0x1

    return p0

    .line 4505
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0xc0000

    .line 4506
    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_51

    .line 4510
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_50} :catch_51

    return p0

    :catch_51
    :cond_51
    const/4 p0, 0x0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4

    .line 4417
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4418
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .registers 16

    .line 4216
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4218
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 4219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "cancelAllNotifications"

    move v4, p2

    move-object v8, p1

    .line 4218
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 4222
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v0, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v5, p1

    move v9, v0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationByEdge(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6632
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6637
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    .line 5485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 5487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5489
    :try_start_e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_67

    .line 5490
    :try_start_13
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    const/16 v5, 0xa

    .line 5492
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v1, 0x16

    move v9, v1

    goto :goto_30

    :cond_2f
    move v9, v5

    .line 5495
    :goto_30
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v0, "NotificationService"

    .line 5496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " use cancelNotification(key) instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 5500
    :cond_54
    iget v8, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move-object v1, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService$12;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;III)V

    .line 5503
    :goto_5f
    monitor-exit v12
    :try_end_60
    .catchall {:try_start_13 .. :try_end_60} :catchall_64

    .line 5505
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_64
    move-exception v0

    .line 5503
    :try_start_65
    monitor-exit v12
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    .line 5505
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5506
    throw v0
.end method

.method public final cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;III)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    move-object v0, p0

    .line 5346
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14

    .line 4210
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    return-void
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    .line 5223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 5224
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 5225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 5227
    :try_start_12
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_ba

    .line 5228
    :try_start_17
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    const/16 v2, 0xa

    .line 5233
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/16 v2, 0x16

    :cond_31
    move/from16 v16, v2

    if-eqz v10, :cond_a1

    .line 5238
    array-length v8, v10

    const/4 v1, 0x0

    move v7, v1

    :goto_38
    if-ge v7, v8, :cond_b2

    .line 5240
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v2, v10, v7

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-nez v1, :cond_4e

    :goto_48
    move/from16 v17, v7

    move/from16 v18, v8

    move-object v10, v9

    goto :goto_99

    .line 5242
    :cond_4e
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    .line 5243
    iget v2, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v6, v2, :cond_6a

    const/4 v2, -0x1

    if-eq v6, v2, :cond_6a

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    .line 5244
    invoke-virtual {v2, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_48

    .line 5248
    :cond_6a
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v17

    .line 5249
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v18

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v11

    move v4, v12

    move/from16 v19, v6

    move-object/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    move-object v10, v9

    move/from16 v9, v16

    .line 5247
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService$12;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;III)V

    :goto_99
    add-int/lit8 v7, v17, 0x1

    move-object v9, v10

    move/from16 v8, v18

    move-object/from16 v10, p2

    goto :goto_38

    :cond_a1
    move-object v10, v9

    .line 5252
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v3, v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/16 v4, 0xb

    .line 5253
    invoke-virtual {v10}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v6

    move v1, v11

    move v2, v12

    move-object v5, v10

    .line 5252
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 5255
    :cond_b2
    monitor-exit v15
    :try_end_b3
    .catchall {:try_start_17 .. :try_end_b3} :catchall_b7

    .line 5257
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b7
    move-exception v0

    .line 5255
    :try_start_b8
    monitor-exit v15
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    :try_start_b9
    throw v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    .line 5257
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5258
    throw v0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    const-string v0, "NotificationService"

    .line 4116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelToast pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_65

    if-nez p2, :cond_23

    goto :goto_65

    .line 4123
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4124
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_62

    .line 4126
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_3a

    .line 4128
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_58

    :cond_3a
    const-string p0, "NotificationService"

    .line 4130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toast already cancelled. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_5d

    .line 4134
    :goto_58
    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4136
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    .line 4134
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4135
    throw p0

    :catchall_62
    move-exception p0

    .line 4136
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_62

    throw p0

    :cond_65
    :goto_65
    const-string p0, "NotificationService"

    .line 4119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not cancelling notification. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkCanEnqueueToast(Ljava/lang/String;IZZ)Z
    .registers 13

    .line 4067
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->isPackagePaused(Ljava/lang/String;)Z

    move-result v0

    .line 4068
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4074
    :try_start_e
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v5
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_cc

    const/16 v6, 0x64

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1f

    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v7

    .line 4077
    :goto_20
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v3, "NotificationService"

    if-nez p4, :cond_4c

    if-eqz v1, :cond_2b

    if-eqz v5, :cond_2d

    :cond_2b
    if-eqz v0, :cond_4c

    .line 4082
    :cond_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Suppressing toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3f

    const-string p1, " due to package suspended."

    goto :goto_41

    :cond_3f
    const-string p1, " by user request."

    .line 4084
    :goto_41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4082
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4089
    :cond_4c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4090
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object v1

    .line 4091
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 4092
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v4

    const-string/jumbo v5, "toast_quota_tag"

    .line 4093
    invoke-virtual {v4, v0, p1, v5}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_79

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4094
    invoke-static {v4, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misExemptFromRateLimiting(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_79

    :cond_77
    move v0, v7

    goto :goto_7a

    :cond_79
    :goto_79
    move v0, v2

    .line 4095
    :goto_7a
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result v4

    if-eqz v1, :cond_a5

    if-nez v0, :cond_a5

    if-nez v4, :cond_a5

    .line 4097
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreportCompatRateLimitingToastsChange(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 4098
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is above allowed toast quota at time the toast was posted, the following toast was blocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4104
    :cond_a5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4105
    invoke-static {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result v0

    .line 4104
    invoke-static {p0, p2, p4, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mblockToast(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z

    move-result p0

    if-eqz p0, :cond_cb

    .line 4106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Blocking custom toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to package not in the foreground at time the toast was posted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_cb
    return v2

    :catchall_cc
    move-exception p0

    .line 4077
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4078
    throw p0
.end method

.method public final checkPackagePolicyAccess(Ljava/lang/String;)Z
    .registers 3

    .line 5873
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    .line 5874
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 5873
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final checkPolicyAccess(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 5879
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5880
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 5879
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 5881
    invoke-static {v2, v1, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1b} :catch_59

    if-nez v1, :cond_1e

    return v4

    .line 5890
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 5891
    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    .line 5892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    .line 5893
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_59

    :cond_58
    move v0, v4

    :catch_59
    :cond_59
    return v0
.end method

.method public final checkUpdateNotificationChannelAccess(Ljava/lang/String;)Z
    .registers 3

    .line 6750
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.permission.SEM_UPDATE_NOTIFICATION_CHANNELS"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 6754
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SEM_UPDATE_NOTIFICATION_CHANNELS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cleanUpCallersAfter(J)V
    .registers 4

    const-string v0, "INotificationManager.cleanUpCallersAfter"

    .line 5970
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5971
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->cleanUpCallersAfter(J)V

    return-void
.end method

.method public clearData(Ljava/lang/String;IZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4907
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4909
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4910
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    .line 4911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x15

    const/4 v11, 0x0

    move-object v4, p1

    .line 4910
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 4914
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    .line 4915
    invoke-virtual {v1, p1, v0}, Lcom/android/server/notification/ConditionProviders;->resetPackage(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    or-int/2addr v1, v2

    .line 4918
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    .line 4919
    invoke-virtual {v3, p1, v0}, Lcom/android/server/notification/ManagedServices;->resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4920
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_5c

    .line 4921
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5a

    goto :goto_5c

    :cond_5a
    move v4, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v4, v5

    :goto_5d
    or-int/2addr v1, v4

    move v4, v2

    .line 4924
    :goto_5f
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_89

    .line 4925
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v7

    .line 4926
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4925
    invoke-virtual {v7, v6, v0, v2, v5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 4931
    :cond_89
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    .line 4932
    invoke-virtual {v3, p1, v0}, Lcom/android/server/notification/ManagedServices;->resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4933
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_b0

    .line 4934
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ae

    goto :goto_b0

    :cond_ae
    move v4, v2

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v4, v5

    :goto_b1
    or-int/2addr v1, v4

    move v4, v5

    .line 4937
    :goto_b3
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_dd

    .line 4938
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    .line 4939
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 4938
    invoke-virtual {v7, v6, v0, v5, v2}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b3

    .line 4944
    :cond_dd
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_102

    .line 4946
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    .line 4948
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4947
    invoke-virtual {v4, v3, v0, v2, v5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4954
    :cond_102
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/notification/SnoozeHelper;->clearData(ILjava/lang/String;)V

    if-nez p3, :cond_116

    .line 4958
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->clearData(Ljava/lang/String;I)V

    :cond_116
    if-eqz v1, :cond_137

    .line 4962
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4964
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p3, 0x4000000

    .line 4965
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 4966
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    const/4 v0, 0x0

    .line 4962
    invoke-virtual {p2, p1, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4969
    :cond_137
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .registers 6

    .line 5575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5577
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2a

    .line 5578
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5579
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 5580
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5581
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5582
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_27

    .line 5584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    .line 5582
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 5584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5585
    throw p0
.end method

.method public createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "only system can call this"

    .line 4616
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4617
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4618
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4619
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object p4, v1, v3

    const-string v4, "%1$s : %2$s"

    .line 4621
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setId(Ljava/lang/String;)V

    .line 4623
    invoke-virtual {p3, v0, p4}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 4624
    new-instance p4, Landroid/content/pm/ParceledListSlice;

    new-array v0, v3, [Landroid/app/NotificationChannel;

    aput-object p3, v0, v2

    .line 4625
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p4, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 4624
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 4626
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4627
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4530
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4531
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 4532
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_26

    .line 4534
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 4535
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4537
    :cond_26
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 7

    .line 4594
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4597
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 4598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4597
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 4599
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAtm(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    const/4 v0, -0x1

    .line 4603
    :goto_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;I)V

    return-void
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 5

    const-string/jumbo v0, "only system can call this"

    .line 4609
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4610
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public final createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 5

    const/4 v0, -0x1

    .line 4542
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;I)V

    return-void
.end method

.method public final createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p4

    .line 4548
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 4549
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 4550
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v12, 0x1

    .line 4551
    invoke-virtual {v1, v7, v8, v12}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_28

    .line 4552
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    move v14, v12

    goto :goto_29

    :cond_28
    move v14, v13

    :goto_29
    move v1, v13

    move v15, v1

    move/from16 v16, v15

    :goto_2d
    if-ge v15, v11, :cond_d2

    .line 4556
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/NotificationChannel;

    const-string v1, "channel in list is null"

    .line 4557
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4558
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    .line 4561
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4560
    invoke-virtual {v1, v7, v3}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v17

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v6

    move-object/from16 v18, v6

    move/from16 v6, v17

    .line 4558
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 4563
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    .line 4564
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4565
    invoke-virtual/range {v18 .. v18}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v8, v5, v13}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v4

    .line 4563
    invoke-virtual {v2, v7, v3, v4, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    if-nez v14, :cond_7c

    if-eqz v16, :cond_7a

    goto :goto_7c

    :cond_7a
    move v2, v13

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v2, v12

    :goto_7d
    if-nez v2, :cond_96

    .line 4570
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4571
    invoke-virtual {v2, v7, v8, v12}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 4572
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    move v2, v12

    goto :goto_96

    :cond_95
    move v2, v13

    :cond_96
    :goto_96
    if-nez v14, :cond_ce

    if-eqz v2, :cond_ce

    if-nez v16, :cond_ce

    const/4 v2, -0x1

    if-eq v9, v2, :cond_ce

    .line 4577
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    if-nez v2, :cond_b4

    .line 4578
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-class v3, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4579
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/policy/PermissionPolicyInternal;)V

    .line 4581
    :cond_b4
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    .line 4582
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v5

    invoke-direct {v3, v7, v4, v9, v5}, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;-><init>(Ljava/lang/String;IILcom/android/server/policy/PermissionPolicyInternal;)V

    .line 4581
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v16, v12

    :cond_ce
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2d

    :cond_d2
    if-eqz v1, :cond_d9

    .line 4588
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_d9
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 4680
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4682
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const-string/jumbo v1, "miscellaneous"

    .line 4683
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 4686
    invoke-virtual {p0, p1, v12, p2}, Lcom/android/server/notification/NotificationManagerService$12;->enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V

    .line 4687
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x14

    const/4 v11, 0x0

    move-object v4, p1

    move-object v5, p2

    move v9, v12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 4689
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 4693
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v1

    invoke-virtual {v1, p1, v12, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->removeChannelNotifications(Ljava/lang/String;ILjava/lang/String;)V

    .line 4694
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 4695
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 4696
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v4, 0x1

    .line 4697
    invoke-virtual {v3, p1, v0, p2, v4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 v0, 0x3

    .line 4695
    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 4699
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_67
    return-void

    .line 4684
    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot delete default channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    .line 4720
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 4723
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v3, 0x0

    .line 4724
    invoke-virtual {v2, v12, v13, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v14

    if-eqz v14, :cond_a0

    .line 4728
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 4729
    invoke-virtual {v14}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v2

    move v4, v3

    .line 4730
    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 4732
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 4731
    invoke-virtual {v0, v12, v15, v5}, Lcom/android/server/notification/NotificationManagerService$12;->enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 4734
    :cond_39
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4735
    invoke-virtual {v2, v12, v13, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v11

    move v10, v3

    .line 4736
    :goto_42
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x3

    if-ge v10, v1, :cond_8d

    .line 4737
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/NotificationChannel;

    .line 4738
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x14

    const/16 v18, 0x0

    move-object/from16 v4, p1

    move-object/from16 v19, v8

    move/from16 v8, v16

    move v9, v15

    move/from16 v16, v10

    move/from16 v10, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 4742
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 4743
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object/from16 v3, v19

    const/4 v4, 0x3

    .line 4742
    invoke-virtual {v1, v12, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    add-int/lit8 v10, v16, 0x1

    move-object/from16 v11, v17

    goto :goto_42

    :cond_8d
    move v4, v9

    .line 4747
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 4748
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 4747
    invoke-virtual {v1, v12, v2, v14, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 4750
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_a0
    return-void
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .registers 6

    .line 4379
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4380
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryManager;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    return-void
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_f

    .line 6615
    :cond_6
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    :goto_f
    return-void
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6622
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->disableEdgeLightingNotification(Ljava/lang/String;Z)V

    return-void
.end method

.method public disallowAssistantAdjustment(Ljava/lang/String;)V
    .registers 3

    .line 4994
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4995
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    .line 4997
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public dispatchDelayedWakeUpAndBlocked(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "NotificationService"

    const-string v1, "android"

    .line 3880
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 3881
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mclearDelayedWakelock(Lcom/android/server/notification/NotificationManagerService;)V

    return v2

    .line 3885
    :cond_11
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "edge_lighting"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_25

    return v2

    .line 3890
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/android/server/notification/NotificationManagerService$12;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v1
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_33} :catch_36

    if-nez v1, :cond_50

    return v2

    :catch_36
    move-exception v1

    .line 3894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3897
    :cond_50
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "     WAKEUP canceled by edgelighting notification - B : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3902
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3903
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDelayedWakeUpList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 3904
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "     WAKEUP acquired : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDelayedWakeUpList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ConcurrentList;->remove(Ljava/lang/Object;)Z

    return v2

    .line 3909
    :cond_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     WAKEUP isDelayed by notification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDelayedWakeUpList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/server/notification/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 3911
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p3

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$12;ILjava/lang/String;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p3, v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return v4
.end method

.method public dispatchDelayedWakelockAndBlocked(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 16

    .line 3802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchDelayedWakelockAndBlocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmIsFactoryBinary(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_173

    const-string v0, "com.sec.factory"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_173

    :cond_29
    const-string v0, "android"

    .line 3809
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3810
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mclearDelayedWakelock(Lcom/android/server/notification/NotificationManagerService;)V

    return v2

    :cond_37
    const/4 v0, 0x2

    .line 3817
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v3

    if-nez v3, :cond_50

    .line 3818
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmCoverManager(Lcom/android/server/notification/NotificationManagerService;Lcom/samsung/android/cover/CoverManager;)V

    .line 3820
    :cond_50
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_90

    .line 3821
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_90

    .line 3823
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 3824
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    .line 3825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCoverClosed =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " coverType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :cond_90
    move v3, v0

    move v0, v2

    :goto_92
    if-eqz v0, :cond_9e

    const/16 v0, 0x11

    if-eq v3, v0, :cond_e6

    const-string p0, "cover is closed and it is not a clear view cover, so don\'t delay wakelock"

    .line 3831
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3837
    :cond_9e
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "edge_lighting"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_b6

    const-string p0, "edge_lighting turned off"

    .line 3838
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3843
    :cond_b6
    :try_start_b6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e6

    const-string v0, "edgelighting is not allowed for this package"

    .line 3844
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_cb} :catch_cc

    return v2

    :catch_cc
    move-exception v0

    .line 3848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3853
    :cond_e6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3854
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "     WAKELOCK canceled by edgelighting notification - B : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3858
    :cond_103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3859
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDelayedWakelockList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/notification/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 3861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "     WAKELOCK isDelayed by notification : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDelayedWakelockList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ConcurrentList;->remove(Ljava/lang/Object;)Z

    return v2

    .line 3866
    :cond_13f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     WAKELOCK isDelayed by edgelighting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDelayedWakelockList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 3868
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move v9, p4

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$12;ILjava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v1, v2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return v4

    :cond_173
    :goto_173
    const-string p0, "fatory mode"

    .line 3805
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 5898
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5899
    :cond_f
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-result-object v0

    .line 5900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5902
    :try_start_17
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5903
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object v3

    .line 5904
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v4, :cond_27

    .line 5905
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    goto :goto_4a

    .line 5906
    :cond_27
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    if-eqz v4, :cond_31

    .line 5907
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpRemoteViewStats(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_4a

    .line 5908
    :cond_31
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    if-eqz v4, :cond_3b

    .line 5909
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p1, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpProto(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    goto :goto_4a

    .line 5910
    :cond_3b
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    if-eqz v4, :cond_45

    .line 5911
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpNotificationRecords(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_4a

    .line 5913
    :cond_45
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, p2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_63

    .line 5916
    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5919
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    if-nez v0, :cond_62

    .line 5920
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 5921
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_62
    return-void

    :catchall_63
    move-exception p0

    .line 5916
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5917
    throw p0
.end method

.method public final enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 4669
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 4670
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not delete notification channel \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' with fg service"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed to delete channel "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with a foreground service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePolicyAccess(ILjava/lang/String;)V
    .registers 10

    .line 5841
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5846
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 5847
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v2, v1, :cond_34

    .line 5849
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    aget-object v5, v0, v2

    .line 5850
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5849
    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v3, 0x1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_34
    if-eqz v3, :cond_37

    return-void

    .line 5855
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification policy access denied calling "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Notification policy access denied"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5861
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5865
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5866
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-void

    .line 5867
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification policy access denied calling "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5868
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Notification policy access denied"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemOrSystemUI(Ljava/lang/String;)V
    .registers 3

    .line 5825
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5826
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 5832
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5834
    :catch_6
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public enqueueEdgeNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 15

    .line 6643
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6644
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueEdgeNotificationInternal(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Bundle;I)V

    return-void
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4192
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_PUSH_SERVICE:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsPushService(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4194
    :try_start_c
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, p6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 4195
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4196
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p1

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    .line 4195
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string p1, "NotificationService"

    const-string p2, "Cannot get a uid for target package"

    .line 4198
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void

    .line 4203
    :cond_33
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4204
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    .line 4203
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    return-void
.end method

.method public enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;)V
    .registers 15

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 3924
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;)V

    return-void
.end method

.method public enqueueTextToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V
    .registers 19

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 3932
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V
    .registers 14

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 3940
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;)V

    return-void
.end method

.method public final enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;)V
    .registers 18

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 3957
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IILjava/lang/String;I)V
    .registers 18

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 3948
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public final enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v11, p6

    move-object/from16 v15, p8

    move/from16 v13, p9

    .line 3966
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_42

    const-string v1, "NotificationService"

    .line 3967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueToast pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    if-eqz v14, :cond_162

    if-nez v7, :cond_48

    if-eqz p4, :cond_162

    :cond_48
    if-eqz v7, :cond_4c

    if-nez p4, :cond_162

    :cond_4c
    if-nez v6, :cond_50

    goto/16 :goto_162

    .line 3978
    :cond_50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3979
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3980
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v1

    const/16 v16, 0x1

    if-nez v1, :cond_6e

    const-string v1, "android"

    .line 3981
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 v5, 0x0

    goto :goto_70

    :cond_6e
    :goto_6e
    move/from16 v5, v16

    :goto_70
    if-eqz p4, :cond_75

    move/from16 v1, v16

    goto :goto_76

    :cond_75
    const/4 v1, 0x0

    .line 3983
    :goto_76
    invoke-virtual {v0, v14, v2, v1, v5}, Lcom/android/server/notification/NotificationManagerService$12;->checkCanEnqueueToast(Ljava/lang/String;IZZ)Z

    move-result v1

    if-nez v1, :cond_7d

    return-void

    :cond_7d
    if-eqz v15, :cond_88

    .line 3989
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v14, v15, v13, v1}, Lcom/android/server/notification/sec/DisplayToast;->out(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 3993
    :cond_88
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v10

    .line 3994
    :try_start_8d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3995
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_15b

    .line 3998
    :try_start_95
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v14, v6}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_b1

    .line 4002
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    .line 4004
    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/notification/NotificationManagerService$12;->addEventLogTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4006
    invoke-virtual {v2, v9}, Lcom/android/server/notification/toast/ToastRecord;->update(I)V

    move-object/from16 v20, v10

    goto/16 :goto_144

    .line 4011
    :cond_b1
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_bb
    if-ge v3, v1, :cond_fa

    .line 4013
    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v12, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/toast/ToastRecord;

    .line 4014
    iget-object v12, v12, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f7

    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x5

    if-lt v4, v12, :cond_f7

    const-string v0, "NotificationService"

    .line 4017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package has already queued "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toasts. Not showing more. Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_95 .. :try_end_f2} :catchall_154

    .line 4045
    :try_start_f2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_15b

    return-void

    :cond_f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    .line 4024
    :cond_fa
    :try_start_fa
    new-instance v12, Landroid/os/Binder;

    invoke-direct {v12}, Landroid/os/Binder;-><init>()V

    .line 4025
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    const/16 v3, 0x7d5

    const/4 v4, 0x0

    invoke-virtual {v1, v12, v3, v11, v4}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 4027
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;
    :try_end_10d
    .catchall {:try_start_fa .. :try_end_10d} :catchall_154

    move v3, v8

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v19, v8

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v20, v10

    move-object v10, v12

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    :try_start_123
    invoke-static/range {v1 .. v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetToastRecord(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object v1

    move/from16 v2, p9

    .line 4031
    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/notification/NotificationManagerService$12;->addEventLogTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4033
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4034
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4035
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move/from16 v3, v19

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mkeepProcessAliveForToastIfNeededLocked(Lcom/android/server/notification/NotificationManagerService;I)V

    :goto_144
    if-nez v1, :cond_14f

    .line 4042
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V
    :try_end_14c
    .catchall {:try_start_123 .. :try_end_14c} :catchall_14d

    goto :goto_14f

    :catchall_14d
    move-exception v0

    goto :goto_157

    .line 4045
    :cond_14f
    :goto_14f
    :try_start_14f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4047
    monitor-exit v20

    return-void

    :catchall_154
    move-exception v0

    move-object/from16 v20, v10

    .line 4045
    :goto_157
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4046
    throw v0

    :catchall_15b
    move-exception v0

    move-object/from16 v20, v10

    .line 4047
    :goto_15e
    monitor-exit v20
    :try_end_15f
    .catchall {:try_start_14f .. :try_end_15f} :catchall_160

    throw v0

    :catchall_160
    move-exception v0

    goto :goto_15e

    :cond_162
    :goto_162
    const-string v0, "NotificationService"

    .line 3973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enqueuing toast. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callback= token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    .line 4172
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4173
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_4d

    .line 4175
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_25

    .line 4177
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    .line 4178
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    goto :goto_43

    :cond_25
    const-string p0, "NotificationService"

    .line 4180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toast already killed. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_48

    .line 4184
    :goto_43
    :try_start_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4186
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    .line 4184
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4185
    throw p0

    :catchall_4d
    move-exception p0

    .line 4186
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 5006
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 5522
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5523
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-eqz v2, :cond_19

    .line 5525
    array-length v3, p2

    goto :goto_21

    :cond_19
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5526
    :goto_21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_26
    if-ge v1, v3, :cond_62

    if-eqz v2, :cond_37

    .line 5530
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    goto :goto_41

    .line 5531
    :cond_37
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    :goto_41
    if-nez v5, :cond_44

    goto :goto_5f

    .line 5533
    :cond_44
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 5534
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v5

    invoke-virtual {v7, v6, v5, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_5f

    :cond_55
    if-nez p3, :cond_58

    goto :goto_5c

    .line 5536
    :cond_58
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 5537
    :goto_5c
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 5539
    :cond_62
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p0

    :catchall_69
    move-exception p0

    .line 5540
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 11

    .line 5019
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5024
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5026
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 5027
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5028
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v7}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/util/ArrayList;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 5035
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_73

    .line 5038
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5039
    :try_start_41
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_4a
    if-ge v1, p2, :cond_6e

    .line 5041
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 5042
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 5043
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 5046
    :cond_6e
    monitor-exit p1

    goto :goto_73

    :catchall_70
    move-exception p0

    monitor-exit p1
    :try_end_72
    .catchall {:try_start_41 .. :try_end_72} :catchall_70

    throw p0

    .line 5048
    :cond_73
    :goto_73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4974
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4976
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    .line 4977
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_26

    .line 4978
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not currently an assistant"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4981
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedAssistantAdjustments()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 2

    .line 6184
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .registers 4

    .line 6173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6174
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    .line 6175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1d

    .line 6179
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    .line 6176
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At most one NotificationAssistant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6177
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 5066
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5067
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5068
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "getAppActiveNotifications"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p2

    move-object v7, p1

    .line 5067
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 5070
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5071
    :try_start_1c
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 5072
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 5073
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3c
    if-ge v4, v2, :cond_5c

    .line 5075
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 5076
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 5075
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/notification/NotificationManagerService$12;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 5078
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 5081
    :cond_5c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5082
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/notification/NotificationManagerService$12;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 5084
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 5087
    :cond_86
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_8e
    if-ge v3, v2, :cond_ae

    .line 5089
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 5090
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 5089
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/notification/NotificationManagerService$12;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    if-eqz v4, :cond_ab

    .line 5092
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 5095
    :cond_ae
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5096
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5097
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p1

    :catchall_c5
    move-exception p0

    .line 5098
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_1c .. :try_end_c7} :catchall_c5

    throw p0
.end method

.method public getAppsBypassingDndCount(I)I
    .registers 3

    .line 6910
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6911
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->getAppsBypassingDndCount(I)I

    move-result p0

    return p0
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Id is null"

    .line 5683
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 5685
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(I)[B
    .registers 5

    .line 5984
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemUI(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5985
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5987
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5991
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5992
    :cond_2a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5994
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwritePolicyXml(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V

    .line 5995
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    .line 5997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload: error writing payload for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlockedAppCount(I)I
    .registers 3

    .line 6918
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6919
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->getBlockedAppCount(I)I

    move-result p0

    return p0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "getBlockedChannelCount"

    .line 4805
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4806
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBubblePreferenceForPackage(Ljava/lang/String;I)I
    .registers 6

    const-string v0, "Caller not system or systemui or same package"

    .line 4336
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 4340
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBubblePreferenceForPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4345
    :cond_2b
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBubblePreference(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 3

    .line 6084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6086
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 6088
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6089
    throw p0
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;
    .registers 14

    .line 4641
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationManagerService$12;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4642
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallerIsSystemOrSysemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 4653
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Pkg "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot read channels for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    const/4 p1, -0x1

    .line 4645
    :try_start_37
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_41

    :catch_41
    move v2, p1

    .line 4649
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p6

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "getConversations"

    .line 4812
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4813
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v0

    .line 4814
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4815
    invoke-virtual {v1, v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 4816
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ConversationChannelWrapper;

    .line 4817
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v2

    if-nez v2, :cond_34

    const/4 v2, 0x0

    .line 4818
    invoke-virtual {v1, v2}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1b

    .line 4820
    :cond_34
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v2

    .line 4821
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    .line 4822
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v4

    .line 4823
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 4820
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1b

    .line 4826
    :cond_5a
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "getConversationsForPackage"

    .line 4840
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4841
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4842
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4843
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    .line 4844
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    if-nez v3, :cond_2a

    const/4 v3, 0x0

    .line 4845
    invoke-virtual {v2, v3}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_11

    .line 4847
    :cond_2a
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    .line 4848
    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    .line 4850
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 4847
    invoke-virtual {v3, v4, p1, v5}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_11

    .line 4853
    :cond_48
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getDefaultNotificationAssistant()Landroid/content/ComponentName;
    .registers 2

    .line 6189
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6190
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getDefaultFromConfig()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "getDeletedChannelCount"

    .line 4799
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4800
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEdgeLightingState()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6602
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->getEdgeLightingState()I

    move-result p0

    return p0
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 2

    .line 5928
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method public getEnabledNotificationListenerPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6161
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6162
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 6167
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess()V

    .line 6168
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 2

    .line 5613
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5614
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I

    move-result p0

    monitor-exit p1

    return p0

    :catchall_d
    move-exception p0

    .line 5615
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NOTIFICATIONS"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 5133
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 14
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NOTIFICATIONS"
    .end annotation

    .line 5145
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5153
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3e

    .line 5156
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object p1

    monitor-enter p1

    .line 5157
    :try_start_29
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p2, p0, p3, p4}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(Landroid/os/UserManager;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 5158
    monitor-exit p1

    goto :goto_3f

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return-object p0
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5636
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5637
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInterruptionFilter(Lcom/android/server/notification/NotificationManagerService;)I

    move-result p0

    monitor-exit p1

    return p0

    :catchall_d
    move-exception p0

    .line 5638
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .registers 4

    .line 4385
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4386
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I
    .registers 4

    .line 6864
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6865
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 4

    const-string v0, "getNotificationAlertsEnabledForPackage"

    .line 6763
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6764
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4633
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$12;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 13

    .line 4660
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4661
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 4705
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4706
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4707
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4706
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5

    const-string v0, "getNotificationChannelGroupForPackage"

    .line 4867
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4868
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 4713
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4714
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    .line 4714
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "getNotificationChannelGroupsForPackage"

    .line 4832
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4833
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6419
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6420
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6421
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 6423
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6424
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 6425
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    .line 6424
    invoke-virtual {v0, p2, p0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6426
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 4874
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4875
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 4885
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot read channels for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    const/4 p1, -0x1

    .line 4878
    :try_start_37
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_41

    .line 4882
    :catch_41
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 4892
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4893
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4894
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 4896
    :cond_10
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    const-string v0, "getNotificationChannelsForPackage"

    .line 4779
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4780
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6407
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6408
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6409
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 6411
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 6412
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    const/4 p3, 0x0

    .line 6411
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 4487
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4488
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .registers 12
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NOTIFICATIONS"
    .end annotation

    .line 5173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getNotificationHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5179
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4c

    .line 5182
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object p1

    const-wide/32 v0, 0x80000

    const-string/jumbo p2, "notifHistoryReadHistory"

    .line 5183
    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5185
    :try_start_35
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->readNotificationHistory([I)Landroid/app/NotificationHistory;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_47

    .line 5187
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5188
    throw p0

    .line 5190
    :cond_4c
    new-instance p0, Landroid/app/NotificationHistory;

    invoke-direct {p0}, Landroid/app/NotificationHistory;-><init>()V

    return-object p0
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .registers 4

    .line 6074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6076
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 6078
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6079
    throw p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5

    const-string v0, "getNumNotificationChannelsForPackage"

    .line 4786
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4787
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4788
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .registers 4

    .line 4400
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NMS : getPackageImportance pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x3

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 6

    const-string/jumbo v0, "getPopulatedNotificationChannelGroupForPackage"

    .line 4859
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4860
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateNotificationsAllowed()Z
    .registers 3

    .line 6451
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6452
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 6457
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result p0

    return p0

    .line 6454
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Owner is null"

    .line 5756
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "getRuleInstanceCount"

    .line 5757
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5759
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 5555
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5556
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5557
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v1

    .line 5558
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 5559
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_4a

    .line 5561
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    if-nez v5, :cond_2c

    goto :goto_47

    .line 5563
    :cond_2c
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 5564
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v5

    invoke-virtual {v7, v6, v5, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_47

    :cond_3d
    if-nez p2, :cond_40

    goto :goto_44

    .line 5566
    :cond_40
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 5567
    :goto_44
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 5569
    :cond_4a
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p0

    :catchall_51
    move-exception p0

    .line 5570
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6496
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {p0, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 6498
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6499
    throw p0
.end method

.method public getWearableAppList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NMS : getWearableAppList uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->getWearableMutedAppList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getZenMode()I
    .registers 1

    .line 5653
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result p0

    return p0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    const-string v0, "INotificationManager.getZenModeConfig"

    .line 5658
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5659
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public getZenRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRules"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 5678
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenRules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasEnabledNotificationListener(Ljava/lang/String;I)Z
    .registers 4

    .line 6207
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6208
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasSentValidBubble(Ljava/lang/String;I)Z
    .registers 4

    .line 4455
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4456
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 4

    .line 4430
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4431
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 4

    .line 4442
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4443
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isAlertsAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 6697
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getZenMode()I

    move-result p3

    const/4 p4, 0x0

    const-string v0, "NotificationService"

    if-eqz p3, :cond_1e

    .line 6698
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Screen on NOT allowed while DnD turned ON : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 6702
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_39

    .line 6703
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Screen on NOT allowed for notification blocked apps : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 6708
    :cond_39
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misPackageSuspendedForUser(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_56

    .line 6709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Screen on NOT allowed for package suspended : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_56
    const/4 p0, 0x1

    return p0
.end method

.method public isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 6880
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6881
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isEdgeLightingAllowed(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "isEdgeLightingAllowed"

    .line 6661
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6662
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6607
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .registers 4

    .line 4411
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4412
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isInCall(Ljava/lang/String;I)Z
    .registers 4

    .line 6431
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6432
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 4

    .line 4436
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4437
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 4

    .line 6230
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6231
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6232
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 6233
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6232
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 4

    .line 6213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6214
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6215
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 6216
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6215
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .registers 4

    .line 6222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6223
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6224
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isNotificationListenerAccessUserSet(Landroid/content/ComponentName;)Z
    .registers 3

    .line 6287
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 6288
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6287
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentUserSet(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .registers 2

    .line 6032
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "request policy access status for another package"

    .line 6037
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6039
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageEnabled(Ljava/lang/String;I)Z
    .registers 3

    .line 6627
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isPackagePaused(Ljava/lang/String;)Z
    .registers 3

    .line 6462
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6463
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6465
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isPermissionFixed(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "isPermissionFixed"

    .line 6470
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6471
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isReminderEnabled(Ljava/lang/String;I)Z
    .registers 4

    .line 6833
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6834
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isReminderEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSubDisplayNotificationAllowed(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "isSubDisplayNotificationAllowed"

    .line 6682
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6683
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isSubDisplayNotificationAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "INotificationManager.isSystemConditionProviderEnabled"

    .line 5976
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5977
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 11

    const-string/jumbo v0, "matchesCallFilter requires listener permission, contacts read access, or system level access"

    const-string v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    :try_start_6
    const-string v3, "INotificationManager.matchesCallFilter"

    .line 5938
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_d

    const/4 v3, 0x1

    goto :goto_e

    :catch_d
    move v3, v2

    .line 5945
    :goto_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_51
    .catchall {:try_start_e .. :try_end_1c} :catchall_42

    move v5, v2

    .line 5946
    :goto_1d
    :try_start_1d
    array-length v6, v4

    if-ge v2, v6, :cond_38

    .line 5948
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v6

    aget-object v7, v4, v2

    .line 5949
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 5948
    invoke-virtual {v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasAllowedListener(Ljava/lang/String;I)Z

    move-result v6
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_34} :catch_40
    .catchall {:try_start_1d .. :try_end_34} :catchall_3d

    or-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_38
    if-nez v3, :cond_5e

    if-nez v5, :cond_5e

    goto :goto_55

    :catchall_3d
    move-exception p1

    move v2, v5

    goto :goto_43

    :catch_40
    move v2, v5

    goto :goto_51

    :catchall_42
    move-exception p1

    :goto_43
    if-nez v3, :cond_50

    if-nez v2, :cond_50

    .line 5954
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5958
    :cond_50
    throw p1

    :catch_51
    :goto_51
    if-nez v3, :cond_5e

    if-nez v2, :cond_5e

    .line 5954
    :goto_55
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5960
    :cond_5e
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 5961
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class v0, Lcom/android/server/notification/ValidateNotificationPeople;

    .line 5963
    invoke-virtual {p0, v0}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/server/notification/ValidateNotificationPeople;

    const/16 v5, 0xbb8

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p1

    .line 5960
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result p0

    return p0
.end method

.method public migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5442
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_8b

    .line 5443
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5445
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 5447
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v4

    if-nez v4, :cond_30

    .line 5449
    new-instance v4, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v4}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    .line 5451
    :cond_30
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getDisallowedPackages()Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_71

    if-eqz p3, :cond_71

    .line 5452
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_40
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5454
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v6

    iget v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v6

    array-length v7, v6

    :goto_5a
    if-ge v8, v7, :cond_40

    aget v9, v6, v8
    :try_end_5e
    .catchall {:try_start_9 .. :try_end_5e} :catchall_88

    .line 5456
    :try_start_5e
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9

    .line 5457
    new-instance v10, Landroid/content/pm/VersionedPackage;

    invoke-direct {v10, v5, v9}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 5458
    invoke-virtual {v4, v10}, Landroid/service/notification/NotificationListenerFilter;->addPackage(Landroid/content/pm/VersionedPackage;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6e} :catch_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_88

    :catch_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    .line 5465
    :cond_71
    :try_start_71
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->areAllTypesAllowed()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 5466
    invoke-virtual {v4, p2}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    .line 5468
    :cond_7a
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V

    .line 5469
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_71 .. :try_end_84} :catchall_88

    .line 5471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_88
    move-exception p0

    .line 5469
    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p0

    .line 5471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5472
    throw p0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .registers 6

    .line 5789
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p2

    .line 5790
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5791
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$12$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12$1;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6507
    new-instance v0, Lcom/android/server/notification/NotificationShellCmd;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 6508
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "onlyHasDefaultChannel"

    .line 4793
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4794
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public pullStats(JIZLjava/util/List;)J
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 6524
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6525
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 6527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-string v7, "NotificationService"

    if-eq p3, v4, :cond_19

    goto :goto_82

    .line 6531
    :cond_19
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pullStats REPORT_REMOTE_VIEWS from: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "  wtih "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6533
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 6535
    invoke-virtual {p0, p3}, Lcom/android/server/notification/PulledStats;->toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exiting pullStats with: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6538
    invoke-virtual {p0}, Lcom/android/server/notification/PulledStats;->endTimeMs()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_69} :catch_8d
    .catchall {:try_start_19 .. :try_end_69} :catchall_8b

    .line 6548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    .line 6541
    :cond_6d
    :try_start_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "null stats for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_82} :catch_8d
    .catchall {:try_start_6d .. :try_end_82} :catchall_8b

    .line 6548
    :goto_82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p0, "exiting pullStats: bad request"

    .line 6550
    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5

    :catchall_8b
    move-exception p0

    goto :goto_97

    :catch_8d
    move-exception p0

    :try_start_8e
    const-string p1, "exiting pullStats: on error"

    .line 6545
    invoke-static {v7, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_8b

    .line 6548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v5

    :goto_97
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6549
    throw p0
.end method

.method public registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6575
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 5

    const-string v0, "INotificationManager.registerListener"

    .line 5202
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5203
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ManagedServices;->registerSystemService(Landroid/os/IInterface;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public registerNotificationListener(Landroid/content/ComponentName;IZ)V
    .registers 6

    .line 6720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerNotificationListener component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enabled ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6721
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v1, "registerNotificationListener"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckNotificationListenerAccess(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    if-eqz p3, :cond_36

    .line 6724
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerSystemService(Landroid/content/ComponentName;I)V

    goto :goto_3f

    .line 6726
    :cond_36
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    :goto_3f
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Id is null"

    .line 5738
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5740
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "removeAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 5742
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Package name is null"

    .line 5747
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "removeAutomaticZenRules"

    .line 5748
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5750
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|removeAutomaticZenRules"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 13

    .line 6651
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6652
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 6653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "cancelNotificationWithTag"

    move v3, p4

    move-object v7, p1

    .line 6652
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 6655
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->removeEdgeNotificationInternal(IILjava/lang/String;ILandroid/os/Bundle;I)V

    return-void
.end method

.method public removeWearableAppFromList(ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 6805
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "NotificationService"

    .line 6806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NMS : removeWearableAppFromList pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / userid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / uid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6807
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/notification/PreferencesHelper;->setWearableAppMuted(ILjava/lang/String;I)V
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3c} :catch_3e

    const/4 p0, 0x1

    return p0

    :catch_3e
    return v0
.end method

.method public requestBindListener(Landroid/content/ComponentName;)V
    .registers 6

    .line 5268
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5273
    :try_start_11
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5274
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    goto :goto_2a

    .line 5275
    :cond_24
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    .line 5276
    :goto_2a
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_36

    .line 5278
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5279
    throw p0
.end method

.method public requestBindProvider(Landroid/content/ComponentName;)V
    .registers 6

    .line 5814
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5818
    :try_start_11
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_23

    .line 5820
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5821
    throw p0
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 7

    .line 5590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5592
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_39

    .line 5593
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    and-int/lit8 v3, p2, 0x7

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_22

    .line 5599
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$maddDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    goto :goto_27

    .line 5601
    :cond_22
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 5603
    :goto_27
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5604
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5605
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_36

    .line 5607
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    .line 5605
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 5607
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5608
    throw p0
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5623
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_29

    .line 5624
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5625
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    .line 5626
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5627
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_26

    .line 5629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    .line 5627
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 5629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5630
    throw p0
.end method

.method public requestListenerHintsForWearable(I)Z
    .registers 6

    .line 6822
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    const-string v1, "NotificationService"

    .line 6823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NMS : requestListenerHintsForWearable state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmIsMutedByWearableApps(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 6825
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .registers 7

    .line 5284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5288
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2d

    .line 5289
    :try_start_d
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    .line 5290
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 5291
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v4, 0x0

    .line 5290
    invoke-virtual {p1, p0, v0, v4}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V

    .line 5292
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_2a

    .line 5294
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2a
    move-exception p0

    .line 5292
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 5294
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5295
    throw p0
.end method

.method public requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .registers 6

    .line 5801
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5805
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    .line 5806
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 5808
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5809
    throw p0
.end method

.method public resetDefaultAllowEdgeLighting()V
    .registers 2

    const-string/jumbo v0, "resetDefaultAllowEdgeLighting"

    .line 6673
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6674
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->resetDefaultAllowEdgeLighting()V

    .line 6675
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public final sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 16

    .line 5104
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p0

    if-ne p0, p2, :cond_50

    .line 5105
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    .line 5109
    :cond_1a
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v7

    .line 5113
    invoke-virtual {v7}, Landroid/app/Notification;->clearAllowlistToken()V

    .line 5114
    new-instance p0, Landroid/service/notification/StatusBarNotification;

    .line 5115
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5116
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    .line 5117
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v6

    .line 5119
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object p0

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAllowEdgeLighting(Ljava/lang/String;IZ)V
    .registers 5

    const-string/jumbo v0, "setAllowEdgeLighting"

    .line 6667
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6668
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V
    .registers 6

    .line 6886
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowNotificationPopUpForPackage: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6888
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V

    .line 6889
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setAllowSubDisplayNotification(Ljava/lang/String;IZ)V
    .registers 5

    const-string/jumbo v0, "setAllowSubDisplayNotification"

    .line 6688
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6689
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setAllowSubDisplayNotification(Ljava/lang/String;IZ)V

    .line 6690
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setAppBypassDnd(Ljava/lang/String;IZ)V
    .registers 6

    .line 6902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppBypassDnd: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6904
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setAppBypassDnd(Ljava/lang/String;IZ)V

    .line 6905
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 5

    const-string/jumbo v0, "id is null"

    .line 5764
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Condition is null"

    .line 5765
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setAutomaticZenRuleState"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 5769
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    return-void
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .registers 6

    .line 4350
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4351
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 4352
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 3

    .line 4369
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4371
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->setHideSilentStatusIcons(Z)V

    .line 4372
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4374
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onStatusBarIconsBehaviorChanged(Z)V

    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "setInterruptionFilter"

    .line 5774
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 5775
    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v1

    if-eq v1, v0, :cond_38

    .line 5777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5779
    :try_start_11
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(pkg-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")setInterruptionFilter"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_33

    .line 5782
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_33
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5783
    throw p0

    .line 5776
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid filter: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .registers 5

    .line 4448
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4449
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    .line 4450
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .registers 5

    .line 4392
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4393
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V

    .line 4395
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V
    .registers 6

    .line 6870
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockScreenNotificationVisibilityForPackage: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lockscreenVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V

    .line 6873
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setNASMigrationDoneAndResetDefault(IZ)V
    .registers 4

    .line 6195
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6196
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    if-eqz p2, :cond_16

    .line 6198
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultFromConfig()V

    goto :goto_1f

    .line 6200
    :cond_16
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    :goto_1f
    return-void
.end method

.method public setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 5

    const-string/jumbo v0, "setNotificationAlertsEnabledForPackage"

    .line 6769
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6770
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 6247
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6246
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 8

    .line 6294
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6295
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 6296
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    goto :goto_13

    .line 6298
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6300
    :try_start_30
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    .line 6303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6304
    throw p0
.end method

.method public setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 4461
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4463
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    if-nez p2, :cond_20

    .line 4465
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->revokeNotificationDelegate(Ljava/lang/String;I)V

    .line 4466
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_46

    .line 4469
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/32 v3, 0xc0000

    .line 4472
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 4470
    invoke-interface {v2, p2, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 4474
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V

    .line 4476
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 4479
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_46
    :goto_46
    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6240
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6239
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    return-void
.end method

.method public setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    .registers 14

    .line 6253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6254
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess()V

    if-eqz p3, :cond_32

    .line 6255
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Landroid/app/NotificationManager;->MAX_SERVICE_COMPONENT_NAME_LENGTH:I

    if-gt v0, v1, :cond_17

    goto :goto_32

    .line 6257
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Component name too long: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6258
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    if-nez p4, :cond_3b

    .line 6260
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->isNotificationListenerAccessUserSet(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    .line 6264
    :cond_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6266
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 6267
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 6266
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 6268
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    .line 6270
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    .line 6273
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {p4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6275
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p4, 0x40000000    # 2.0f

    .line 6276
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 6277
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p4, 0x0

    .line 6273
    invoke-virtual {p3, p1, p2, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6279
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_a7
    .catchall {:try_start_3f .. :try_end_a7} :catchall_ab

    .line 6282
    :cond_a7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ab
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6283
    throw p0
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "setNotificationPolicy"

    .line 6101
    invoke-virtual {v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 6102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6105
    :try_start_14
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 6106
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 6105
    invoke-interface {v6, v1, v7, v8, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 6107
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    .line 6109
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_51

    .line 6110
    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v7, v7, -0x21

    and-int/lit8 v7, v7, -0x41

    and-int/lit16 v7, v7, -0x81

    .line 6116
    iget v8, v6, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v9, v8, 0x20

    or-int/2addr v7, v9

    and-int/lit8 v9, v8, 0x40

    or-int/2addr v7, v9

    and-int/lit16 v8, v8, 0x80

    or-int/2addr v7, v8

    .line 6123
    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v9, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v10, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v2, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v8, v7, v9, v10, v2}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object v2, v8

    .line 6127
    :cond_51
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_74

    .line 6128
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v8, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/16 v9, 0x100

    iget v10, v6, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/notification/NotificationManagerService;->correctCategory(III)I

    move-result v12

    .line 6132
    new-instance v7, Landroid/app/NotificationManager$Policy;

    iget v13, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v14, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v15, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v2, v6, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v11, v7

    move/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    move-object v2, v7

    .line 6136
    :cond_74
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v2, v6, v8}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I

    move-result v13

    .line 6139
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v16

    .line 6144
    new-instance v6, Landroid/app/NotificationManager$Policy;

    iget v10, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v11, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v12, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    const/4 v14, -0x1

    iget v15, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    .line 6149
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1, v2, v6}, Lcom/android/server/notification/ZenLog;->traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V

    .line 6150
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v6}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_9b} :catch_a1
    .catchall {:try_start_14 .. :try_end_9b} :catchall_9c

    goto :goto_a1

    :catchall_9c
    move-exception v0

    .line 6153
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6154
    throw v0

    .line 6153
    :catch_a1
    :goto_a1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6046
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6045
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .registers 9

    .line 6052
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6055
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 6056
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->getRequiredPermission()Ljava/lang/String;

    move-result-object v4

    .line 6055
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 6057
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 6060
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6062
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x4000000

    .line 6063
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 6064
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v2, 0x0

    .line 6060
    invoke-virtual {p3, p1, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6065
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_55

    .line 6068
    :cond_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_55
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6069
    throw p0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 16

    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    .line 4236
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4237
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    if-ne v0, p3, :cond_13

    return-void

    .line 4241
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object v0

    .line 4242
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    .line 4241
    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    .line 4243
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    xor-int/lit8 v1, p3, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendAppBlockStateChangedBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V

    .line 4245
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x93

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 4246
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 4247
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 4248
    invoke-virtual {v1, p3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 4245
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4249
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationChannelLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationChannelLogger;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/android/server/notification/NotificationChannelLogger;->logAppNotificationsAllowed(ILjava/lang/String;Z)V

    if-nez p3, :cond_68

    .line 4252
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4253
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v10, 0x7

    const/4 v11, 0x0

    move-object v4, p1

    .line 4252
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 4256
    :cond_68
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .registers 4

    .line 4274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 13

    .line 5300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5302
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_9a

    .line 5303
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-nez p2, :cond_1a

    .line 5305
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_97

    .line 5330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5307
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5308
    array-length v4, p2

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_83

    .line 5310
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-nez v6, :cond_32

    goto :goto_80

    .line 5312
    :cond_32
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 5313
    iget v8, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v7, v8, :cond_4e

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4e

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v8

    .line 5314
    invoke-virtual {v8, v7}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_80

    .line 5317
    :cond_4e
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5318
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v7

    if-nez v7, :cond_80

    .line 5319
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v7, :cond_73

    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Marking notification as seen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    :cond_73
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 5321
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 5322
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_80
    :goto_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 5325
    :cond_83
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_92

    .line 5326
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationsSeenLocked(Ljava/util/ArrayList;)V

    .line 5328
    :cond_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_1a .. :try_end_93} :catchall_97

    .line 5330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_97
    move-exception p0

    .line 5328
    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception p0

    .line 5330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5331
    throw p0
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5644
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5645
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-nez p1, :cond_13

    .line 5646
    monitor-exit v0

    return-void

    .line 5647
    :cond_13
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 5648
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public setPrivateNotificationsAllowed(Z)V
    .registers 4

    .line 6437
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6438
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 6443
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eq p1, v0, :cond_20

    .line 6444
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 6445
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_20
    return-void

    .line 6440
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setReminderEnabled(IZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6844
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    if-eqz p2, :cond_37

    .line 6846
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 6848
    :try_start_17
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 6849
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v0, v2}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_2d} :catch_2e

    goto :goto_b

    :catch_2e
    const-string p3, "NotificationService"

    const-string/jumbo v0, "setReminderEnabledtoList NameNotFoundException"

    .line 6851
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 6855
    :cond_37
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    .line 6857
    :cond_3e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setReminderEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 5

    .line 6838
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6839
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V

    .line 6840
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5

    .line 4423
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4424
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setShowBadge(Ljava/lang/String;IZ)V

    .line 4425
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setToastRateLimitingEnabled(Z)V
    .registers 8

    .line 4141
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_TOAST_RATE_LIMITING"

    const-string v2, "App doesn\'t have the permission to enable/disable toast rate limiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4146
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4147
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz p1, :cond_6e

    .line 4149
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_7d

    .line 4151
    :try_start_29
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_53

    const-string p0, "NotificationService"

    .line 4153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToastRateLimitingEnabled method haven\'t found any packages for the  given uid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toast rate limiter not reset for that uid."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_51} :catch_65
    .catchall {:try_start_29 .. :try_end_51} :catchall_7d

    .line 4156
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_7d

    return-void

    .line 4158
    :cond_53
    :try_start_53
    array-length v1, p1

    const/4 v3, 0x0

    :goto_55
    if-ge v3, v1, :cond_7b

    aget-object v4, p1, v3

    .line 4159
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/server/utils/quota/MultiRateLimiter;->clear(ILjava/lang/String;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_62} :catch_65
    .catchall {:try_start_53 .. :try_end_62} :catchall_7d

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :catch_65
    move-exception p0

    :try_start_66
    const-string p1, "NotificationService"

    const-string v1, "Failed to reset toast rate limiter for given uid"

    .line 4162
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    .line 4165
    :cond_6e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4167
    :cond_7b
    :goto_7b
    monitor-exit v0

    return-void

    :catchall_7d
    move-exception p0

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public setWearableAppList(ILjava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6777
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->clearWearableMutedAppList(I)V

    .line 6778
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6780
    :try_start_18
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "NotificationService"

    .line 6781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NMS : setWearableAppList pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / userid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6782
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->setWearableAppMuted(ILjava/lang/String;I)V
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_53} :catch_54

    goto :goto_b

    :catch_54
    const/4 p0, 0x0

    return p0

    :cond_56
    return v1
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "INotificationManager.setZenMode"

    .line 5664
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5665
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5668
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(pkg-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_40

    .line 5671
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_40
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5672
    throw p0
.end method

.method public shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .registers 3

    .line 4357
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4359
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    .line 4360
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 4363
    :cond_1a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only available for notification listeners"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4361
    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result p0

    return p0
.end method

.method public silenceNotificationSound()V
    .registers 2

    .line 4229
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4231
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V

    return-void
.end method

.method public snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 5360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5362
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_24

    .line 5363
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    .line 5364
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-wide/16 v6, -0x1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 5365
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_21

    .line 5367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 5365
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 5367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5368
    throw p0
.end method

.method public snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .registers 15

    .line 5379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5381
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_23

    .line 5382
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    .line 5383
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, 0x0

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 5384
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    .line 5386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    .line 5384
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 5386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5387
    throw p0
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "NotificationService"

    const-string/jumbo v1, "startEdgeLighting"

    .line 6590
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "NotificationService"

    const-string/jumbo v1, "stopEdgeLighting"

    .line 6596
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6597
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6565
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->unbindService(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unlockAllNotificationChannels()V
    .registers 2

    .line 4771
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4772
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->unlockAllNotificationChannels()V

    .line 4773
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 4764
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4765
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V

    .line 4766
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6580
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 3

    .line 5211
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/os/IInterface;I)V

    return-void
.end method

.method public unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 7

    .line 5397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5399
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_21

    .line 5400
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    .line 5401
    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5402
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 5403
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    .line 5405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    .line 5403
    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 5405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5406
    throw p0
.end method

.method public unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 7

    .line 5417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5419
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2d

    .line 5420
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    .line 5421
    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5422
    iget-boolean v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v3, :cond_22

    .line 5425
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 5426
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2a

    .line 5428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5423
    :cond_22
    :try_start_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to unsnooze before deadline"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2a
    move-exception p0

    .line 5426
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 5428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5429
    throw p0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "automaticZenRule is null"

    .line 5722
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5723
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5724
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    .line 5725
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 5726
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5729
    :cond_23
    :goto_23
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5730
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "updateAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 5732
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6570
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6585
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    return-void
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 6

    .line 4757
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4758
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4759
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method public updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6396
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6397
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6398
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6400
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 6401
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p4, p3}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method public updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Caller not system or systemui"

    .line 4522
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4523
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 4524
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6386
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6387
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 6388
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6389
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p2

    move-object v4, p4

    .line 6388
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 6390
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6734
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6736
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkUpdateNotificationChannelAccess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 6737
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 6738
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_52

    .line 6740
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    const-string v5, "channel in list is null"

    .line 6741
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v5, 0x200

    .line 6742
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 6743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNotificationChannels from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6744
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, p1, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_52
    return-void
.end method

.method public final verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V
    .registers 6

    .line 6477
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6478
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 6479
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_6b

    .line 6480
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 6481
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_2f

    .line 6482
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    iget-object p3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 6485
    monitor-exit v0

    goto :goto_49

    .line 6483
    :cond_2f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have access"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_46
    move-exception p0

    .line 6485
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_46

    throw p0

    .line 6487
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p0

    if-eqz p0, :cond_54

    return-void

    .line 6488
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have access"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6b
    move-exception p0

    .line 6479
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method
