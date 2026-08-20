.class Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;
.super Landroid/database/ContentObserver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceRestrictionObserver"
.end annotation


# static fields
.field private static final MODE_MAX:I = 0x2

.field private static final MODE_MID:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final URI_MAX:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final URI_MID:Ljava/lang/String; = "low_power"

.field private static final URI_RESTRICTION:Ljava/lang/String; = "restricted_device_performance"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsMAXPerfRestriction:Z

.field private mIsMIDPerfRestriction:Z

.field private mIsPerformanceRestricted:Z

.field mPsmLimitCheckRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestricted(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckRestrictionSetting(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestrictionSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPowerSavingMode(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->getPowerSavingMode()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1219
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1220
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1264
    new-instance p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;

    invoke-direct {p1, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    .line 1221
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mHandler:Landroid/os/Handler;

    .line 1222
    return-void
.end method

.method private checkRestricted(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 1304
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c

    .line 1312
    return v0

    .line 1310
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z

    return v0

    .line 1308
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z

    return v0

    .line 1306
    :pswitch_b
    return v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private checkRestrictionSetting()V
    .registers 6

    .line 1285
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "restricted_device_performance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, "valueStr":Ljava/lang/String;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_45

    .line 1288
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, "value":[Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1c
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_2a

    move v4, v2

    goto :goto_2b

    :cond_2a
    move v4, v3

    :goto_2b
    iput-boolean v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 1293
    goto :goto_31

    .line 1291
    :catch_2e
    move-exception v4

    .line 1292
    .local v4, "e":Ljava/lang/NumberFormatException;
    iput-boolean v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMIDPerfRestriction:Z

    .line 1296
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_31
    :try_start_31
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    :goto_3f
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_41} :catch_42

    .line 1299
    goto :goto_45

    .line 1297
    :catch_42
    move-exception v2

    .line 1298
    .local v2, "e":Ljava/lang/NumberFormatException;
    iput-boolean v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsMAXPerfRestriction:Z

    .line 1301
    .end local v1    # "value":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    :goto_45
    return-void
.end method

.method private getPowerSavingMode()I
    .registers 6

    .line 1273
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1274
    .local v0, "midMode":I
    const/4 v1, 0x1

    if-eq v0, v2, :cond_14

    if-eqz v0, :cond_14

    .line 1275
    return v1

    .line 1277
    :cond_14
    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_25

    .line 1278
    const/4 v1, 0x2

    return v1

    .line 1281
    :cond_25
    return v4
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 1251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1252
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1256
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    if-nez v0, :cond_1a

    .line 1258
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 1260
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mPsmLimitCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1262
    :goto_25
    return-void
.end method

.method public startObserving(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1230
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1231
    const-string v1, "restricted_device_performance"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Landroid/os/Handler;)V

    .line 1230
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1244
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestrictionSetting()V

    .line 1245
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->getPowerSavingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->checkRestricted(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->mIsPerformanceRestricted:Z

    .line 1246
    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 1247
    return-void
.end method
