.class public Lcom/samsung/server/wallpaper/CMFWallpaper;
.super Ljava/lang/Object;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;
    }
.end annotation


# static fields
.field public static final COLOR_CODE_POLLING_THREAD_COUNTDOWN:I = 0x3c

.field public static final DEBUG:Z = false

.field public static final MSG_UPDATE_CMF_COLOR_SETTING:I = 0x3f5

.field public static final RIL_SYSTEM_PROPERTY_FOR_COLOR_CODE:Ljava/lang/String; = "ril.product_code"

.field public static final TAG:Ljava/lang/String; = "CMFWallpaper"

.field public static sCmfSwitchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mColorCodePollingThread:Ljava/lang/Thread;

.field public final mContext:Landroid/content/Context;

.field public mDeviceColor:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public mLastColorCodePollingThreadCount:I

.field public mLegacyDeviceColor:Ljava/lang/String;

.field public mProductCode:Ljava/lang/String;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/CMFWallpaper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceColor(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I
    .registers 1

    iget p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/server/wallpaper/CMFWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmColorCodePollingThread(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCmfColorCodeFromSettingsDB(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getCmfColorCodeFromSettingsDB()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misOperatorWallpaper(Lcom/samsung/server/wallpaper/CMFWallpaper;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->isOperatorWallpaper()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smswitchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->switchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "zk"

    .line 45
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    const-string v0, "black"

    .line 46
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    const/16 v0, 0x3c

    .line 51
    iput v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 68
    new-instance v0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v1, Lcom/samsung/server/wallpaper/CMFWallpaper$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper$2;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mSettingsObserver:Landroid/database/ContentObserver;

    const-string v0, "CMFWallpaper"

    .line 56
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 62
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "eng"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    const-string/jumbo p2, "userdebug"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 63
    :cond_3e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "cmf_color_code"

    .line 64
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4c
    return-void
.end method

.method public static getPreciseMillisTimeString(J)Ljava/lang/String;
    .registers 7

    .line 378
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static switchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 300
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchCmfByCscFeature: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    sget-object v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c2

    .line 307
    sget-object v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    monitor-enter v3

    .line 308
    :try_start_2d
    sget-object v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    if-nez v4, :cond_183

    const-string v4, "CMFWallpaper"

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "init: start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    .line 314
    sget-object v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 316
    array-length v5, v4

    const-string v6, "CMFWallpaper"

    .line 318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "init: replace Items: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move v7, v6

    :goto_77
    if-ge v7, v5, :cond_14b

    .line 321
    aget-object v8, v4, v7
    :try_end_7b
    .catchall {:try_start_2d .. :try_end_7b} :catchall_1bf

    .line 324
    :try_start_7b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_111

    const-string v9, ":"

    .line 328
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 329
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_108

    .line 332
    aget-object v10, v9, v6

    const/4 v11, 0x1

    .line 333
    aget-object v9, v9, v11

    .line 337
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_100

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_100

    .line 341
    sget-object v11, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_e1

    const-string v11, "CMFWallpaper"

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "init: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] put "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v11, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_147

    .line 343
    :cond_e1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicated from color!! key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has value already: "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 338
    :cond_100
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "empty value included!!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 330
    :cond_108
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "wrong format"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 325
    :cond_111
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "null switchItem"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_119} :catch_119
    .catchall {:try_start_7b .. :try_end_119} :catchall_1bf

    :catch_119
    move-exception v9

    :try_start_11a
    const-string v10, "CMFWallpaper"

    .line 350
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "init: ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] skipped: ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_147
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_77

    :cond_14b
    const-string v4, "CMFWallpaper"

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "init: Done. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") took :"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getPreciseMillisTimeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_183
    sget-object v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1ac

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1bd

    .line 362
    :cond_1ac
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need to switch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    :goto_1bd
    monitor-exit v3

    goto :goto_1c3

    :catchall_1bf
    move-exception p0

    monitor-exit v3
    :try_end_1c1
    .catchall {:try_start_11a .. :try_end_1c1} :catchall_1bf

    throw p0

    :cond_1c2
    move-object v5, v4

    :goto_1c3
    if-nez v4, :cond_1cb

    if-eqz p0, :cond_1cb

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :cond_1cb
    const-string p0, "CMFWallpaper"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[DONE: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] took :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getPreciseMillisTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method


# virtual methods
.method public final getCmfColorCodeFromSettingsDB()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmf_color_code"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultColorCode()Ljava/lang/String;
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getCmfColorCodeFromSettingsDB()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    const-string v2, "getDefaultDeviceColor"

    .line 122
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 124
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public getDeviceColor()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string/jumbo p1, "ril.product_code"

    .line 134
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rilProductCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_5e

    const/16 v0, 0x8

    .line 139
    :try_start_2f
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rilProductCode=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', colorCode="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setCMFColorCode(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2f .. :try_end_57} :catch_58

    return-object v0

    :catch_58
    const-string p0, "IndexOutOfBoundsException occurred on getDeviceColorCodeFromSystemProperty"

    .line 144
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 148
    :cond_5e
    iget-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    if-nez p1, :cond_73

    .line 149
    new-instance p1, Lcom/samsung/server/wallpaper/CMFWallpaper$3;

    invoke-direct {p1, p0}, Lcom/samsung/server/wallpaper/CMFWallpaper$3;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V

    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    const-string v0, "ColorCodePollingThread"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_73
    return-object v2
.end method

.method public getLastColorCodePollingThreadCount()I
    .registers 1

    .line 392
    iget p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    return p0
.end method

.method public getLegacyDeviceColor()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyDeviceColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , color code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    return-object p0
.end method

.method public getProductCode()Ljava/lang/String;
    .registers 1

    .line 396
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    return-object p0
.end method

.method public initDeviceColor()V
    .registers 3

    .line 100
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDefaultColorCode()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    return-void
.end method

.method public final isOperatorWallpaper()Z
    .registers 6

    .line 384
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    .line 386
    invoke-static {v1, v4, v3, v0}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 387
    invoke-static {v1, v2, v0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_29

    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 388
    invoke-static {p0, v4, v0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :cond_29
    :goto_29
    return v2
.end method

.method public setCMFColorCode(Ljava/lang/String;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 95
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDeviceColor(Ljava/lang/String;)V
    .registers 3

    .line 106
    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    return-void
.end method

.method public final setLegacyDeviceColor(Ljava/lang/String;)V
    .registers 5

    .line 193
    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLegacyDeviceColor cmfColorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", featureBasedColor = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CMFWallpaper"

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_18a

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto/16 :goto_18a

    :cond_2d
    const/4 p1, -0x1

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_18c

    goto/16 :goto_15f

    :sswitch_37
    const-string/jumbo v1, "zy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_15f

    :cond_42
    const/16 p1, 0x15

    goto/16 :goto_15f

    :sswitch_46
    const-string/jumbo v1, "zw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_15f

    :cond_51
    const/16 p1, 0x14

    goto/16 :goto_15f

    :sswitch_55
    const-string/jumbo v1, "zv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_15f

    :cond_60
    const/16 p1, 0x13

    goto/16 :goto_15f

    :sswitch_64
    const-string/jumbo v1, "zs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_15f

    :cond_6f
    const/16 p1, 0x12

    goto/16 :goto_15f

    :sswitch_73
    const-string/jumbo v1, "zr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_15f

    :cond_7e
    const/16 p1, 0x11

    goto/16 :goto_15f

    :sswitch_82
    const-string/jumbo v1, "zp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_15f

    :cond_8d
    const/16 p1, 0x10

    goto/16 :goto_15f

    :sswitch_91
    const-string/jumbo v1, "zn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_15f

    :cond_9c
    const/16 p1, 0xf

    goto/16 :goto_15f

    :sswitch_a0
    const-string/jumbo v1, "zk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_15f

    :cond_ab
    const/16 p1, 0xe

    goto/16 :goto_15f

    :sswitch_af
    const-string/jumbo v1, "zi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    goto/16 :goto_15f

    :cond_ba
    const/16 p1, 0xd

    goto/16 :goto_15f

    :sswitch_be
    const-string/jumbo v1, "zg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    goto/16 :goto_15f

    :cond_c9
    const/16 p1, 0xc

    goto/16 :goto_15f

    :sswitch_cd
    const-string/jumbo v1, "zd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    goto/16 :goto_15f

    :cond_d8
    const/16 p1, 0xb

    goto/16 :goto_15f

    :sswitch_dc
    const-string/jumbo v1, "zb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    goto/16 :goto_15f

    :cond_e7
    const/16 p1, 0xa

    goto/16 :goto_15f

    :sswitch_eb
    const-string/jumbo v1, "za"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    goto/16 :goto_15f

    :cond_f6
    const/16 p1, 0x9

    goto/16 :goto_15f

    :sswitch_fa
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    goto/16 :goto_15f

    :cond_104
    const/16 p1, 0x8

    goto/16 :goto_15f

    :sswitch_108
    const-string v1, "mg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    goto :goto_15f

    :cond_111
    const/4 p1, 0x7

    goto :goto_15f

    :sswitch_113
    const-string v1, "mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    goto :goto_15f

    :cond_11c
    const/4 p1, 0x6

    goto :goto_15f

    :sswitch_11e
    const-string v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    goto :goto_15f

    :cond_127
    const/4 p1, 0x5

    goto :goto_15f

    :sswitch_129
    const-string v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    goto :goto_15f

    :cond_132
    const/4 p1, 0x4

    goto :goto_15f

    :sswitch_134
    const-string v1, "ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13d

    goto :goto_15f

    :cond_13d
    const/4 p1, 0x3

    goto :goto_15f

    :sswitch_13f
    const-string v1, "di"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    goto :goto_15f

    :cond_148
    const/4 p1, 0x2

    goto :goto_15f

    :sswitch_14a
    const-string v1, "cw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_153

    goto :goto_15f

    :cond_153
    const/4 p1, 0x1

    goto :goto_15f

    :sswitch_155
    const-string v1, "ck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    goto :goto_15f

    :cond_15e
    const/4 p1, 0x0

    :goto_15f
    const-string v0, "black"

    packed-switch p1, :pswitch_data_1e6

    goto :goto_188

    :pswitch_165
    const-string/jumbo v0, "yellow"

    goto :goto_188

    :pswitch_169
    const-string/jumbo v0, "purple"

    goto :goto_188

    :pswitch_16d
    const-string v0, "brown"

    goto :goto_188

    :pswitch_170
    const-string v0, "gold"

    goto :goto_188

    :pswitch_173
    const-string/jumbo v0, "orchid"

    goto :goto_188

    :pswitch_177
    const-string/jumbo v0, "silver"

    goto :goto_188

    :pswitch_17b
    const-string v0, "green"

    goto :goto_188

    :pswitch_17e
    const-string v0, "blue"

    goto :goto_188

    :pswitch_181
    const-string/jumbo v0, "pink"

    goto :goto_188

    :pswitch_185
    const-string/jumbo v0, "white"

    .line 249
    :goto_188
    :pswitch_188
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    :cond_18a
    :goto_18a
    return-void

    nop

    :sswitch_data_18c
    .sparse-switch
        0xc68 -> :sswitch_155
        0xc74 -> :sswitch_14a
        0xc85 -> :sswitch_13f
        0xc9f -> :sswitch_134
        0xcdb -> :sswitch_129
        0xd76 -> :sswitch_11e
        0xd95 -> :sswitch_113
        0xd9a -> :sswitch_108
        0xda6 -> :sswitch_fa
        0xf27 -> :sswitch_eb
        0xf28 -> :sswitch_dc
        0xf2a -> :sswitch_cd
        0xf2d -> :sswitch_be
        0xf2f -> :sswitch_af
        0xf31 -> :sswitch_a0
        0xf34 -> :sswitch_91
        0xf36 -> :sswitch_82
        0xf38 -> :sswitch_73
        0xf39 -> :sswitch_64
        0xf3c -> :sswitch_55
        0xf3d -> :sswitch_46
        0xf3f -> :sswitch_37
    .end sparse-switch

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_188
        :pswitch_185
        :pswitch_181
        :pswitch_181
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17b
        :pswitch_177
        :pswitch_173
        :pswitch_17e
        :pswitch_170
        :pswitch_17b
        :pswitch_181
        :pswitch_188
        :pswitch_16d
        :pswitch_169
        :pswitch_173
        :pswitch_177
        :pswitch_173
        :pswitch_185
        :pswitch_165
    .end packed-switch
.end method
