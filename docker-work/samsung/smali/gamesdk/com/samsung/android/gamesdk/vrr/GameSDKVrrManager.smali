.class public Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
.super Ljava/lang/Object;
.source "GameSDKVrrManager.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/GameSDKComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$Singleton;
    }
.end annotation


# static fields
.field private static final GOS_SETTING_48_MODE:I = 0x1

.field private static final SETTING_HIGH_SPEED_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GameSDKVrrManager"


# instance fields
.field private final SECURE_BOOSTER_ALLOWED_48HZ:Ljava/lang/String;

.field private final SECURE_SETTINGS_REFRESH_RATE_MODE:Ljava/lang/String;

.field private final TARGET_60HZ:I

.field private mContext:Landroid/content/Context;

.field private mCurrentGosSetting48:I

.field private mCurrentMultiWindowState:I

.field private mCurrentSettingRefreshRateMode:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

.field private mGameSDKVrrListener:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mRefreshRatesCopy:[I

.field private final mRefreshRatesTreeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWmi:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "refresh_rate_mode"

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SECURE_SETTINGS_REFRESH_RATE_MODE:Ljava/lang/String;

    .line 37
    const-string v0, "game_display_hz_48"

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SECURE_BOOSTER_ALLOWED_48HZ:Ljava/lang/String;

    .line 41
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->TARGET_60HZ:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrrListener:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    .line 53
    iput v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    .line 54
    iput v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentMultiWindowState:I

    .line 56
    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mDefaultDisplay:Landroid/view/Display;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesCopy:[I

    .line 65
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;-><init>()V

    return-void
.end method

.method private SLOGD(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 71
    const-string v0, "GameSDKVrrManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_9
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->needToUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    .line 33
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    .line 33
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    return p1
.end method

.method private checkAndCreateDefaultDisplay()Z
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_23

    .line 256
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mDefaultDisplay:Landroid/view/Display;

    .line 257
    if-eqz v0, :cond_1c

    .line 258
    const-string v0, "VRR Default Display was successfully loaded."

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    goto :goto_23

    .line 260
    :cond_1c
    const-string v0, "[FAIL] checkAndCreateDefaultDisplay(): Failed to create mDefaultDisplay"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method private checkAndCreateWindowManagerInternal()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    if-nez v0, :cond_1d

    .line 269
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    .line 270
    if-eqz v0, :cond_16

    .line 271
    const-string v0, "VRR WindowManagerInternal Service was successfully loaded."

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    goto :goto_1d

    .line 273
    :cond_16
    const-string v0, "[FAIL] checkAndCreateWindowManagerInternal(): Failed to create WindowManagerInternal"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method private getCurrentRefreshRate()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate(Z)I

    move-result v0

    return v0
.end method

.method private getDisabledByMultiWindow()Z
    .registers 2

    .line 324
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentMultiWindowState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .registers 1

    .line 597
    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$Singleton;->instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$Singleton;->access$600()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedModesGeneral()V
    .registers 10

    .line 455
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 457
    .local v0, "supportedModes":[Landroid/view/Display$Mode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v1, "str":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_5d

    aget-object v4, v0, v3

    .line 459
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 460
    .local v5, "refreshRate":I
    iget-object v6, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 461
    iget-object v6, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Hz("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 465
    .end local v5    # "refreshRate":I
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRR getSupportedModesGeneral VRR list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private getSupportedModesSwitchable()V
    .registers 13

    .line 469
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 470
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 471
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 472
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v4, "str":Ljava/lang/StringBuilder;
    iget-object v5, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v6, v5

    :goto_1f
    if-ge v1, v6, :cond_7e

    aget-object v7, v5, v1

    .line 476
    .local v7, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 477
    .local v8, "refreshRate":I
    iget v9, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    const/16 v10, 0x3c

    const/4 v11, 0x2

    if-ne v9, v11, :cond_35

    if-ge v8, v10, :cond_35

    .line 478
    goto :goto_7b

    .line 479
    :cond_35
    if-eq v9, v11, :cond_3a

    if-le v8, v10, :cond_3a

    .line 480
    goto :goto_7b

    .line 482
    :cond_3a
    iget-object v9, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 483
    iget-object v9, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Hz("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .end local v7    # "mode":Landroid/view/Display$Mode;
    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 487
    .end local v8    # "refreshRate":I
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VRR getSupportedModesSwitchable VRR list "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private isGameSDKVrrSupported()Z
    .registers 2

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupported(Z)Z

    move-result v0

    return v0
.end method

.method private isGameSDKVrrSupportedByDevice()Z
    .registers 2

    .line 328
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isGameSDKVrrSwitchableDevice()Z
    .registers 3

    .line 332
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private needToUpdate()V
    .registers 8

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupported()Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-nez v0, :cond_c

    goto/16 :goto_100

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 351
    return-void

    .line 354
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VRR needToUpdate() mGameSDKVrr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current setting mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current gos 48 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current multi window state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentMultiWindowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    iget v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->setSettingRefreshRateMode(I)Z

    move-result v0

    .line 359
    .local v0, "isSettingRefreshRateModeChanged":Z
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    iget v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->setGosSetting48(I)Z

    move-result v1

    .line 360
    .local v1, "isGosSetting48Changed":Z
    const/4 v2, 0x0

    .line 362
    .local v2, "needCallCallback":Z
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->updateSupportedRefreshRates()V

    .line 364
    if-nez v0, :cond_69

    if-eqz v1, :cond_6a

    .line 365
    :cond_69
    const/4 v2, 0x1

    .line 372
    :cond_6a
    iget v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8f

    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-ne v3, v4, :cond_8f

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate()I

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_8f

    .line 375
    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRateWithoutSave(I)V

    goto :goto_fa

    .line 376
    :cond_8f
    iget v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    const/16 v5, 0x3c

    const/4 v6, -0x1

    if-ne v3, v4, :cond_aa

    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-eq v3, v4, :cond_aa

    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v3

    if-ne v3, v6, :cond_aa

    .line 379
    invoke-direct {p0, v5}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRateWithoutSave(I)V

    goto :goto_fa

    .line 383
    :cond_aa
    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v3

    if-eq v3, v6, :cond_f9

    .line 384
    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate()I

    move-result v4

    if-eq v3, v4, :cond_fa

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VRR needToUpdate() Priority 3 case, change to back, current refresh rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", set refresh rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 386
    invoke-virtual {v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-direct {p0, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRate(I)Z

    move-result v3

    if-nez v3, :cond_fa

    .line 390
    invoke-direct {p0, v5}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRateWithoutSave(I)V

    .line 393
    const/4 v2, 0x1

    goto :goto_fa

    .line 398
    :cond_f9
    const/4 v2, 0x1

    .line 401
    :cond_fa
    :goto_fa
    if-eqz v2, :cond_ff

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->sendCallBackVrrListener()V

    .line 405
    :cond_ff
    return-void

    .line 346
    .end local v0    # "isSettingRefreshRateModeChanged":Z
    .end local v1    # "isGosSetting48Changed":Z
    .end local v2    # "needCallCallback":Z
    :cond_100
    :goto_100
    return-void
.end method

.method private sendCallBackVrrListener()V
    .registers 5

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrrListener:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;->callVrrListener()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 414
    :cond_d
    goto :goto_2f

    .line 412
    :catch_e
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callBackVrrListener(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKVrrManager"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private setRefreshRateImp(IZ)Z
    .registers 9
    .param p1, "targetRefreshRate"    # I
    .param p2, "withSave"    # Z

    .line 495
    const-string v0, "GameSDKVrrManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VRR setRefreshRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", withSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x0

    :try_start_23
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupported()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate()I

    move-result v2

    if-ne p1, v2, :cond_54

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRR setRefreshRate is skipped, target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 501
    return v1

    .line 504
    :cond_54
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 505
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 506
    .local v2, "modeId":Ljava/lang/Integer;
    if-eqz v2, :cond_77

    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-eqz v3, :cond_77

    .line 507
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p1, v4, p2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->setRefreshRate(IIZ)V

    .line 508
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_77
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] VRR setRefreshRate is skipped, modeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mGameSDKVrr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return v1

    .line 514
    .end local v2    # "modeId":Ljava/lang/Integer;
    :cond_9e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "[FAIL] Failed to setRefreshRate, refresh rate map is empty. "

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_a7} :catch_a8

    .line 519
    :cond_a7
    goto :goto_c7

    .line 517
    :catch_a8
    move-exception v2

    .line 518
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] Failed to setRefreshRate(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c7
    return v1
.end method

.method private setRefreshRateWithoutSave(I)V
    .registers 3
    .param p1, "targetRefreshRate"    # I

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRateImp(IZ)Z

    .line 492
    return-void
.end method

.method private updateSupportedRefreshRates()V
    .registers 6

    .line 419
    const-string v0, "VRR updateSupportedRefreshRates"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->checkAndCreateDefaultDisplay()Z

    move-result v0

    if-nez v0, :cond_11

    .line 423
    return-void

    .line 426
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSwitchableDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getSupportedModesSwitchable()V

    goto :goto_1e

    .line 429
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getSupportedModesGeneral()V

    .line 433
    :goto_1e
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    .line 435
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 436
    .local v0, "mode48Id":Ljava/lang/Integer;
    if-eqz v0, :cond_46

    .line 437
    const-string v2, "VRR Priority 2, delete all refresh rate except 48hz"

    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 439
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .end local v0    # "mode48Id":Ljava/lang/Integer;
    :cond_46
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 444
    .local v0, "refreshRates":[I
    const/4 v1, 0x0

    .line 445
    .local v1, "count":I
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 446
    .local v3, "tempEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 447
    nop

    .end local v3    # "tempEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    add-int/lit8 v1, v1, 0x1

    .line 448
    goto :goto_59

    .line 449
    :cond_75
    monitor-enter p0

    .line 450
    :try_start_76
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesCopy:[I

    .line 451
    monitor-exit p0

    .line 452
    return-void

    .line 451
    :catchall_80
    move-exception v2

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_80

    throw v2
.end method


# virtual methods
.method public checkMultiWindowState()V
    .registers 7

    .line 308
    const-string v0, "GameSDKVrrManager"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v1

    .line 309
    .local v1, "state":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiWindowEventListener.onTaskFocusChanged(), state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 311
    iget v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentMultiWindowState:I

    if-eq v2, v1, :cond_46

    .line 312
    iput v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentMultiWindowState:I

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRR getDisabledByMultiWindow() by Multi-window, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getDisabledByMultiWindow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->sendCallBackVrrListener()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_47

    .line 320
    .end local v1    # "state":I
    :cond_46
    goto :goto_66

    .line 318
    :catch_47
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMultiWindowState(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_66
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 561
    const-string v0, "----------------------------"

    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupportedByDevice()Z

    move-result v1

    if-nez v1, :cond_9

    .line 562
    return-void

    .line 565
    :cond_9
    sget-boolean v1, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v1, :cond_db

    .line 566
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Setting mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Gos Settings mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current multi-window state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentMultiWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current refresh rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-eqz v1, :cond_d8

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Current VRR Package name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Current VRR is used before : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", last set refresh rate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    :cond_d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_db} :catch_dc

    .line 581
    :cond_db
    goto :goto_e0

    .line 579
    :catch_dc
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e0
    return-void
.end method

.method public generateGameSDKVrr(Ljava/lang/String;)V
    .registers 4
    .param p1, "currentGameSDKPackageName"    # Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getGameSDKVrrDisabled()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupportedByDevice()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_44

    .line 284
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->checkAndCreateWindowManagerInternal()Z

    move-result v0

    if-nez v0, :cond_18

    .line 285
    return-void

    .line 287
    :cond_18
    monitor-enter p0

    .line 289
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-eqz v0, :cond_1f

    .line 290
    monitor-exit p0

    return-void

    .line 293
    :cond_1f
    new-instance v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;-><init>(Ljava/lang/String;Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    iget v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->setSettingRefreshRateMode(I)Z

    .line 296
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    iget v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->setGosSetting48(I)Z

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->updateSupportedRefreshRates()V

    .line 299
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_41

    throw v0

    .line 282
    :cond_44
    :goto_44
    return-void
.end method

.method public getCurrentRefreshRate(Z)I
    .registers 7
    .param p1, "bSetUsed"    # Z

    .line 191
    const/16 v0, 0x3c

    .line 194
    .local v0, "refreshRate":I
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    or-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->checkAndCreateDefaultDisplay()Z

    move-result v1

    if-nez v1, :cond_15

    .line 197
    const/16 v1, 0x3c

    return v1

    .line 199
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VRR getCurrentRefreshRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    .line 203
    goto :goto_58

    .line 201
    :catch_37
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRefreshRate(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSDKVrrManager"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_58
    return v0
.end method

.method public getSupportedRefreshRates(Z)[I
    .registers 7
    .param p1, "bSetUsed"    # Z

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 210
    const-string v0, "VRR getSupportedRefreshRates"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupported()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 212
    monitor-enter p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_3c

    .line 213
    :try_start_16
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesCopy:[I

    if-eqz v0, :cond_34

    array-length v0, v0

    if-nez v0, :cond_1e

    goto :goto_34

    .line 218
    :cond_1e
    monitor-enter p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_38

    .line 219
    :try_start_1f
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-nez v0, :cond_26

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->updateSupportedRefreshRates()V

    .line 222
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_31

    .line 224
    :try_start_27
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mRefreshRatesCopy:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_38

    return-object v0

    .line 222
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .end local p1    # "bSetUsed":Z
    :try_start_33
    throw v0

    .line 214
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .restart local p1    # "bSetUsed":Z
    :cond_34
    :goto_34
    sget-object v0, Lcom/samsung/android/gamesdk/Const;->mEmptyIntArray:[I

    monitor-exit p0

    return-object v0

    .line 225
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    .end local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .end local p1    # "bSetUsed":Z
    :try_start_3a
    throw v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_3c

    .line 229
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .restart local p1    # "bSetUsed":Z
    :cond_3b
    goto :goto_5d

    .line 227
    :catch_3c
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDKVrrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedRefreshRates(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5d
    sget-object v0, Lcom/samsung/android/gamesdk/Const;->mEmptyIntArray:[I

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameSDKVrrListener"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;

    .line 76
    const-string v0, "game_display_hz_48"

    const-string v1, "refresh_rate_mode"

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupportedByDevice()Z

    move-result v2

    if-nez v2, :cond_b

    .line 77
    return-void

    .line 79
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    .line 81
    :try_start_d
    iput-object p2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrrListener:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->checkAndCreateDefaultDisplay()Z

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->checkAndCreateWindowManagerInternal()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    .line 87
    goto :goto_1f

    .line 84
    :catch_16
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "[FAIL] GameSDKService(): Failed to initialize values"

    invoke-direct {p0, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1f
    new-instance v2, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;-><init>(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)V

    .line 115
    .local v2, "mDisplayListener":Landroid/hardware/display/DisplayManager$DisplayListener;
    :try_start_24
    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 116
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "GameSDKVrrManager"

    const/4 v6, 0x1

    const-string v7, "VRR registerDisplayListener"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40

    .line 121
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    goto :goto_49

    .line 118
    :catch_40
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "[FAIL] GameSDKService(): Failed to bind DisplayManager"

    invoke-direct {p0, v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_49
    new-instance v3, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;-><init>(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Landroid/os/Handler;)V

    .line 150
    .local v3, "mVrrSecureSettingObserver":Landroid/database/ContentObserver;
    :try_start_4f
    iget-object v4, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 151
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 152
    .local v5, "settings":Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, v7

    .line 154
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    const-string v7, "VRR register ContentObserver"

    invoke-direct {p0, v7}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 158
    iget-object v7, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I

    .line 159
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->updateSupportedRefreshRates()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_85} :catch_86

    .line 164
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "settings":Landroid/net/Uri;
    goto :goto_8f

    .line 161
    :catch_86
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[FAIL] GameSDKService(): Failed to get initial VrrSecureSettings"

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

.method public isGameSDKVrrSupported(Z)Z
    .registers 6
    .param p1, "bSetUsed"    # Z

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupportedByDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getDisabledByMultiWindow()Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1a

    if-eqz v0, :cond_17

    goto :goto_18

    .line 182
    :cond_17
    goto :goto_3b

    .line 178
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0

    .line 180
    :catch_1a
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGameSDKVrrSupported(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKVrrManager"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    const/4 v0, 0x1

    return v0
.end method

.method public onFocusedPackagePause(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 4
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 526
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupportedByDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 527
    return-void

    .line 529
    :cond_7
    const-string v0, "VRR onFocusedPackagePause"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 530
    monitor-enter p0

    .line 531
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-eqz v0, :cond_14

    .line 532
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->enableGOSVrrControl()V

    .line 535
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {p1, v0}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->setGameSDKVrr(Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;)V

    .line 536
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->setVrrIsUsed(Z)V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 538
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    monitor-exit p0

    .line 540
    return-void

    .line 539
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public onFocusedPackageResume(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 4
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 544
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupportedByDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 545
    return-void

    .line 547
    :cond_7
    const-string v0, "VRR onFocusedPackageResume"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 548
    monitor-enter p0

    .line 549
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-eqz v0, :cond_14

    .line 550
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->enableGOSVrrControl()V

    .line 552
    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getGameSDKVrr()Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 553
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getVrrIsUsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->needToUpdate()V

    .line 556
    monitor-exit p0

    .line 557
    return-void

    .line 556
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public resetRefreshRate()V
    .registers 5

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    const-string v0, "VRR resetRefreshRate"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V

    .line 247
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRate(I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 250
    goto :goto_32

    .line 248
    :catch_11
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetRefreshRate(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKVrrManager"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public setGameSDKVrrSetUsedTrue()V
    .registers 5

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->needToUpdate()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 341
    goto :goto_2b

    .line 339
    :catch_a
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGameSDKVrrSetUsedTrue(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKVrrManager"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public setRefreshRate(I)Z
    .registers 6
    .param p1, "targetRefreshRate"    # I

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 236
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRateImp(IZ)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 237
    :catch_b
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRefreshRate(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKVrrManager"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-eqz v0, :cond_7

    .line 586
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->enableGOSVrrControl()V

    .line 588
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mGameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 589
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mIsUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 590
    return-void
.end method
