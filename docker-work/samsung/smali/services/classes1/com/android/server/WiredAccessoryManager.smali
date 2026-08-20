.class public final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field public static final BIT_HDMI_AUDIO:I = 0x10

.field public static final BIT_HEADSET:I = 0x1

.field public static final BIT_HEADSET_NO_MIC:I = 0x2

.field public static final BIT_LINEOUT:I = 0x20

.field public static final BIT_USB_HEADSET_ANLG:I = 0x4

.field public static final BIT_USB_HEADSET_DGTL:I = 0x8

.field public static final LOG:Z = false

.field public static final MSG_NEW_DEVICE_STATE:I = 0x1

.field public static final MSG_SHOW_TOAST:I = 0x3

.field public static final MSG_SYSTEM_READY:I = 0x2

.field public static final NAME_CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field public static final NAME_H2W:Ljava/lang/String; = "h2w"

.field public static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field public static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field public static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field public static final SUPPORTED_HEADSETS:I = 0x3f

.field public static final TAG:Ljava/lang/String; = "WiredAccessoryManager"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBikeMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadsetState:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field public mSwitchValues:I

.field public final mUseDevInputEventForAudioJack:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/WiredAccessoryManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBikeMode(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->handleBikeMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicesState(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 8

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 287
    new-instance v1, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "power"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "WiredAccessoryManager"

    .line 110
    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "audio"

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11101f1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 118
    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 119
    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 120
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 122
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz p2, :cond_73

    .line 123
    new-instance p2, Lcom/android/server/WiredAccessoryManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v1}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "isBikeMode"

    .line 131
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_73
    return-void
.end method

.method public static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 628
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 630
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 631
    aget p2, p0, v2

    or-int/2addr p1, p2

    aput p1, p0, v2

    goto :goto_4b

    .line 632
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 633
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 634
    aget p2, p0, v2

    not-int p1, p1

    and-int/2addr p1, p2

    aput p1, p0, v2

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public final handleBikeMode()V
    .registers 6

    .line 641
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 642
    :goto_14
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 644
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 646
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_38

    .line 648
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Earphones is disabled in bike mode"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-eqz v0, :cond_3d

    .line 651
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 652
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3d

    .line 655
    :cond_38
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 656
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    move v2, v0

    .line 659
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v4, "h2w"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-nez v0, :cond_53

    .line 664
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    :cond_53
    return-void
.end method

.method public notifyWiredAccessoryChanged(JII)V
    .registers 6

    .line 177
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 179
    :try_start_3
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int p4, p4

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 p2, p2, 0x54

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_25

    const/4 v0, 0x4

    if-eq p2, v0, :cond_23

    const/16 v0, 0x10

    if-eq p2, v0, :cond_26

    const/16 v0, 0x14

    if-eq p2, v0, :cond_26

    const/16 p3, 0x40

    if-eq p2, p3, :cond_20

    goto :goto_25

    :cond_20
    const/16 p3, 0x20

    goto :goto_26

    :cond_23
    const/4 p3, 0x2

    goto :goto_26

    :cond_25
    :goto_25
    move p3, p4

    :cond_26
    :goto_26
    const-string/jumbo p2, "h2w"

    .line 207
    iget p4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 p4, p4, -0x24

    or-int/2addr p3, p4

    invoke-virtual {p0, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    .line 209
    monitor-exit p1

    return-void

    :catchall_33
    move-exception p0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final onSystemReady()V
    .registers 7

    .line 136
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/16 v4, -0x100

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_14

    move v0, v2

    .line 142
    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1e

    or-int/lit8 v0, v0, 0x10

    .line 146
    :cond_1e
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x6

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_29

    or-int/lit8 v0, v0, 0x40

    :cond_29
    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    .line 149
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 154
    :cond_30
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    return-void
.end method

.method public final setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 8

    and-int/2addr p2, p1

    and-int/2addr p3, p1

    if-eq p2, p3, :cond_58

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    move p2, p3

    goto :goto_b

    :cond_a
    move p2, v0

    :goto_b
    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne p1, p3, :cond_15

    const v0, -0x7ffffff0

    move v1, v2

    goto :goto_30

    :cond_15
    const/4 p3, 0x2

    if-ne p1, p3, :cond_19

    goto :goto_30

    :cond_19
    const/16 p3, 0x20

    if-ne p1, p3, :cond_20

    const/high16 v1, 0x20000

    goto :goto_30

    :cond_20
    if-ne p1, v2, :cond_25

    const/16 v1, 0x800

    goto :goto_30

    :cond_25
    if-ne p1, v1, :cond_2a

    const/16 v1, 0x1000

    goto :goto_30

    :cond_2a
    const/16 p3, 0x10

    if-ne p1, p3, :cond_41

    const/16 v1, 0x400

    :goto_30
    const-string p1, ""

    if-eqz v1, :cond_39

    .line 363
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, v1, p2, p1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    :cond_39
    if-eqz v0, :cond_58

    .line 366
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 353
    :cond_41
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setDeviceState() invalid headset type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method public final setDevicesState(IILjava/lang/String;)V
    .registers 8

    .line 315
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x3f

    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_14

    and-int v3, v2, v1

    if-eqz v3, :cond_11

    .line 319
    :try_start_c
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    not-int v3, v2

    and-int/2addr v1, v3

    :cond_11
    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 323
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final switchCodeToString(II)Ljava/lang/String;
    .registers 4

    .line 372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_12

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_12

    const-string v0, "SW_HEADPHONE_INSERT "

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1f

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1f

    const-string p1, "SW_MICROPHONE_INSERT"

    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public systemReady()V
    .registers 6

    .line 214
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 217
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 218
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final updateLocked(Ljava/lang/String;I)V
    .registers 10

    and-int/lit8 p2, p2, 0x3f

    and-int/lit8 v0, p2, 0x4

    and-int/lit8 v1, p2, 0x8

    and-int/lit8 v2, p2, 0x23

    .line 246
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v3, p2, :cond_14

    .line 247
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "No state change."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/16 v3, 0x23

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_23

    .line 255
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v6, "Invalid combination, unsetting h2w flag"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_24

    :cond_23
    move v3, v4

    :goto_24
    const/4 v6, 0x4

    if-ne v0, v6, :cond_34

    const/16 v0, 0x8

    if-ne v1, v0, :cond_34

    .line 261
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Invalid combination, unsetting usb flag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_35

    :cond_34
    move v0, v4

    :goto_35
    if-nez v3, :cond_42

    if-nez v0, :cond_42

    .line 265
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "invalid transition, returning ..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_42
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 271
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_66

    if-eqz v2, :cond_80

    .line 273
    sget-object p1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v0, "Bike mode is ON. Earphones disabled"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_80

    .line 277
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_6c

    if-nez v2, :cond_80

    .line 278
    :cond_6c
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "MSG_NEW_DEVICE_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v0, v4, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    :cond_80
    :goto_80
    iput p2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return-void
.end method
