.class public Lcom/android/server/tare/InternalResourceService$ConfigObserver;
.super Landroid/database/ContentObserver;
.source "InternalResourceService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigObserver"
.end annotation


# static fields
.field public static final KEY_DC_ENABLE_TARE:Ljava/lang/String; = "enable_tare"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 1007
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    .line 1008
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1009
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;
    .registers 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    const-string/jumbo v0, "tare"

    .line 1029
    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    return-object p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    const-string p1, "enable_tare"

    .line 1034
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    goto :goto_2d

    :cond_10
    const-string/jumbo p1, "tare_alarm_manager_constants"

    .line 1036
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string/jumbo p1, "tare_job_scheduler_constants"

    .line 1037
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1038
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEconomicPolicy()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 9

    .line 1045
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1046
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_20

    goto :goto_11

    :cond_20
    const/4 v4, -0x1

    .line 1050
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x552a3d64

    if-eq v5, v6, :cond_2b

    goto :goto_34

    :cond_2b
    const-string v5, "enable_tare"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v4, v1

    :cond_34
    :goto_34
    if-eqz v4, :cond_4d

    if-nez v2, :cond_11

    const-string v4, "am"

    .line 1056
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string v4, "js"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1057
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEconomicPolicy()V

    const/4 v2, 0x1

    goto :goto_11

    .line 1052
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    goto :goto_11

    .line 1062
    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public start()V
    .registers 4

    .line 1014
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string/jumbo v1, "tare"

    .line 1013
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_tare"

    .line 1016
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1015
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tare_alarm_manager_constants"

    .line 1018
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1017
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tare_job_scheduler_constants"

    .line 1020
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1019
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    return-void
.end method

.method public final updateEconomicPolicy()V
    .registers 9

    .line 1086
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1087
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1088
    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v1

    .line 1089
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v3

    .line 1090
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tare/EconomicPolicy;->tearDown()V

    .line 1091
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    new-instance v6, Lcom/android/server/tare/CompleteEconomicPolicy;

    iget-object v7, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {v6, v7}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-static {v5, v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy;)V

    .line 1092
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmBootPhase(Lcom/android/server/tare/InternalResourceService;)I

    move-result v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_87

    .line 1093
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/tare/CompleteEconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 1094
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1096
    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_7e

    .line 1098
    :cond_6b
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v2

    .line 1098
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    .line 1101
    :cond_7e
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    .line 1103
    :cond_87
    monitor-exit v0

    return-void

    :catchall_89
    move-exception p0

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public final updateEnabledStatus()V
    .registers 5

    const-string/jumbo v0, "tare"

    const-string v1, "enable_tare"

    const/4 v2, 0x0

    .line 1070
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1072
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v2, v1

    .line 1074
    :cond_14
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-eq v0, v2, :cond_3e

    .line 1075
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0, v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmIsEnabled(Lcom/android/server/tare/InternalResourceService;Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1077
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$msetupEverything(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_34

    .line 1079
    :cond_2f
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mtearDownEverything(Lcom/android/server/tare/InternalResourceService;)V

    .line 1081
    :goto_34
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3e
    return-void
.end method
