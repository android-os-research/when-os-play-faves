.class public Lcom/samsung/android/server/audio/ScreenSharingHelper;
.super Ljava/lang/Object;
.source "ScreenSharingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/ScreenSharingHelper$AppCastDeviceTypes;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.ScreenSharingHelper"

.field public static sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper; = null

.field public static sIsWifiDisplayConnected:Z = false

.field public static sSplitSoundEnabled:Z = false


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/audio/FrequentWorker<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAppCasting:Z

.field public mIsDLNAEnabled:Z

.field public mIsPresentationMode:Z

.field public mIsSupportDisplayVolumeControl:Z

.field public final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field public final mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

.field public mScreenSharingStateResumed:Z

.field public final mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;


# direct methods
.method public static synthetic $r8$lambda$G6-vgZ3bNjdWQQMfcO1wPKDwZd4(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->lambda$tvVolumeShouldBeAdjusted$1(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S4WUwcR9oLGOM5Zig_WvVCUCn_A(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->lambda$tvVolumeShouldBeAdjusted$0(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDLNAEnabled(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSupportDisplayVolumeControl(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaFocusControl(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Lcom/android/server/audio/MediaFocusControl;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenSharingStateResumed(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsPresentationMode(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenSharingStateResumed(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)V
    .registers 5

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 82
    new-instance v1, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    .line 120
    new-instance v1, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    .line 357
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    .line 358
    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "display"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "audio"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    iput-object p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)Lcom/samsung/android/server/audio/ScreenSharingHelper;
    .registers 3

    .line 154
    sget-object v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    if-nez v0, :cond_b

    .line 155
    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;-><init>(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)V

    sput-object v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 157
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    return-object p0
.end method

.method public static isAllowed(Landroid/media/AudioAttributes;)Z
    .registers 2

    .line 161
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isSplitSoundEnabled()Z
    .registers 1

    .line 173
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    return v0
.end method

.method public static isWifiDisplayConnected()Z
    .registers 1

    .line 181
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    return v0
.end method

.method public static synthetic lambda$tvVolumeShouldBeAdjusted$0(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 3

    .line 259
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 260
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static synthetic lambda$tvVolumeShouldBeAdjusted$1(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 3

    .line 264
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 265
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static setSplitSoundEnabled(Z)V
    .registers 1

    .line 177
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    return-void
.end method

.method public static setWifiDisplayConnected(Z)V
    .registers 1

    .line 185
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    return-void
.end method


# virtual methods
.method public checkAndSetSplitSound(ZLandroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 4

    const-string p0, "com.android.server.telecom"

    .line 234
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {p2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isAllowed(Landroid/media/AudioAttributes;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 235
    :cond_e
    sget-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    const/4 p2, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_21

    const/4 p0, 0x3

    .line 236
    invoke-static {p0, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    .line 238
    invoke-static {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    goto :goto_24

    .line 240
    :cond_21
    invoke-static {p2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 242
    :goto_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "l_smart_view_split_sound_enable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method public getLiveCaptionEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "odi_captions_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_f

    move v0, p1

    :cond_f
    return v0
.end method

.method public isAppCasting()Z
    .registers 1

    .line 212
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    return p0
.end method

.method public isDLNAEnabled()Z
    .registers 1

    .line 224
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    return p0
.end method

.method public isScreenSharingStateResumed()Z
    .registers 1

    .line 216
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return p0
.end method

.method public isSupportDisplayVolumeControl()Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    return p0
.end method

.method public registerDeviceStatusListener(Landroid/content/Context;)V
    .registers 5

    .line 316
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    const-string v1, "l_smart_view_enable=true"

    if-eqz v0, :cond_38

    .line 317
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";support_voip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "true"

    goto :goto_31

    :cond_2f
    const-string v1, "false"

    .line 321
    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_38
    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setDLNAEnabled(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    .line 229
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    return-void
.end method

.method public setMirroingPolicyParameter(Z)V
    .registers 3

    .line 348
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    if-eqz v0, :cond_29

    .line 349
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    if-eqz p0, :cond_d

    :cond_c
    const/4 p1, 0x0

    .line 352
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "l_smart_view_mirroring_active="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1d

    const-string/jumbo p1, "true"

    goto :goto_1f

    :cond_1d
    const-string p1, "false"

    .line 353
    :goto_1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public setScreenSharingStateResumed(Z)V
    .registers 2

    .line 220
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return-void
.end method

.method public setSupportDisplayVolumeControl(Z)V
    .registers 3

    .line 193
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSupportDisplayVolumeControl : supportDisplayVolumeControl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.ScreenSharingHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public tvVolumeShouldBeAdjusted(IIILjava/util/Set;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/FrequentWorker;->runOrSkip()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 256
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_ea

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p4}, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    .line 263
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p4}, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p4

    .line 266
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 268
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 269
    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p4

    new-instance v4, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 270
    invoke-virtual {p4, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz v3, :cond_6c

    if-eqz v0, :cond_6c

    if-eq p5, p4, :cond_6c

    move v4, v1

    goto :goto_6d

    :cond_6c
    move v4, v2

    .line 274
    :goto_6d
    iget-object v5, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v5

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tvVolumeShouldBeAdjusted : stream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isDlna="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    .line 276
    invoke-virtual {v7}, Lcom/samsung/android/server/audio/FrequentWorker;->runOrSkip()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mScreenSharingStateResumed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsAppCasting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isLocalPlaying="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRemotePlaying="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", remotePlayingAppUid="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", foregroundUid="

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", localHasFocus="

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", currDeviceType="

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "AS.ScreenSharingHelper"

    .line 275
    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean p4, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    if-nez p4, :cond_e5

    const/16 p4, 0x19

    if-ne v5, p4, :cond_e5

    return v1

    :cond_e5
    if-eqz v0, :cond_e9

    if-eqz v4, :cond_ea

    :cond_e9
    return v2

    .line 298
    :cond_ea
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    if-nez p0, :cond_ef

    return v2

    :cond_ef
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_f4

    return v2

    :cond_f4
    const/4 p0, 0x3

    .line 306
    invoke-static {p0, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p2

    if-eqz p2, :cond_fc

    return v1

    :cond_fc
    const p2, 0x8000

    and-int/2addr p2, p3

    if-eqz p2, :cond_105

    if-ne p1, p0, :cond_105

    goto :goto_106

    :cond_105
    move v1, v2

    :goto_106
    return v1
.end method

.method public unregisterDeviceStatusListener(Landroid/content/Context;)V
    .registers 4

    const-string v0, "l_smart_view_enable=false"

    .line 333
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_smart_view_split_sound_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    .line 339
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateAppCasting(I)V
    .registers 4

    packed-switch p1, :pswitch_data_2e

    goto :goto_b

    :pswitch_4
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    goto :goto_b

    :pswitch_8
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 208
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppCasting : deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsAppCasting="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.ScreenSharingHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_2e
    .packed-switch -0x3ea
        :pswitch_8
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
