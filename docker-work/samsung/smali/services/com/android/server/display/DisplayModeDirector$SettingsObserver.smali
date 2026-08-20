.class final Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPeakRefreshRate:F

.field public mDefaultRefreshRate:F

.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field public final mMinRefreshRateSetting:Landroid/net/Uri;

.field public final mPeakRefreshRateSetting:Landroid/net/Uri;

.field public mRefreshRateModeByDisplayToken:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mRefreshRateModeSetting:Landroid/net/Uri;

.field public final mSubRefreshRateModeSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public static synthetic $r8$lambda$PKTrysrOuJQxS6xKg1HhbqI09Nc(Lcom/android/server/display/RefreshRateToken;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->lambda$updateLowPowerModeSettingLocked$0(Lcom/android/server/display/RefreshRateToken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PPSHEPWFE8KjiBhRKffC8B_I3Ao(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->lambda$logCurrentRefreshRateMode$1(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLowPowerModeSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateModeSwitchingTypeSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateModeLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateModeLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 1281
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 1282
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "peak_refresh_rate"

    .line 1260
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    const-string/jumbo p1, "min_refresh_rate"

    .line 1262
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    const-string/jumbo p1, "low_power"

    .line 1264
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const-string/jumbo p1, "match_content_frame_rate"

    .line 1266
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    const-string/jumbo p1, "refresh_rate_mode"

    .line 1269
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    const-string/jumbo p1, "refresh_rate_mode_cover"

    .line 1272
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    .line 1274
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    .line 1283
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1284
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0069

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1287
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e006b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return-void
.end method

.method public static synthetic lambda$logCurrentRefreshRateMode$1(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .registers 5

    .line 1520
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DisplayToken: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "%s"

    .line 1521
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", RefreshRateMode: "

    .line 1522
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 1524
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic lambda$updateLowPowerModeSettingLocked$0(Lcom/android/server/display/RefreshRateToken;)Z
    .registers 1

    .line 1387
    instance-of p0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;

    return p0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "  SettingsObserver"

    .line 1532
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_43

    const-string v0, "    mRefreshRateModeByDisplayToken"

    .line 1537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    .line 1538
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->logCurrentRefreshRateMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public getRefreshRateModeLocked()I
    .registers 4

    .line 1497
    const-class v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter v0

    .line 1498
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1499
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    .line 1501
    :cond_19
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_2d
    move-exception p0

    .line 1502
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public logCurrentRefreshRateMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1519
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$SettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logCurrentStateLocked()Ljava/lang/String;
    .registers 3

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SettingObserver mRefreshRateModeByDisplayToken\n"

    .line 1509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object p0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->logCurrentRefreshRateMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public observe()V
    .registers 5

    .line 1291
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1292
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1293
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1295
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1297
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1300
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_32

    .line 1301
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1304
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v1, :cond_32

    .line 1305
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1312
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    .line 1313
    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1315
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1318
    :cond_44
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1319
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 1323
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_5b

    .line 1324
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateModeLocked(Z)V

    .line 1327
    :cond_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_4b .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 1353
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1354
    :try_start_7
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_51

    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 1355
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_51

    .line 1357
    :cond_18
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_24

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_54

    .line 1359
    :cond_24
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_30

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    goto :goto_54

    .line 1363
    :cond_30
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 1364
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_41

    .line 1365
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateModeLocked(Z)V

    goto :goto_54

    .line 1366
    :cond_41
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz p3, :cond_54

    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    .line 1367
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 1368
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateModeLocked(Z)V

    goto :goto_54

    .line 1356
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1371
    :cond_54
    :goto_54
    monitor-exit p1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p1
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .registers 4

    if-nez p1, :cond_14

    .line 1339
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0069

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1343
    :cond_14
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_33

    .line 1344
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1345
    :try_start_25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1347
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public setDefaultRefreshRate(F)V
    .registers 3

    .line 1331
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1332
    :try_start_7
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1334
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final updateLowPowerModeSettingLocked()V
    .registers 5

    .line 1375
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    :cond_11
    if-eqz v2, :cond_1b

    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    .line 1379
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1385
    :goto_1c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    .line 1386
    invoke-virtual {v1}, Lcom/android/server/display/RefreshRateTokenController;->getRefreshRateTokenList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/display/DisplayModeDirector$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver$$ExternalSyntheticLambda0;-><init>()V

    .line 1387
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1389
    :cond_37
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v3, 0xc

    invoke-static {v1, v3, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1391
    :cond_3e
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    return-void
.end method

.method public final updateModeSwitchingTypeSettingLocked()V
    .registers 5

    .line 1440
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1441
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v1

    .line 1443
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    const-string/jumbo v3, "match_content_frame_rate"

    .line 1441
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1444
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 1445
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fputmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;I)V

    .line 1446
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/DisplayModeDirector;)V

    :cond_29
    return-void
.end method

.method public final updateRefreshRateModeLocked(Z)V
    .registers 11

    .line 1454
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->-$$Nest$fgetmIsSubScreen(Lcom/android/server/display/DisplayModeDirector$DisplayObserver;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "refresh_rate_mode_cover"

    goto :goto_17

    :cond_14
    const-string/jumbo v0, "refresh_rate_mode"

    .line 1457
    :goto_17
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez p1, :cond_2b

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result p1

    if-eq v0, p1, :cond_f8

    .line 1460
    :cond_2b
    const-class p1, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter p1

    const v1, 0x13af11

    const/4 v2, 0x2

    :try_start_32
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 1461
    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1462
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1461
    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1463
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmUpdateRefreshRateModeByDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Landroid/os/IBinder;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    monitor-exit p1
    :try_end_71
    .catchall {:try_start_32 .. :try_end_71} :catchall_f9

    if-eqz v0, :cond_98

    if-eq v0, v6, :cond_79

    if-eq v0, v2, :cond_79

    const/4 p1, 0x0

    goto :goto_df

    .line 1481
    :cond_79
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result p1

    int-to-float p1, p1

    .line 1482
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v0

    int-to-float v0, v0

    .line 1480
    invoke-static {p1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    goto :goto_df

    .line 1468
    :cond_98
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 1470
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result p1

    int-to-float p1, p1

    .line 1471
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v0

    int-to-float v0, v0

    .line 1469
    invoke-static {p1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    goto :goto_df

    .line 1474
    :cond_c1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result p1

    int-to-float p1, p1

    .line 1475
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v0

    int-to-float v0, v0

    .line 1473
    invoke-static {p1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    .line 1488
    :goto_df
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1489
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz p1, :cond_f3

    .line 1490
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p1

    invoke-static {p1, v3, v6}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;ZZ)V

    .line 1492
    :cond_f3
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mnotifyRefreshRateModeLocked(Lcom/android/server/display/DisplayModeDirector;)Z

    :cond_f8
    return-void

    :catchall_f9
    move-exception p0

    .line 1465
    :try_start_fa
    monitor-exit p1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw p0
.end method

.method public final updateRefreshRateSettingLocked()V
    .registers 6

    .line 1395
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1397
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const-string/jumbo v2, "min_refresh_rate"

    const/4 v3, 0x0

    .line 1396
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 1398
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1399
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    const-string/jumbo v4, "peak_refresh_rate"

    .line 1398
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1400
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    return-void
.end method

.method public final updateRefreshRateSettingLocked(FFF)V
    .registers 10

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move-object v3, v2

    goto :goto_10

    .line 1411
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .line 1412
    :goto_10
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v5, 0x9

    invoke-static {v4, v5, v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1413
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x5

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1414
    invoke-static {p1, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v5

    .line 1413
    invoke-static {v3, v4, v5}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    cmpl-float v3, p3, v0

    if-nez v3, :cond_28

    goto :goto_2c

    .line 1416
    :cond_28
    invoke-static {v0, p3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .line 1417
    :goto_2c
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    if-nez v1, :cond_3f

    if-nez v3, :cond_3f

    const-string p2, "DisplayModeDirector"

    const-string p3, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    .line 1425
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    goto :goto_4a

    :cond_3f
    if-nez v1, :cond_43

    move p2, p3

    goto :goto_4a

    :cond_43
    if-nez v3, :cond_46

    goto :goto_4a

    .line 1433
    :cond_46
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1436
    :goto_4a
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    return-void
.end method
