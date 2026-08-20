.class public final Lcom/android/server/audio/PlaybackActivityMonitor;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$FadeOutEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    }
.end annotation


# static fields
.field public static final ACTIVE_CHECK_PLAYER_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final DUCK_ID:Landroid/media/VolumeShaper$Configuration;

.field public static final DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final FLAGS_FOR_SILENCE_OVERRIDE:I = 0xc0

.field public static final MSG_L_TIMEOUT_MUTE_AWAIT_CONNECTION:I = 0x1

.field public static final MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field public static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.PlaybackActivityMonitor"

.field public static final TAGS_TO_NOT_MUTE_IN_CALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDUCKABLE_PLAYER_TYPES:[I

.field public static final UNMUTE_DURATION_MS:J = 0x64L

.field public static final VOLUME_SHAPER_SYSTEM_DUCK_ID:I = 0x1

.field public static final VOLUME_SHAPER_SYSTEM_FADEOUT_ID:I = 0x2

.field public static final VOLUME_SHAPER_SYSTEM_MUTE_AWAIT_CONNECTION_ID:I = 0x3

.field public static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;

.field public static final sEventLoggerSoundPool:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field public final mAllowedCapturePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioHandler:Landroid/os/Handler;

.field public final mBannedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

.field public mEventHandler:Landroid/os/Handler;

.field public mEventThread:Landroid/os/HandlerThread;

.field public final mFadingManager:Lcom/android/server/audio/FadeOutManager;

.field public final mMaxAlarmVolume:I

.field public final mMuteAwaitConnectionTimeoutCb:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public final mMutedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMutedUsagesAwaitingConnection:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation
.end field

.field public final mNotifierSoundAliveForDVFS:Lcom/samsung/android/server/audio/FrequentWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/audio/FrequentWorker<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlayerLock:Ljava/lang/Object;

.field public final mPlayers:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public mPrivilegedAlarmActiveCount:I

.field public mSavedAlarmVolume:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMuteAwaitConnectionTimeoutCb(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMuteAwaitConnectionTimeoutCb:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlayerLock(Lcom/android/server/audio/PlaybackActivityMonitor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$munmutePlayersExpectingDevice(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->unmutePlayersExpectingDevice()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDUCK_ID()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDUCK_VSHAPE()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPLAY_CREATE_IF_NEEDED()Landroid/media/VolumeShaper$Operation;
    .registers 1

    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPLAY_SKIP_RAMP()Landroid/media/VolumeShaper$Operation;
    .registers 1

    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 7

    .line 76
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_d0

    new-array v4, v2, [F

    fill-array-data v4, :array_d8

    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x5

    .line 84
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    const/4 v4, 0x3

    .line 82
    invoke-static {v4, v3}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 87
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 89
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v3, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v3}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 91
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 95
    new-instance v3, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v3}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 97
    invoke-virtual {v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_e0

    new-array v5, v2, [F

    fill-array-data v5, :array_e8

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v3

    const-wide/16 v4, 0x64

    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v3

    sput-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    new-array v3, v2, [I

    .line 107
    fill-array-data v3, :array_f0

    sput-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    .line 113
    new-instance v3, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v3, v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {v3, v0}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 1245
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v3, 0x64

    const-string/jumbo v4, "playback activity as reported through PlayerBase"

    invoke-direct {v0, v3, v4}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 1443
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v3, 0x32

    const-string v4, "SoundPool playback activity. It displays only start event"

    invoke-direct {v0, v3, v4}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLoggerSoundPool:Lcom/android/server/audio/AudioEventLogger;

    .line 1475
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->TAGS_TO_NOT_MUTE_IN_CALL:Ljava/util/Set;

    const-string v3, "AUDIO_STREAM_RING"

    .line 1477
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "NO_MUTE_IN_CALL"

    .line 1478
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1481
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->ACTIVE_CHECK_PLAYER_TYPES:Ljava/util/Set;

    .line 1483
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :array_d0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d8
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_e0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_f0
    .array-data 4
        0xd
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 629
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 759
    new-instance v0, Lcom/android/server/audio/FadeOutManager;

    invoke-direct {v0}, Lcom/android/server/audio/FadeOutManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 1284
    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 1389
    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    .line 1395
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/PlaybackActivityMonitor$2;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mNotifierSoundAliveForDVFS:Lcom/samsung/android/server/audio/FrequentWorker;

    .line 131
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 132
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 133
    sput-object p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 134
    sput-object p0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    .line 135
    iput-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMuteAwaitConnectionTimeoutCb:Ljava/util/function/Consumer;

    .line 136
    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->initEventHandler()V

    return-void
.end method

.method public static checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_2b

    .line 567
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p1

    if-eq p1, p2, :cond_2b

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forbidden operation from uid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for player "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioService.PlaybackActivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 617
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 618
    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object p0
.end method

.method public cancelMuteAwaitConnection(Ljava/lang/String;)V
    .registers 5

    .line 1266
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelMuteAwaitConnection() from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/AudioEventLogger;->loglogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1269
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->unmutePlayersExpectingDevice()V

    .line 1272
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z
    .registers 8

    const-string p0, " uid:"

    const-string v0, "AudioService.PlaybackActivityMonitor"

    .line 169
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    if-ne v1, p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_50

    .line 171
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v2

    .line 173
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "banning player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/PlayerProxy;->pause()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_35

    goto :goto_50

    :catch_35
    move-exception p1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error banning player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    return v1
.end method

.method public final checkMuteStrategy(Landroid/media/AudioPlaybackConfiguration;Z)Z
    .registers 6

    .line 1488
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1489
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->TAGS_TO_NOT_MUTE_IN_CALL:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1498
    :cond_22
    sget-object p0, Lcom/android/server/audio/PlaybackActivityMonitor;->ACTIVE_CHECK_PLAYER_TYPES:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p0

    if-nez p0, :cond_39

    return v1

    :cond_39
    return p2
.end method

.method public final checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V
    .registers 9

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x2

    if-eq p2, v0, :cond_d

    .line 271
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_70

    .line 272
    :cond_d
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    const/16 v2, 0xc0

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_70

    .line 274
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_70

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    .line 275
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_70

    if-ne p2, v0, :cond_53

    .line 279
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-eq v1, v0, :cond_53

    .line 280
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez p1, :cond_70

    .line 281
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 283
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    invoke-static {v2, p0, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_70

    :cond_53
    if-eq p2, v0, :cond_70

    .line 287
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result p1

    if-ne p1, v0, :cond_70

    .line 288
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez p1, :cond_70

    .line 289
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result p1

    iget p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    if-ne p1, p2, :cond_70

    .line 292
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    invoke-static {v2, p0, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    :cond_70
    :goto_70
    return-void
.end method

.method public disableAudioForUid(ZI)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_18

    if-nez p1, :cond_3e

    .line 151
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    :cond_18
    if-eqz p1, :cond_3e

    .line 156
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 157
    invoke-virtual {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    goto :goto_24

    .line 162
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final dispatchPlaybackChange(Z)V
    .registers 7

    .line 584
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 586
    monitor-exit v0

    return-void

    .line 588
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_48

    .line 591
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 592
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 595
    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->reachedMaxErrorCount()Z

    move-result v4

    if-nez v4, :cond_20

    .line 596
    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->isPrivileged()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 597
    invoke-virtual {v3, v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    goto :goto_20

    :cond_3c
    if-nez v2, :cond_42

    .line 601
    invoke-virtual {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_42
    const/4 v4, 0x0

    .line 605
    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    goto :goto_20

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 589
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 12

    .line 638
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 640
    monitor-exit v0

    return v2

    .line 644
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 647
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 649
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 650
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 651
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1d

    const/4 v5, 0x0

    if-nez p3, :cond_8b

    .line 653
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v6

    if-ne v6, v2, :cond_8b

    const-string p0, "AudioService.PlaybackActivityMonitor"

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "not ducking player "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - SPEECH"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    monitor-exit v0

    return v5

    .line 661
    :cond_8b
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_dc

    const-string p0, "AudioService.PlaybackActivityMonitor"

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "not ducking player "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " due to type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result p2

    .line 665
    invoke-static {p2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    monitor-exit v0

    return v5

    .line 669
    :cond_dc
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    .line 675
    :cond_e1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;)V

    .line 676
    monitor-exit v0

    return v2

    :catchall_ec
    move-exception p0

    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_ec

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nPlaybackActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    const-string v1, "\n  playback listeners:"

    .line 496
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->isPrivileged()Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v4, "(S)"

    goto :goto_50

    :cond_4e
    const-string v4, "(P)"

    :goto_50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    :cond_7a
    const-string v1, "\n"

    .line 504
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\n  players:"

    .line 506
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 508
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 509
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_96
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 510
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    if-eqz v2, :cond_96

    .line 512
    invoke-virtual {v2, p1}, Landroid/media/AudioPlaybackConfiguration;->dump(Ljava/io/PrintWriter;)V

    goto :goto_96

    :cond_b0
    const-string v1, "\n  ducked players piids:"

    .line 516
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "\n  faded out players piids:"

    .line 519
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FadeOutManager;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "\n  muted player piids due to call/ring:"

    .line 522
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_cf

    .line 526
    :cond_f4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "\n  banned uids:"

    .line 528
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_102
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_102

    :cond_127
    const-string v1, "\n"

    .line 532
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\n  muted players (piids) awaiting device connection:"

    .line 534
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_137
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_137

    :cond_15c
    const-string v1, "\n"

    .line 538
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "\n"

    .line 543
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLoggerSoundPool:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 546
    monitor-exit v0
    :try_end_171
    .catchall {:try_start_24 .. :try_end_171} :catchall_1b9

    .line 547
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_174
    const-string v0, "\n  allowed capture policies:"

    .line 548
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_183
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_183

    .line 552
    :cond_1b4
    monitor-exit v1

    return-void

    :catchall_1b6
    move-exception p0

    monitor-exit v1
    :try_end_1b8
    .catchall {:try_start_174 .. :try_end_1b8} :catchall_1b6

    throw p0

    :catchall_1b9
    move-exception p0

    .line 546
    :try_start_1ba
    monitor-exit v0
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1b9

    throw p0
.end method

.method public fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 11

    .line 776
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 779
    monitor-exit v0

    return v2

    .line 781
    :cond_e
    invoke-static {p1, p2}, Lcom/android/server/audio/FadeOutManager;->canCauseFadeOut(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 782
    monitor-exit v0

    return v2

    .line 786
    :cond_16
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 789
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 790
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPlaybackConfiguration;

    .line 791
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v6

    if-nez v6, :cond_26

    .line 792
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 793
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_26

    .line 795
    invoke-static {v5}, Lcom/android/server/audio/FadeOutManager;->canBeFadedOut(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result v4

    if-nez v4, :cond_a4

    const-string p0, "AudioService.PlaybackActivityMonitor"

    .line 797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "not fading out player "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result p2

    .line 800
    invoke-static {p2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attr:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 797
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    monitor-exit v0

    return v2

    :cond_a4
    const/4 v4, 0x1

    .line 806
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :cond_aa
    if-eqz v4, :cond_b5

    .line 810
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/FadeOutManager;->fadeOutUid(ILjava/util/ArrayList;)V

    .line 812
    :cond_b5
    monitor-exit v0

    return v4

    :catchall_b7
    move-exception p0

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_b7

    throw p0
.end method

.method public forgetUid(I)V
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 822
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 823
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/FadeOutManager;->unfadeOutUid(ILjava/util/HashMap;)V

    return-void

    :catchall_12
    move-exception p0

    .line 822
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getActivePlaybackConfigurations(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_12

    .line 857
    :try_start_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    .line 862
    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 863
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 862
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    .line 865
    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    .line 867
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getAllAllowedCapturePolicies()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 455
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAllowedCapturePolicy(I)I
    .registers 3

    .line 446
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final initEventHandler()V
    .registers 3

    .line 1363
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioService.PlaybackActivityMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventThread:Landroid/os/HandlerThread;

    .line 1364
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1365
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$1;

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$1;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public isMusicPlaying()Z
    .registers 3

    .line 1431
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 1433
    invoke-static {v1}, Lcom/samsung/android/server/audio/PlaybackHelper;->isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x1

    .line 1434
    monitor-exit v0

    return p0

    :cond_22
    const/4 p0, 0x0

    .line 1437
    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    .line 1438
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public isPlaybackActiveForUid(I)Z
    .registers 5

    .line 481
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 483
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    if-ne v1, p1, :cond_d

    const/4 p0, 0x1

    .line 484
    monitor-exit v0

    return p0

    .line 487
    :cond_28
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public isSoundPoolActiveForUid(I)Z
    .registers 5

    .line 1463
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1464
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 1465
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    if-ne v2, p1, :cond_d

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const/4 p0, 0x1

    .line 1466
    monitor-exit v0

    return p0

    .line 1469
    :cond_29
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final maybeMutePlayerAwaitingConnection(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation

    const-string v0, "AudioService.PlaybackActivityMonitor"

    .line 1306
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    if-nez v1, :cond_7

    return-void

    .line 1309
    :cond_7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_7b

    aget v4, v1, v3

    .line 1310
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    if-ne v4, v5, :cond_78

    .line 1312
    :try_start_17
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "awaiting connection: muting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 1312
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1316
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    sget-object v5, Lcom/android/server/audio/PlaybackActivityMonitor;->MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    invoke-virtual {v4, v5, v6}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 1319
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5e} :catch_5f

    goto :goto_78

    :catch_5f
    move-exception v4

    .line 1321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "awaiting connection: error muting player "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1321
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_78
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_7b
    return-void
.end method

.method public muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V
    .registers 8

    .line 1253
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "muteAwaitConnection() dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timeOutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;->loglogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->mutePlayersExpectingDevice([I)V

    .line 1258
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Landroid/os/Handler;

    .line 1260
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1259
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1262
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final mutePlayersExpectingDevice([I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation

    .line 1289
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;-><init>([I)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1290
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 1291
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1292
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1294
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1295
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1296
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    if-nez v0, :cond_2d

    goto :goto_16

    .line 1300
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->maybeMutePlayerAwaitingConnection(Landroid/media/AudioPlaybackConfiguration;)V

    goto :goto_16

    :cond_31
    return-void
.end method

.method public mutePlayersForCall([I)V
    .registers 11

    .line 696
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 698
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 700
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 702
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    if-nez v3, :cond_24

    goto :goto_d

    .line 706
    :cond_24
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    .line 708
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_2f
    if-ge v7, v5, :cond_3a

    aget v8, p1, v7

    if-ne v4, v8, :cond_37

    const/4 v6, 0x1

    goto :goto_3a

    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 716
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v3, v6}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkMuteStrategy(Landroid/media/AudioPlaybackConfiguration;Z)Z

    move-result v4
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_9f

    if-eqz v4, :cond_d

    .line 721
    :try_start_40
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: muting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 721
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 723
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/PlayerProxy;->setVolume(F)V

    .line 724
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_83} :catch_84
    .catchall {:try_start_40 .. :try_end_83} :catchall_9f

    goto :goto_d

    :catch_84
    move-exception v3

    :try_start_85
    const-string v4, "AudioService.PlaybackActivityMonitor"

    .line 726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call: error muting player "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 730
    :cond_9d
    monitor-exit v0

    return-void

    :catchall_9f
    move-exception p0

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public final notifyStartMusic(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 2

    .line 1417
    invoke-static {p1}, Lcom/samsung/android/server/audio/PlaybackHelper;->isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 1420
    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mNotifierSoundAliveForDVFS:Lcom/samsung/android/server/audio/FrequentWorker;

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/FrequentWorker;->runOrSkip()Ljava/lang/Object;

    .line 1423
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz p1, :cond_19

    .line 1424
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->triggerMonitoring()V

    :cond_19
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;I)V
    .registers 8

    .line 218
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 220
    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 221
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, p2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 222
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 224
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_7b

    .line 225
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_46
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 227
    invoke-static {p1, v0, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_69

    .line 228
    sget-object p3, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;-><init>(ILandroid/media/AudioAttributes;)V

    invoke-virtual {p3, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    move-result p1

    goto :goto_71

    :cond_69
    const-string p1, "AudioService.PlaybackActivityMonitor"

    const-string p2, "Error updating audio attributes"

    .line 231
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 234
    :goto_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_78

    if-eqz p1, :cond_77

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    .line 234
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0

    :catchall_7b
    move-exception p0

    .line 224
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public playerDeath(I)V
    .registers 3

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    return-void
.end method

.method public playerEvent(IIII)V
    .registers 13

    .line 314
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v1, :cond_3e

    const-string p0, "AudioService.PlaybackActivityMonitor"

    const-string v1, "cannot find player(piid=%d, event=%d, deviceId=%d, uid=%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit v0

    return-void

    .line 323
    :cond_3e
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v6

    if-ne v6, v4, :cond_4f

    .line 324
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLoggerSoundPool:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    invoke-direct {v7, p1, p2, p3, p4}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_59

    .line 326
    :cond_4f
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    invoke-direct {v7, p1, p2, p3, p4}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :goto_59
    if-ne p2, v2, :cond_9a

    .line 333
    iget-object v6, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 334
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 336
    sget-object p0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "not starting piid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,is banned"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 338
    monitor-exit v0

    return-void

    :cond_9a
    const/16 v6, 0x64

    if-eq p2, v6, :cond_ec

    const/16 v7, 0xc8

    if-ne p2, v7, :cond_a3

    goto :goto_ec

    .line 351
    :cond_a3
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v6

    if-ne v6, v4, :cond_ab

    .line 353
    monitor-exit v0

    return-void

    .line 355
    :cond_ab
    invoke-static {p1, v1, p4}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 357
    invoke-virtual {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 358
    invoke-virtual {v1, p2, p3}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(II)Z

    move-result p1

    goto :goto_d0

    :cond_b9
    const-string p1, "AudioService.PlaybackActivityMonitor"

    .line 360
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error handling event "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v5

    :goto_d0
    if-eqz p1, :cond_de

    if-ne p2, v2, :cond_de

    .line 364
    iget-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p3, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->checkDuck(Landroid/media/AudioPlaybackConfiguration;)V

    .line 365
    iget-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {p3, v1}, Lcom/android/server/audio/FadeOutManager;->checkFade(Landroid/media/AudioPlaybackConfiguration;)V

    .line 368
    :cond_de
    invoke-virtual {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->notifyStartMusic(Landroid/media/AudioPlaybackConfiguration;)V

    .line 370
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_3 .. :try_end_e2} :catchall_f5

    if-eqz p1, :cond_eb

    if-nez p2, :cond_e7

    goto :goto_e8

    :cond_e7
    move v3, v5

    .line 372
    :goto_e8
    invoke-virtual {p0, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    :cond_eb
    return-void

    :cond_ec
    :goto_ec
    if-ne p2, v6, :cond_ef

    goto :goto_f0

    :cond_ef
    move v3, v5

    .line 346
    :goto_f0
    :try_start_f0
    invoke-virtual {v1, v3}, Landroid/media/AudioPlaybackConfiguration;->setMuteState(Z)V

    .line 347
    monitor-exit v0

    return-void

    :catchall_f5
    move-exception p0

    .line 370
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_f5

    throw p0
.end method

.method public playerHasOpPlayAudio(IZI)V
    .registers 5

    .line 378
    sget-object p0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;-><init>(IZI)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void
.end method

.method public playerSessionId(III)V
    .registers 7

    .line 248
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 250
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1c

    .line 251
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleSessionIdEvent(I)Z

    move-result p1

    goto :goto_24

    :cond_1c
    const-string p1, "AudioService.PlaybackActivityMonitor"

    const-string p2, "Error updating audio session"

    .line 253
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p3

    .line 256
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2b

    if-eqz p1, :cond_2a

    .line 258
    invoke-virtual {p0, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 256
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 833
    :cond_3
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;-><init>(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 834
    invoke-virtual {v0}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->init()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 835
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public releasePlayer(II)V
    .registers 9

    .line 384
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 386
    invoke-static {p1, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_57

    .line 387
    sget-object p2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releasing player piid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 389
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 391
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {p2, v1}, Lcom/android/server/audio/FadeOutManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 392
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 394
    invoke-virtual {v1, v2, v2}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(II)Z

    move-result v2

    .line 397
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_5f

    if-eqz v2, :cond_5e

    const/4 p1, 0x1

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    :cond_5e
    return-void

    :catchall_5f
    move-exception p0

    .line 397
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 6

    .line 683
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 685
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadingManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/audio/FadeOutManager;->unfadeOutUid(ILjava/util/HashMap;)V

    .line 686
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setAllowedCapturePolicy(II)V
    .registers 7

    .line 420
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    .line 424
    :try_start_6
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    monitor-exit v0

    return-void

    .line 427
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_47

    .line 430
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_22
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 432
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    if-ne v3, p1, :cond_2c

    .line 433
    invoke-virtual {p0, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V

    goto :goto_2c

    .line 436
    :cond_42
    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_44

    throw p0

    :catchall_47
    move-exception p0

    .line 429
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public setAudioHandler(Landroid/os/Handler;)V
    .registers 2

    .line 1392
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    return-void
.end method

.method public setCallbackPackageName(Landroid/media/IPlaybackConfigDispatcher;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1450
    :cond_3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1451
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1452
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 1453
    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->-$$Nest$fgetmDispatcherCb(Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1454
    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->setPackageName(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 7

    .line 189
    invoke-static {}, Landroid/media/AudioSystem;->newAudioPlayerId()I

    move-result v0

    .line 191
    new-instance v1, Landroid/media/AudioPlaybackConfiguration;

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/media/PlayerBase$PlayerIdCard;III)V

    .line 196
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object p1

    const-string v2, "FAST_PRE_OPEN"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p0, "AudioService.PlaybackActivityMonitor"

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip piid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by dummy audio for fast pre open"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 201
    :cond_3d
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->init()V

    .line 202
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter p1

    .line 203
    :try_start_43
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    .line 204
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 205
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 207
    :cond_66
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_85

    .line 208
    sget-object p1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;

    invoke-direct {v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_74
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->maybeMutePlayerAwaitingConnection(Landroid/media/AudioPlaybackConfiguration;)V

    .line 212
    monitor-exit v2

    return v0

    :catchall_82
    move-exception p0

    monitor-exit v2
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_82

    throw p0

    :catchall_85
    move-exception p0

    .line 207
    :try_start_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public final unmutePlayersExpectingDevice()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation

    const-string v0, "AudioService.PlaybackActivityMonitor"

    const/4 v1, 0x0

    .line 1330
    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 1331
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1332
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    if-nez v3, :cond_2a

    goto :goto_b

    .line 1337
    :cond_2a
    :try_start_2a
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmuting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 1337
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1339
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    sget-object v5, Lcom/android/server/audio/PlaybackActivityMonitor;->MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    sget-object v6, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    invoke-virtual {v4, v5, v6}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_55} :catch_56

    goto :goto_b

    :catch_56
    move-exception v4

    .line 1342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error unmuting player "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1342
    invoke-static {v0, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 1346
    :cond_78
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public unmutePlayersForCall()V
    .registers 9

    .line 738
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 740
    monitor-exit v0

    return-void

    .line 742
    :cond_d
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 743
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_87

    if-eqz v3, :cond_13

    .line 746
    :try_start_31
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: unmuting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService.PlaybackActivityMonitor"

    .line 747
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 746
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 748
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5b} :catch_5c
    .catchall {:try_start_31 .. :try_end_5b} :catchall_87

    goto :goto_13

    :catch_5c
    move-exception v4

    :try_start_5d
    const-string v5, "AudioService.PlaybackActivityMonitor"

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: error unmuting player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-static {v5, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 755
    :cond_80
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 756
    monitor-exit v0

    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_5d .. :try_end_89} :catchall_87

    throw p0
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 843
    :cond_3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 845
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 846
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 847
    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->equalsDispatcher(Landroid/media/IPlaybackConfigDispatcher;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 848
    invoke-virtual {v0}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->release()V

    .line 849
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_22
    return-void
.end method

.method public final updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V
    .registers 4

    .line 459
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 460
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result p0

    if-lt p0, p2, :cond_b

    return-void

    .line 463
    :cond_b
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    .line 464
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 465
    invoke-virtual {p0, p2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 463
    invoke-virtual {p1, p0}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    return-void
.end method
