.class public Lcom/samsung/android/server/audio/VolumeMonitorService;
.super Ljava/lang/Object;
.source "VolumeMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
    }
.end annotation


# static fields
.field public static final ENERGY_VALUE_SIZE_IN_BYTE:I = 0xf4

.field public static final MONITORING_PERIOD:I = 0xea60

.field public static final MSG_RUNNING:I = 0x1

.field public static final MSG_START:I = 0x0

.field public static final RESET_DATA:Ljava/lang/String; = "resetData()"

.field public static final SCORE_VALUE_SIZE_IN_BYTE:I = 0x3c

.field public static final SET_VOLUME:Ljava/lang/String; = "setVolumeData()"

.field public static final STATE_PAUSED:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AS.VolumeMonitor"

.field public static final authority:Landroid/net/Uri;

.field public static sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;


# instance fields
.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothVolumeIndex:I

.field public mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field public mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public mVolumeHandler:Landroid/os/Handler;

.field public mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method public static synthetic $r8$lambda$GHlrm6a5ObwT_nQZkptA_3rp8iY(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->lambda$resetByDataClear$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabled(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/samsung/android/server/audio/VolumeMonitorService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateLock(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/samsung/android/server/audio/VolumeMonitorService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$misMusicPlaying(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendVolumeData(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->sendVolumeData()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.android.app.volumemonitorprovider.VolumeMonitorProvider"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 46
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 63
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 71
    :cond_e
    sget-object p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$resetByDataClear$0()V
    .registers 1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetData()V

    return-void
.end method


# virtual methods
.method public audioServerDied()V
    .registers 3

    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-eqz v0, :cond_b

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->release()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 151
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 153
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 154
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    return-void

    :catchall_15
    move-exception v0

    .line 153
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final getUserContext()Landroid/content/Context;
    .registers 6

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    .line 288
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 287
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    .line 290
    :catch_15
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final initLocked(Z)Z
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 93
    :try_start_5
    new-instance v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const/4 v2, -0x3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_29

    :catch_e
    move-exception p1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS.VolumeMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    return v0

    :cond_29
    :goto_29
    if-eqz p1, :cond_3c

    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    if-nez p1, :cond_3c

    .line 102
    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->waitForVolumeHandlerCreation()V

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public final isMusicPlaying()Z
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->isMusicPlaying()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public resetByDataClear()V
    .registers 2

    .line 158
    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_7

    .line 160
    monitor-exit p0

    return-void

    .line 162
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->resetData()V

    .line 163
    new-instance v0, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 164
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final resetData()V
    .registers 5

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    const-string/jumbo v1, "resetData()"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_30

    :catch_14
    move-exception p0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetData() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.VolumeMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public final sendVolumeData()V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const-string v1, "AS.VolumeMonitor"

    if-nez v0, :cond_c

    const-string p0, "SemVolumeMonitor is null"

    .line 263
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/16 v2, 0xf4

    const/16 v3, 0x3c

    .line 268
    :try_start_10
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->getOneMinScoreStatus(II)[B

    move-result-object v0

    .line 270
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    const-string/jumbo v3, "setVolumeData()"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v2, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_2d

    goto :goto_47

    :catch_2d
    move-exception p0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVolumeData() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method public setDeviceVolumeForBluetooth(IZ)V
    .registers 5

    .line 168
    iput p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    if-eq v0, p2, :cond_a

    .line 172
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 176
    :goto_b
    monitor-enter p0

    .line 177
    :try_start_c
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v1, :cond_12

    monitor-exit p0

    return-void

    .line 178
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_20

    .line 180
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    if-eqz v0, :cond_1f

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {p0, p2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    :cond_1f
    return-void

    :catchall_20
    move-exception p1

    .line 178
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public setPlaybackActivityMonitor(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-void
.end method

.method public setVolumeMonitorOnOff(Z)V
    .registers 3

    .line 110
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x1

    .line 115
    :cond_9
    monitor-enter p0

    .line 116
    :try_start_a
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-ne v0, p1, :cond_10

    monitor-exit p0

    return-void

    .line 118
    :cond_10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->initLocked(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 119
    monitor-exit p0

    return-void

    .line 121
    :cond_18
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 122
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_47

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->onOff(Z)V

    if-eqz p1, :cond_28

    const-string v0, "l_volume_monitor_onoff=true"

    .line 127
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2d

    :cond_28
    const-string v0, "l_volume_monitor_onoff=false"

    .line 130
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_2d
    if-eqz p1, :cond_46

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->triggerMonitoring()V

    :cond_46
    return-void

    :catchall_47
    move-exception p1

    .line 122
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public triggerMonitoring()V
    .registers 3

    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 81
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 87
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1c
    move-exception v0

    .line 81
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public final waitForVolumeHandlerCreation()V
    .registers 3

    .line 187
    monitor-enter p0

    .line 188
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_11

    .line 191
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    goto :goto_1

    :catch_9
    :try_start_9
    const-string v0, "AS.VolumeMonitor"

    const-string v1, "Interrupted while waiting on volume handler."

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0
.end method
