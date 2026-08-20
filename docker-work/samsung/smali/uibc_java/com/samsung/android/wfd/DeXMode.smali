.class public Lcom/samsung/android/wfd/DeXMode;
.super Lcom/samsung/android/wfd/ConnectionMode;
.source "DeXMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/DeXMode$WirelessDeX;
    }
.end annotation


# static fields
.field private static final blacklist DESKTOP_MODE_KEY_UIBC_FINGER_ENABLED:Ljava/lang/String; = "uibc_finger_enabled"

.field private static final blacklist DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist TAG:Ljava/lang/String; = "DeXMode"

.field static blacklist mWirelessDeX:Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# instance fields
.field private blacklist mButtonStateForDeX:I

.field private blacklist mDexSettingObserver:Landroid/database/ContentObserver;

.field private blacklist mDexUibcFingerEnabled:Z

.field private blacklist mDexUibcStartTime:J

.field private blacklist mMouseLeftButtonDownPressed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterDexSettingObserver(Lcom/samsung/android/wfd/DeXMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/wfd/DeXMode;->registerDexSettingObserver()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDESKTOP_MODE_SETTINGS_CONTENT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wfd/DeXMode;->DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    .line 36
    iput v1, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 39
    new-instance v1, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;-><init>(Lcom/samsung/android/wfd/DeXMode;Lcom/samsung/android/wfd/DeXMode$WirelessDeX-IA;)V

    sput-object v1, Lcom/samsung/android/wfd/DeXMode;->mWirelessDeX:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 40
    iput-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/wfd/DeXMode;->setDeXDisplay()V

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mToolType:I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnectionMode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v1}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeXMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private blacklist registerDexSettingObserver()V
    .registers 5

    .line 59
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v0, :cond_24

    .line 60
    new-instance v0, Lcom/samsung/android/wfd/DeXMode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wfd/DeXMode$1;-><init>(Lcom/samsung/android/wfd/DeXMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 83
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/wfd/DeXMode;->DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 84
    const-string v2, "uibc_finger_enabled"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    :cond_24
    return-void
.end method

.method private blacklist setDeXDisplay()V
    .registers 3

    .line 589
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 590
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find External Display ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeXMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_21
    return-void
.end method

.method private blacklist unregisterDexSettingObserver()V
    .registers 3

    .line 91
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_16

    .line 92
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 95
    :cond_16
    return-void
.end method


# virtual methods
.method blacklist closeConnection()V
    .registers 3

    .line 50
    invoke-super {p0}, Lcom/samsung/android/wfd/ConnectionMode;->closeConnection()V

    .line 51
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 52
    const-string v0, "DeXMode"

    const-string v1, "unregisterDexSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/wfd/DeXMode;->unregisterDexSettingObserver()V

    .line 55
    return-void
.end method

.method blacklist convertActionByMotionEvent()Z
    .registers 8

    .line 206
    iget-boolean v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    const-string v1, "Not available action"

    const/4 v2, 0x0

    const-string v3, "DeXMode"

    const/4 v4, 0x1

    if-eqz v0, :cond_9a

    .line 207
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const-string v5, ", index = "

    const-string v6, "Not available index, length = "

    packed-switch v0, :pswitch_data_ec

    .line 242
    :pswitch_13
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v2

    .line 210
    :pswitch_17
    goto/16 :goto_cf

    .line 229
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_cf

    .line 230
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_50

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v2

    .line 235
    :cond_50
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto/16 :goto_cf

    .line 215
    :pswitch_5a
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_cf

    .line 216
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_91

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v2

    .line 221
    :cond_91
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto :goto_cf

    .line 247
    :cond_9a
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_fe

    .line 277
    :pswitch_a0
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v2

    .line 249
    :pswitch_a4
    iget-boolean v0, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    if-eqz v0, :cond_ab

    .line 250
    iput v5, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto :goto_cf

    .line 252
    :cond_ab
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 254
    goto :goto_cf

    .line 268
    :pswitch_af
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_ba

    .line 269
    iput v5, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    goto :goto_cf

    .line 271
    :cond_ba
    iput v4, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 272
    iput-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    .line 274
    goto :goto_cf

    .line 258
    :pswitch_bf
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_ca

    .line 259
    iput v5, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    goto :goto_cf

    .line 261
    :cond_ca
    iput v4, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 262
    iput-boolean v4, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    .line 264
    nop

    .line 283
    :cond_cf
    :goto_cf
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_eb

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pointer Table, Action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_eb
    return v4

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_19
        :pswitch_17
        :pswitch_13
        :pswitch_13
        :pswitch_5a
        :pswitch_19
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_af
        :pswitch_a4
        :pswitch_a0
        :pswitch_a0
        :pswitch_bf
        :pswitch_af
    .end packed-switch
.end method

.method blacklist getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 4

    .line 107
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 108
    .local v0, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    return-object v1
.end method

.method blacklist injectInputKeyEvent()V
    .registers 22

    .line 459
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    const-string v2, "InjectKeyEvent: "

    const-string v3, "DeXMode"

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    if-lez v1, :cond_51

    .line 460
    iget-wide v7, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    iget-wide v9, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    sub-long/2addr v9, v5

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v11, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v12, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    iget v13, v0, Lcom/samsung/android/wfd/DeXMode;->mRepeatCount:I

    iget v14, v0, Lcom/samsung/android/wfd/DeXMode;->mMetaKey:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mEventFlag:I

    const/16 v18, 0x101

    iget v5, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    const/16 v20, 0x0

    move/from16 v17, v1

    move/from16 v19, v5

    invoke-static/range {v7 .. v20}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 472
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 473
    sget-boolean v4, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v4, :cond_50

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_50
    goto :goto_9b

    .line 479
    :cond_51
    iget-wide v7, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    iget-wide v9, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    sub-long/2addr v9, v5

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    iget-object v5, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v11, v5, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    iget v12, v0, Lcom/samsung/android/wfd/DeXMode;->mRepeatCount:I

    iget v13, v0, Lcom/samsung/android/wfd/DeXMode;->mMetaKey:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v5, v0, Lcom/samsung/android/wfd/DeXMode;->mEventFlag:I

    const/16 v16, 0x101

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v5

    move-wide v5, v7

    move-wide v7, v9

    move v9, v1

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v19

    invoke-static/range {v5 .. v18}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 491
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 492
    sget-boolean v4, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v4, :cond_9b

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_9b
    :goto_9b
    return-void
.end method

.method blacklist injectInputScrollEvent()V
    .registers 27

    .line 542
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

    const-string v2, "InjectScrollEvent: "

    const-string v3, "DeXMode"

    const/4 v4, 0x0

    if-eqz v1, :cond_55

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    if-eqz v1, :cond_55

    .line 544
    iget-wide v5, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    iget-wide v7, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    const/16 v9, 0x8

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v12, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 550
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v13

    const/4 v14, 0x0

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3002

    const/16 v21, 0x0

    .line 544
    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 559
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 560
    sget-boolean v4, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v4, :cond_54

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_54
    goto :goto_9d

    .line 565
    :cond_55
    iget-wide v5, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    const-wide/16 v7, 0xa

    sub-long v9, v5, v7

    iget-wide v5, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    sub-long v11, v5, v7

    const/16 v13, 0x8

    const/4 v14, 0x1

    iget-object v15, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2002

    const/high16 v25, 0x8000000

    invoke-static/range {v9 .. v25}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 581
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 582
    sget-boolean v4, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v4, :cond_9d

    .line 583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_9d
    :goto_9d
    return-void
.end method

.method blacklist injectInputTouchEvent()V
    .registers 25

    .line 291
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    if-nez v1, :cond_c

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 295
    :cond_c
    iget-boolean v1, v0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    const-string v2, "InjectTouchEvent: "

    const/4 v3, 0x1

    const-string v4, "DeXMode"

    const/4 v5, 0x0

    if-eqz v1, :cond_5f

    .line 297
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    .line 300
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v13, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    move/from16 v16, v1

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    .line 297
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 313
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    sget-boolean v6, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v6, :cond_56

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_56
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 317
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    goto/16 :goto_21a

    .line 319
    :cond_5f
    sget-boolean v1, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v1, :cond_7b

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FROM DEX SINK TOUCH EVENT!!! : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_7b
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 325
    .local v1, "pointerProp":[Landroid/view/MotionEvent$PointerProperties;
    new-array v13, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 326
    .local v13, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    iget-object v6, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v6, v6

    if-le v6, v3, :cond_91

    .line 327
    iget-object v6, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v3

    aput-object v6, v13, v5

    .line 328
    iget-object v6, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v6, v3

    aput-object v6, v1, v5

    goto :goto_9d

    .line 330
    :cond_91
    iget-object v6, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v5

    aput-object v6, v13, v5

    .line 331
    iget-object v6, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v6, v5

    aput-object v6, v1, v5

    .line 334
    :goto_9d
    iget v6, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const-string v12, "InjectTouchEvent: fakeEvent "

    if-nez v6, :cond_13a

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v11, 0x1

    .line 341
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    iget v3, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    move/from16 v16, v3

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3002

    const/16 v22, 0x0

    .line 335
    move-object v3, v12

    move-object v12, v1

    move-object/from16 v23, v13

    .end local v13    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v23, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v13

    .line 350
    .local v13, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v13, v5}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v10, 0xb

    .line 359
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    iget v12, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    move/from16 v16, v12

    .line 353
    move-object v12, v1

    move-object v5, v13

    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v13, v23

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 368
    .local v6, "fakeEvent":Landroid/view/MotionEvent;
    iget v7, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 369
    sget-boolean v7, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v7, :cond_110

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_110
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 373
    sget-boolean v2, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v2, :cond_130

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_130
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 377
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "fakeEvent":Landroid/view/MotionEvent;
    goto/16 :goto_21a

    .end local v23    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v13, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_13a
    move-object v3, v12

    move-object/from16 v23, v13

    .end local v13    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v23    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    iget v5, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1ca

    .line 379
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v10, 0xc

    const/4 v11, 0x1

    .line 385
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    const/4 v15, 0x0

    iget v5, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    move/from16 v16, v5

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3002

    const/16 v22, 0x0

    .line 379
    move-object v12, v1

    move-object/from16 v13, v23

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 394
    .local v5, "fakeEvent":Landroid/view/MotionEvent;
    iget v6, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 396
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v14, 0x0

    iget v12, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    move/from16 v16, v12

    .line 396
    move-object v12, v1

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 411
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 413
    sget-boolean v7, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v7, :cond_19f

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_19f
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 417
    sget-boolean v3, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v3, :cond_1bf

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1bf
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 421
    iput v3, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 422
    .end local v5    # "fakeEvent":Landroid/view/MotionEvent;
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    goto :goto_21a

    .line 423
    :cond_1ca
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v11, 0x1

    .line 429
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    iget v3, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    move/from16 v16, v3

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3002

    const/16 v22, 0x0

    .line 423
    move-object v12, v1

    move-object/from16 v13, v23

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 438
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    iget v5, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 439
    sget-boolean v5, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v5, :cond_212

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_212
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 446
    .end local v1    # "pointerProp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    .end local v23    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :goto_21a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcStartTime:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xfa0

    cmp-long v1, v1, v5

    if-lez v1, :cond_23e

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcStartTime:J

    .line 448
    sget-boolean v1, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v1, :cond_236

    .line 449
    const-string v1, "Delete mobile cursor"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_236
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    .line 454
    :cond_23e
    return-void
.end method

.method blacklist setScrollPointerCoords()V
    .registers 9

    .line 500
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->scrollBit:I

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    .line 501
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->direction:I

    if-nez v0, :cond_12

    .line 502
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    .line 505
    :cond_12
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 506
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 509
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    const/4 v5, 0x6

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    if-eqz v1, :cond_6c

    .line 511
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget-object v6, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 512
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget-object v6, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v1, v0, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v0, v5, :cond_58

    .line 514
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/16 v1, 0x9

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_de

    .line 516
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v0, v4, :cond_de

    .line 517
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/16 v1, 0xa

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_de

    .line 522
    :cond_6c
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v6, 0x0

    if-ne v1, v5, :cond_85

    .line 523
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 524
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget v6, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v6, v6

    invoke-virtual {v1, v0, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_9c

    .line 525
    :cond_85
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v1, v4, :cond_9c

    .line 526
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget v7, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 527
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 529
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/16 v1, 0x8

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 531
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 532
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 533
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x5

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 537
    :cond_de
    :goto_de
    return-void
.end method

.method blacklist updateDisplayInformation()V
    .registers 3

    .line 100
    const-string v0, "DeXMode"

    const-string v1, "Update Dex Display Information"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/wfd/DeXMode;->updateDisplayValue()V

    .line 103
    return-void
.end method

.method blacklist updateTouchPointerTable()Z
    .registers 10

    .line 116
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointers:I

    const/4 v3, 0x1

    const-string v4, "DeXMode"

    if-ge v0, v2, :cond_25f

    .line 120
    sget-boolean v2, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v2, :cond_61

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input Pointer ID : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", X: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_61
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    const v6, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 125
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 127
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v2, v0}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->updateTouchInput(I)V

    .line 129
    sget-boolean v2, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v2, :cond_c5

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output Pointer ID : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", x: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_c5
    iget-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mIsSamsungMobile:Z

    if-eqz v2, :cond_1f9

    .line 135
    iget-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    const-string v5, "Out of Range Dex screen, Skip Event"

    const/4 v6, 0x0

    if-eqz v2, :cond_1c1

    .line 137
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    cmpg-float v2, v2, v6

    const/4 v7, 0x2

    if-ltz v2, :cond_176

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget v8, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_176

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_176

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget v6, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_106

    goto :goto_176

    .line 151
    :cond_106
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-ne v2, v7, :cond_133

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_133

    .line 153
    const-string v2, "In Range Dex screen, Change to ACTION_DOWN"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput v1, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 155
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v2, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    goto/16 :goto_1f9

    .line 156
    :cond_133
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-nez v2, :cond_156

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 158
    const-string v2, "Skip ACTION_DOWN, Change to ACTION_MOVE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput v7, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto/16 :goto_1f9

    .line 160
    :cond_156
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-ne v2, v3, :cond_1f9

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f9

    .line 162
    const-string v2, "Skip ACTION_UP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v1

    .line 139
    :cond_176
    :goto_176
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-eq v2, v3, :cond_1a3

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v6, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 141
    const-string v2, "Out of Range Dex screen, Change to ACTION_UP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput v3, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 143
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v2, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    goto/16 :goto_25b

    .line 144
    :cond_1a3
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-eq v2, v7, :cond_25b

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25b

    .line 146
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v1

    .line 167
    :cond_1c1
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1f5

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1f5

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1f5

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f9

    .line 169
    :cond_1f5
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1

    .line 176
    :cond_1f9
    :goto_1f9
    new-instance v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v2}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    .line 177
    .local v2, "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 178
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 179
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 181
    sget-boolean v3, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v3, :cond_250

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Put Pointer ID : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", X : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Y : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_250
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget v4, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v2    # "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    :cond_25b
    :goto_25b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 187
    .end local v0    # "i":I
    :cond_25f
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_271

    .line 188
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_270

    .line 189
    const-string v0, "Not available PointerTable"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_270
    return v1

    .line 194
    :cond_271
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

    if-eqz v0, :cond_28c

    .line 195
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_27e

    .line 196
    const-string v0, "Stored touch pointer for scroll in wireless dex"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_27e
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 201
    :cond_28c
    return v3
.end method
