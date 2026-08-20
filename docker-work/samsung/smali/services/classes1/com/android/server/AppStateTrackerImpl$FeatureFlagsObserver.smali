.class Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTrackerImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const/4 p1, 0x0

    .line 227
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public isForcedAppStandbyEnabled()Z
    .registers 3

    .line 240
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const-string v0, "forced_app_standby_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isForcedAppStandbyForSmallBatteryEnabled()Z
    .registers 3

    .line 244
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const-string v0, "forced_app_standby_for_small_battery_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    move v1, v0

    :cond_d
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    const-string p1, "forced_app_standby_enabled"

    .line 250
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 251
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result p1

    .line 252
    iget-object p2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_17
    iget-object p2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v1, p2, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-ne v1, p1, :cond_1f

    .line 254
    monitor-exit v0

    return-void

    .line 256
    :cond_1f
    iput-boolean p1, p2, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    .line 257
    invoke-static {p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V

    .line 262
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2f

    .line 263
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    goto :goto_71

    :catchall_2f
    move-exception p0

    .line 262
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    const-string p1, "forced_app_standby_for_small_battery_enabled"

    .line 264
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 265
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 266
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result p1

    .line 267
    iget-object p2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 268
    :try_start_49
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean p2, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    if-ne p2, p1, :cond_51

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_51
    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 276
    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V

    .line 277
    monitor-exit v0

    goto :goto_71

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_58

    throw p0

    :cond_5b
    const-string p0, "AppStateTracker"

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected feature flag uri encountered: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    return-void
.end method

.method public register()V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmContext(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_enabled"

    .line 232
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmContext(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
