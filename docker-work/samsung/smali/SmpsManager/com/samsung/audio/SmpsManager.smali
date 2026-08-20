.class public Lcom/samsung/audio/SmpsManager;
.super Ljava/lang/Object;
.source "SmpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/audio/SmpsManager$SMPSReceiver;
    }
.end annotation


# static fields
.field private static blacklist DEBUG_DEVICE_OPEN_TIME:J = 0x0L

.field private static final blacklist DEBUG_DISPLAY_TIMEINFO:Z

.field public static final blacklist DEFAULT_PENTYPE_BRUSH:I = 0x3

.field public static final blacklist DEFAULT_PENTYPE_ERASER:I = 0x4

.field public static final blacklist DEFAULT_PENTYPE_MARKER:I = 0x2

.field public static final blacklist DEFAULT_PENTYPE_PENCIL:I = 0x1

.field public static final blacklist INVALID_INDEX:I = -0x1

.field private static blacklist IS_TABLET:Z = false

.field private static final blacklist MOTION_TYPE_ATTACK:I = 0x0

.field private static final blacklist MOTION_TYPE_DRAG:I = 0x1

.field private static final blacklist MOTION_TYPE_RELEASE:I = 0x2

.field private static final blacklist OUT_TYPE_EAR:I = 0x2

.field private static final blacklist OUT_TYPE_SPK:I = 0x1

.field private static final blacklist PEN_FEEDBACK_SOUND:Ljava/lang/String; = "spen_feedback_sound"

.field private static blacklist SMPS_GAIN_EAR:D = 0.0

.field private static blacklist SMPS_GAIN_PHONE:D = 0.0

.field private static blacklist SMPS_GAIN_SPK:D = 0.0

.field private static blacklist SMPS_GAIN_TABLET:D = 0.0

.field private static blacklist SMPS_VOL_MAX_EAR:D = 0.0

.field private static blacklist SMPS_VOL_MAX_SPK:D = 0.0

.field private static blacklist SMPS_VOL_MIN_EAR:D = 0.0

.field private static blacklist SMPS_VOL_MIN_SPK:D = 0.0

.field private static final blacklist STREAM_TYPE:I = 0x1

.field private static blacklist STREAM_TYPE_VOL_MAX:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SmpsManagerV2(FT)"

.field public static final greylist isSupport:Z

.field private static final blacklist mDefaultSourcePath:Ljava/lang/String; = "/system/media/audio/pensounds/"


# instance fields
.field private blacklist mActivePen:I

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mBrushIdx:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentVolume:I

.field private blacklist mDisplayHeight:I

.field private blacklist mDisplayWidth:I

.field private blacklist mEnableInSettingMenu:Z

.field private blacklist mEraserIdx:I

.field private blacklist mFastTrackVolTableEAR:[D

.field private blacklist mFastTrackVolTableSPK:[D

.field private blacklist mIsMuted:Z

.field private blacklist mIsRunning:Z

.field private blacklist mMarkerIdx:I

.field private blacklist mOutType:I

.field private blacklist mPencilIdx:I

.field private blacklist mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

.field private blacklist mSmpsFT:Lcom/samsung/audio/Smps;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnableInSettingMenu(Lcom/samsung/audio/SmpsManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmpsFT(Lcom/samsung/audio/SmpsManager;)Lcom/samsung/audio/Smps;
    .registers 1

    iget-object p0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSmpsAvailable(Lcom/samsung/audio/SmpsManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetOutType(Lcom/samsung/audio/SmpsManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->setOutType(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 79
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    sput-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    .line 83
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/audio/SmpsManager;->DEBUG_DISPLAY_TIMEINFO:Z

    .line 84
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->DEBUG_DEVICE_OPEN_TIME:J

    .line 94
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_EAR:D

    .line 95
    const-wide v0, 0x3fc999999999999aL    # 0.2

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_EAR:D

    .line 96
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 97
    const-wide v0, 0x3fee666666666666L    # 0.95

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    .line 98
    const-string v0, "ro.smps.gain.phone"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_PHONE:D

    .line 99
    const-string v0, "ro.smps.gain.tablet"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_TABLET:D

    .line 100
    const-string v0, "ro.smps.gain.spk"

    const-string v2, "1.4"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    .line 101
    const-string v0, "ro.smps.gain.ear"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_EAR:D

    .line 102
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/audio/SmpsManager;->IS_TABLET:Z

    .line 111
    const/16 v0, 0xf

    sput v0, Lcom/samsung/audio/SmpsManager;->STREAM_TYPE_VOL_MAX:I

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v0, 0x14

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    .line 106
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 117
    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 118
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    .line 121
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 122
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    .line 124
    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    .line 126
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    .line 127
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    .line 128
    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I

    .line 132
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    .line 134
    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mCurrentVolume:I

    .line 144
    sget-boolean v1, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-nez v1, :cond_38

    .line 145
    return-void

    .line 147
    :cond_38
    sget-boolean v1, Lcom/samsung/audio/SmpsManager;->DEBUG_DISPLAY_TIMEINFO:Z

    if-eqz v1, :cond_42

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/audio/SmpsManager;->DEBUG_DEVICE_OPEN_TIME:J

    .line 151
    :cond_42
    if-nez p1, :cond_45

    .line 152
    return-void

    .line 154
    :cond_45
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->initParameter(Landroid/content/Context;)V

    .line 155
    const v1, 0xbb80

    invoke-direct {p0, v1, v0}, Lcom/samsung/audio/SmpsManager;->openSmps(II)Z

    move-result v0

    const-string v1, "SmpsManagerV2(FT)"

    if-eqz v0, :cond_61

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->registerReceiver(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->registerDefaultPensounds()V

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->checkSettingSPen(Landroid/content/Context;)V

    .line 159
    const-string v0, "SmpsManager openSmps is finished."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_61
    const-string v0, "SmpsManager is created"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private blacklist checkSettingSPen(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    .line 215
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_1f

    .line 216
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_1a

    .line 217
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    goto :goto_1f

    .line 219
    :cond_1a
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    .line 222
    :cond_1f
    :goto_1f
    return-void
.end method

.method private blacklist closeSmps()V
    .registers 3

    .line 512
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_1e

    .line 513
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    if-eqz v0, :cond_1e

    .line 514
    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->deinit()I

    move-result v0

    const-string v1, "SmpsManagerV2(FT)"

    if-eqz v0, :cond_16

    .line 515
    const-string v0, "Smps.deinit() is failed!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 518
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 519
    const-string v0, "Smps is deinitialized()!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 524
    return-void
.end method

.method private blacklist createAudioOut(IIZ)Z
    .registers 9
    .param p1, "Hz"    # I
    .param p2, "Ch"    # I
    .param p3, "panningEnable"    # Z

    .line 478
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    const/4 v1, 0x0

    const-string v2, "SmpsManagerV2(FT)"

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-eqz v0, :cond_38

    .line 479
    new-instance v0, Lcom/samsung/audio/Smps;

    invoke-direct {v0}, Lcom/samsung/audio/Smps;-><init>()V

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 480
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 481
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    iget v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    iget v4, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/samsung/audio/Smps;->init(IIII)I

    move-result v0

    if-nez v0, :cond_38

    .line 482
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    iget-object v1, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    iget-object v2, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    invoke-virtual {v0, v1, v2}, Lcom/samsung/audio/Smps;->get_VolTable([D[D)V

    .line 483
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V

    .line 484
    const/4 v0, 0x1

    return v0

    .line 487
    :cond_32
    const-string v0, "SmpsManager createAudioOut : isSmpsAvailable is failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v1

    .line 491
    :cond_38
    const-string v0, "SmpsManager createAudioOut() is failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v1
.end method

.method private blacklist cvrtPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 464
    const-string v0, "/storage/"

    const-string v1, "/mnt/shell/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist generatePenSound(DDJFI)V
    .registers 22
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "time"    # J
    .param p7, "pressure"    # F
    .param p8, "SMPS_MOTION_TYPE"    # I

    .line 557
    move-object v0, p0

    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateAudioDevice()V

    .line 558
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    if-nez v1, :cond_27

    iget-boolean v1, v0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    if-eqz v1, :cond_27

    .line 559
    iget-object v2, v0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    move-wide v9, p1

    double-to-float v3, v9

    move-wide/from16 v11, p3

    double-to-float v4, v11

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/audio/Smps;->gen_tofasttrack(FFJFI)I

    goto :goto_2a

    .line 558
    :cond_27
    move-wide v9, p1

    move-wide/from16 v11, p3

    .line 561
    :goto_2a
    return-void
.end method

.method private blacklist initParameter(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 407
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-nez v0, :cond_5

    .line 408
    return-void

    .line 411
    :cond_5
    const/4 v0, 0x0

    const-string v1, "SmpsManagerV2(FT)"

    if-eqz p1, :cond_cb

    .line 412
    iput-object p1, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 414
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    if-eqz v2, :cond_bf

    .line 415
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 416
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 424
    .end local v2    # "resources":Landroid/content/res/Resources;
    nop

    .line 430
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 431
    if-eqz v2, :cond_b1

    .line 432
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sput v0, Lcom/samsung/audio/SmpsManager;->STREAM_TYPE_VOL_MAX:I

    .line 442
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->IS_TABLET:Z

    const-string v2, ")"

    const-wide v3, 0x3fc999999999999aL    # 0.2

    if-eqz v0, :cond_75

    .line 443
    const-wide v5, 0x3fc428f5c28f5c29L    # 0.1575

    sget-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_TABLET:D

    mul-double/2addr v5, v7

    sget-wide v9, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    mul-double/2addr v5, v9

    sput-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    .line 444
    const-wide v5, 0x3fa1eb851eb851ecL    # 0.035

    mul-double/2addr v7, v5

    mul-double/2addr v7, v9

    sput-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmpsAudioManager SMPS_VOL_MAX_SPK(Tablet : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 447
    :cond_75
    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_PHONE:D

    mul-double v7, v5, v3

    sget-wide v9, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    mul-double/2addr v7, v9

    sput-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    .line 448
    const-wide v7, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    sput-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmpsAudioManager SMPS_VOL_MAX_SPK(Phone : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_a3
    sget-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_EAR:D

    mul-double/2addr v3, v0

    sput-wide v3, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_EAR:D

    .line 452
    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_EAR:D

    .line 453
    return-void

    .line 434
    :cond_b1
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 435
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 436
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 437
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 438
    const-string v0, "initParameter : mAudioManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 418
    .restart local v2    # "resources":Landroid/content/res/Resources;
    :cond_bf
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 419
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 420
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 421
    const-string v0, "initParameter : resources is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 425
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_cb
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 426
    const-string v0, "initParameter : context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method private blacklist isEnableSettingMenu(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 660
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spen_feedback_sound"

    invoke-static {v1, v2, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "SmpsManagerV2(FT)"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    .line 662
    const-string v0, "SPen Menu(writing sound:ON)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return v3

    .line 665
    :cond_18
    const-string v1, "SPen Menu(writing sound:OFF)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1d
    return v0
.end method

.method private blacklist isExist(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "ret":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/shell/"

    const-string v3, "/storage/"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 471
    const/4 v0, 0x1

    .line 473
    :cond_15
    const/4 v1, 0x0

    .line 474
    return v0
.end method

.method private blacklist isSmpsAvailable()Z
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-eqz v0, :cond_a

    .line 457
    const/4 v0, 0x1

    return v0

    .line 459
    :cond_a
    const-string v0, "SmpsManagerV2(FT)"

    const-string v1, "isSmpsAvailable is failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist openSmps(II)Z
    .registers 7
    .param p1, "Hz"    # I
    .param p2, "Ch"    # I

    .line 496
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    const/4 v1, 0x1

    const-string v2, "SmpsManagerV2(FT)"

    if-eqz v0, :cond_d

    .line 497
    const-string v0, "openSmps: Already opened.."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v1

    .line 501
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/audio/SmpsManager;->createAudioOut(IIZ)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 502
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    goto :goto_1e

    .line 504
    :cond_17
    const-string v1, "openSmps: createAudioOut is failed."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iput-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 508
    :goto_1e
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    return v0
.end method

.method private blacklist registerDefaultPensounds()V
    .registers 13

    .line 196
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_9b

    .line 197
    const/4 v0, 0x0

    const-string v1, "/system/media/audio/pensounds/smpsdata1.dat"

    invoke-virtual {p0, v0, v1, v0}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    .line 198
    const-string v1, "/system/media/audio/pensounds/smpsdata3.dat"

    invoke-virtual {p0, v0, v1, v0}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    .line 199
    const-string v1, "/system/media/audio/pensounds/smpsdata2.dat"

    invoke-virtual {p0, v0, v1, v0}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    .line 200
    const-string v1, "/system/media/audio/pensounds/smpsdatae1.dat"

    invoke-virtual {p0, v1, v1, v0}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    .line 201
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 202
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 203
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    const-wide v4, 0x3fd999999999999aL    # 0.4

    const-wide v8, 0x3fd999999999999aL    # 0.4

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 204
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    const-wide v4, 0x3fe999999999999aL    # 0.8

    const-wide v6, 0x3fd999999999999aL    # 0.4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 205
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    invoke-virtual {p0, v0}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    .line 206
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V

    .line 207
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->DEBUG_DISPLAY_TIMEINFO:Z

    if-eqz v0, :cond_9b

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmpsFT initialization takes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/audio/SmpsManager;->DEBUG_DEVICE_OPEN_TIME:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmpsManagerV2(FT)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_9b
    return-void
.end method

.method private blacklist registerReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 606
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    if-nez v0, :cond_27

    if-eqz p1, :cond_27

    .line 607
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 608
    .local v0, "filter":Landroid/content/IntentFilter;
    nop

    .line 609
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    new-instance v1, Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/audio/SmpsManager$SMPSReceiver;-><init>(Lcom/samsung/audio/SmpsManager;Lcom/samsung/audio/SmpsManager$SMPSReceiver-IA;)V

    iput-object v1, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 614
    nop

    .line 615
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 618
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_27
    return-void
.end method

.method private blacklist setMute(Z)V
    .registers 4
    .param p1, "bMute"    # Z

    .line 599
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    if-eq v0, p1, :cond_24

    .line 600
    iput-boolean p1, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmpsManagerV2(FT)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_24
    return-void
.end method

.method private blacklist setOutType(I)V
    .registers 4
    .param p1, "SMPS_OUT_TYPE"    # I

    .line 527
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_a

    .line 531
    :cond_7
    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    goto :goto_10

    .line 528
    :cond_a
    :goto_a
    iput p1, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/audio/SmpsManager;->setMute(Z)V

    .line 533
    :goto_10
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V

    .line 534
    return-void
.end method

.method private blacklist setTuneset(IDDDDD)Z
    .registers 36
    .param p1, "index"    # I
    .param p2, "wgain"    # D
    .param p4, "pgain"    # D
    .param p6, "avol"    # D
    .param p8, "dvol"    # D
    .param p10, "rvol"    # D

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const/4 v11, 0x0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move/from16 v3, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v18, p6

    move-wide/from16 v20, p8

    move-wide/from16 v22, p10

    invoke-virtual/range {v2 .. v23}, Lcom/samsung/audio/Smps;->set_tuneset(IDDIDIDDDDDD)I

    move-result v2

    if-eqz v2, :cond_28

    .line 227
    return v1

    .line 232
    :cond_28
    const/4 v1, 0x1

    return v1

    .line 230
    :cond_2a
    move-object/from16 v0, p0

    return v1
.end method

.method private blacklist unregisterReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 621
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    if-eqz v0, :cond_24

    .line 623
    :try_start_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_8

    .line 626
    goto :goto_21

    .line 624
    :catch_8
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver not registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmpsManagerV2(FT)"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 629
    :cond_24
    return-void
.end method

.method private blacklist updateAudioDevice()V
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 538
    .local v0, "currentAudioDevice":Landroid/media/AudioDeviceInfo;
    if-eqz v0, :cond_28

    .line 539
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    .line 540
    .local v1, "deviceType":I
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_25

    .line 541
    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    const/4 v2, 0x4

    if-eq v1, v2, :cond_20

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1c

    goto :goto_20

    .line 547
    :cond_1c
    invoke-direct {p0, v3}, Lcom/samsung/audio/SmpsManager;->setOutType(I)V

    goto :goto_28

    .line 544
    :cond_20
    :goto_20
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/audio/SmpsManager;->setOutType(I)V

    goto :goto_28

    .line 551
    :cond_25
    invoke-direct {p0, v3}, Lcom/samsung/audio/SmpsManager;->setMute(Z)V

    .line 554
    .end local v1    # "deviceType":I
    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist updateVolume()V
    .registers 15

    .line 564
    const-wide/16 v0, 0x0

    .local v0, "vol":D
    const-wide/16 v2, 0x0

    .local v2, "vol_min":D
    const-wide/16 v4, 0x0

    .line 565
    .local v4, "vol_max":D
    const/4 v6, 0x0

    .line 566
    .local v6, "isupdate":I
    iget v7, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v9, :cond_12

    .line 567
    sget-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 568
    sget-wide v4, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    goto :goto_18

    .line 569
    :cond_12
    if-ne v7, v8, :cond_18

    .line 570
    sget-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_EAR:D

    .line 571
    sget-wide v4, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_EAR:D

    .line 574
    :cond_18
    :goto_18
    iget-object v7, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_4b

    .line 575
    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 576
    .local v7, "currentVolume":I
    iget v10, p0, Lcom/samsung/audio/SmpsManager;->mCurrentVolume:I

    if-eq v10, v7, :cond_4b

    .line 578
    const/4 v6, 0x1

    .line 579
    iput v7, p0, Lcom/samsung/audio/SmpsManager;->mCurrentVolume:I

    .line 580
    if-nez v7, :cond_2c

    .line 581
    const-wide/16 v0, 0x0

    goto :goto_4b

    .line 583
    :cond_2c
    sub-double v10, v4, v2

    int-to-double v12, v7

    mul-double/2addr v10, v12

    sget v12, Lcom/samsung/audio/SmpsManager;->STREAM_TYPE_VOL_MAX:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    add-double v0, v2, v10

    .line 584
    iget v10, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    if-ne v10, v9, :cond_42

    iget-object v11, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    if-eqz v11, :cond_42

    .line 585
    aget-wide v10, v11, v7

    mul-double/2addr v0, v10

    goto :goto_4b

    .line 586
    :cond_42
    if-ne v10, v8, :cond_4b

    iget-object v8, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    if-eqz v8, :cond_4b

    .line 587
    aget-wide v10, v8, v7

    mul-double/2addr v0, v10

    .line 593
    .end local v7    # "currentVolume":I
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v7

    if-eqz v7, :cond_58

    if-ne v6, v9, :cond_58

    .line 594
    iget-object v7, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v7, v0, v1}, Lcom/samsung/audio/Smps;->set_volume(D)I

    .line 596
    :cond_58
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "attackfilepath"    # Ljava/lang/String;
    .param p2, "dragfilepath"    # Ljava/lang/String;
    .param p3, "releasefilepath"    # Ljava/lang/String;

    monitor-enter p0

    .line 317
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_3b

    .line 318
    const-string v0, "NONE"

    .local v0, "stra":Ljava/lang/String;
    const-string v2, "NONE"

    .local v2, "strd":Ljava/lang/String;
    const-string v3, "NONE"

    .line 319
    .local v3, "strr":Ljava/lang/String;
    if-eqz p1, :cond_19

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->cvrtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 323
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_19
    if-eqz p2, :cond_26

    invoke-direct {p0, p2}, Lcom/samsung/audio/SmpsManager;->isExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 324
    invoke-direct {p0, p2}, Lcom/samsung/audio/SmpsManager;->cvrtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 327
    :cond_26
    if-eqz p3, :cond_2d

    .line 328
    invoke-direct {p0, p3}, Lcom/samsung/audio/SmpsManager;->cvrtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 331
    :cond_2d
    iget-object v4, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v4, v0, v2, v3}, Lcom/samsung/audio/Smps;->reg_src_byfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3d

    .line 332
    .local v4, "ret":I
    const/4 v5, -0x3

    if-eq v4, v5, :cond_38

    .line 333
    monitor-exit p0

    return v4

    .line 335
    .end local v0    # "stra":Ljava/lang/String;
    .end local v2    # "strd":Ljava/lang/String;
    .end local v3    # "strr":Ljava/lang/String;
    .end local v4    # "ret":I
    .restart local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_38
    nop

    .line 338
    monitor-exit p0

    return v1

    .line 336
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_3b
    monitor-exit p0

    return v1

    .line 316
    .end local p1    # "attackfilepath":Ljava/lang/String;
    .end local p2    # "dragfilepath":Ljava/lang/String;
    .end local p3    # "releasefilepath":Ljava/lang/String;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist generateSound(Landroid/view/MotionEvent;)V
    .registers 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    monitor-enter p0

    .line 370
    if-nez v0, :cond_7

    .line 371
    monitor-exit p0

    return-void

    .line 374
    :cond_7
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_70

    if-nez v1, :cond_f

    .line 375
    monitor-exit p0

    return-void

    .line 378
    :cond_f
    const/4 v1, -0x1

    .line 379
    .local v1, "SMPS_MOTION_TYPE":I
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v15, v2, 0xff

    .line 380
    .local v15, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v13, v2, 0x8

    .line 381
    .local v13, "pointerIndex":I
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move v14, v2

    .line 382
    .local v14, "x":F
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move v11, v2

    .line 383
    .local v11, "y":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 384
    .local v17, "p":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 386
    .local v6, "t":J
    packed-switch v15, :pswitch_data_74

    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :pswitch_33
    move v4, v11

    move v2, v13

    move v3, v14

    move v5, v15

    .end local v11    # "y":F
    .end local v13    # "pointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "action":I
    .local v2, "pointerIndex":I
    .local v3, "x":F
    .local v4, "y":F
    .local v5, "action":I
    goto :goto_6e

    .line 388
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "action":I
    .restart local v11    # "y":F
    .restart local v13    # "pointerIndex":I
    .restart local v14    # "x":F
    .restart local v15    # "action":I
    .restart local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :pswitch_38
    const/4 v10, 0x1

    .line 389
    .end local v1    # "SMPS_MOTION_TYPE":I
    .local v10, "SMPS_MOTION_TYPE":I
    float-to-double v2, v14

    float-to-double v4, v11

    move-object/from16 v1, p0

    move/from16 v8, v17

    move v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/audio/SmpsManager;->generatePenSound(DDJFI)V

    .line 390
    move v1, v10

    move v4, v11

    move v2, v13

    move v3, v14

    move v5, v15

    goto :goto_6e

    .line 398
    .end local v10    # "SMPS_MOTION_TYPE":I
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    .restart local v1    # "SMPS_MOTION_TYPE":I
    :pswitch_49
    const/4 v1, 0x2

    .line 399
    float-to-double v9, v14

    float-to-double v2, v11

    move-object/from16 v8, p0

    move v4, v11

    .end local v11    # "y":F
    .restart local v4    # "y":F
    move-wide v11, v2

    move v2, v13

    move v3, v14

    .end local v13    # "pointerIndex":I
    .end local v14    # "x":F
    .restart local v2    # "pointerIndex":I
    .restart local v3    # "x":F
    move-wide v13, v6

    move v5, v15

    .end local v15    # "action":I
    .restart local v5    # "action":I
    move/from16 v15, v17

    move/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lcom/samsung/audio/SmpsManager;->generatePenSound(DDJFI)V

    .line 400
    goto :goto_6e

    .line 393
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "action":I
    .restart local v11    # "y":F
    .restart local v13    # "pointerIndex":I
    .restart local v14    # "x":F
    .restart local v15    # "action":I
    :pswitch_5c
    move v4, v11

    move v2, v13

    move v3, v14

    move v5, v15

    .end local v11    # "y":F
    .end local v13    # "pointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "action":I
    .restart local v2    # "pointerIndex":I
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    .restart local v5    # "action":I
    const/4 v1, 0x0

    .line 394
    float-to-double v9, v3

    float-to-double v11, v4

    move-object/from16 v8, p0

    move-wide v13, v6

    move/from16 v15, v17

    move/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lcom/samsung/audio/SmpsManager;->generatePenSound(DDJFI)V
    :try_end_6d
    .catchall {:try_start_10 .. :try_end_6d} :catchall_70

    .line 395
    nop

    .line 404
    :goto_6e
    monitor-exit p0

    return-void

    .line 369
    .end local v1    # "SMPS_MOTION_TYPE":I
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "action":I
    .end local v6    # "t":J
    .end local v17    # "p":F
    .end local p1    # "event":Landroid/view/MotionEvent;
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_49
        :pswitch_38
        :pswitch_33
        :pswitch_33
        :pswitch_5c
        :pswitch_49
    .end packed-switch
.end method

.method public declared-synchronized greylist getActivePen()I
    .registers 2

    monitor-enter p0

    .line 261
    :try_start_1
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 261
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getLibraryVersion()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "1.0"

    .line 35
    .local v0, "version":Ljava/lang/String;
    return-object v0
.end method

.method public declared-synchronized greylist getPenIndex(I)I
    .registers 4
    .param p1, "DEFAULT_PEN_TYPE"    # I

    monitor-enter p0

    .line 277
    :try_start_1
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 278
    monitor-exit p0

    return v1

    .line 281
    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 282
    :try_start_b
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_2e

    if-eq v0, v1, :cond_2c

    .line 283
    monitor-exit p0

    return v0

    .line 285
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 286
    :try_start_14
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_2e

    if-eq v0, v1, :cond_2c

    .line 287
    monitor-exit p0

    return v0

    .line 289
    :cond_1a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    .line 290
    :try_start_1d
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2e

    if-eq v0, v1, :cond_2c

    .line 291
    monitor-exit p0

    return v0

    .line 293
    :cond_23
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2c

    .line 294
    :try_start_26
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2e

    if-eq v0, v1, :cond_2c

    .line 295
    monitor-exit p0

    return v0

    .line 298
    :cond_2c
    monitor-exit p0

    return v1

    .line 276
    .end local p1    # "DEFAULT_PEN_TYPE":I
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist onDestroy()V
    .registers 4

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 172
    invoke-direct {p0, v0}, Lcom/samsung/audio/SmpsManager;->unregisterReceiver(Landroid/content/Context;)V

    .line 175
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 176
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->closeSmps()V

    .line 177
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 180
    :cond_12
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 181
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 184
    :cond_19
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 185
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    .line 186
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I

    .line 188
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    .line 189
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 190
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    .line 191
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    .line 192
    const-string v0, "SmpsManagerV2(FT)"

    const-string v1, "SmpsManager onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 193
    monitor-exit p0

    return-void

    .line 170
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist setActivePen(I)Z
    .registers 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 350
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    if-lez p1, :cond_1b

    .line 351
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0, p1}, Lcom/samsung/audio/Smps;->set_src(I)I

    move-result v0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_19

    .line 352
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    .line 353
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 358
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_19
    monitor-exit p0

    return v1

    .line 356
    :cond_1b
    monitor-exit p0

    return v1

    .line 349
    .end local p1    # "index":I
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist setThickness(D)Z
    .registers 5
    .param p1, "value"    # D

    monitor-enter p0

    .line 244
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 245
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/audio/Smps;->set_thickness(D)I

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    if-eqz v0, :cond_12

    .line 246
    monitor-exit p0

    return v1

    .line 251
    :cond_12
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 249
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_15
    monitor-exit p0

    return v1

    .line 243
    .end local p1    # "value":D
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method
