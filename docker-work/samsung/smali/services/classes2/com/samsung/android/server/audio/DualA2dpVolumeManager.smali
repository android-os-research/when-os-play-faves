.class public Lcom/samsung/android/server/audio/DualA2dpVolumeManager;
.super Ljava/lang/Object;
.source "DualA2dpVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;
    }
.end annotation


# static fields
.field public static final FINE_VOLUME_STEP:I = 0xa

.field public static FINE_VOLUME_TABLE:[F = null

.field public static final LOG_NB_EVENTS_DUAL_A2DP_VOLUME:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "AS.DualA2dpManager"

.field public static final VOLUME_TABLE:[F


# instance fields
.field public final MAX_VOLUME:I

.field public final mAbsVolSupported:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBrokerHandler:Landroid/os/Handler;

.field public final mConnectedDevicesVolume:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDualModeEnabled:Z

.field public final mEventLogger:Lcom/android/server/audio/AudioEventLogger;

.field public mMainVolume:I

.field public mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

.field public mSafeMediaVolumeIndex:I

.field public mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

.field public needVolumeChangedIntent:Z


# direct methods
.method public static synthetic $r8$lambda$1zxm_GEmxJB5impryQy8eXlgP8A(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->lambda$setAvrcpAbsoluteVolumeSupported$1(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U4iDc8SCpZHu4tlK-uqZZ8UZ4e4(Ljava/lang/Boolean;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->lambda$isAvrcpAbsoluteVolumeSupportedForActiveDevice$2(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vNwfc4Jyxq9HGWbCM2539ikQGEM(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->lambda$new$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingHelper(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;)Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 388
    fill-array-data v0, :array_42

    sput-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    const/16 v0, 0x97

    new-array v0, v0, [F

    .line 392
    sput-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    const/16 v2, 0xf

    if-ge v1, v2, :cond_39

    .line 396
    sget-object v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    aget v2, v2, v1

    sub-float/2addr v4, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v4, v2

    move v2, v0

    :goto_22
    const/16 v5, 0xa

    if-ge v2, v5, :cond_37

    .line 398
    sget-object v5, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    mul-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v2

    sget-object v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->VOLUME_TABLE:[F

    aget v7, v7, v1

    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_37
    move v1, v3

    goto :goto_11

    .line 401
    :cond_39
    sget-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    const/16 v1, 0x96

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    return-void

    :array_42
    .array-data 4
        0x0
        0x3c02235b    # 0.007943f
        0x3c37d417    # 0.01122f
        0x3c81d5c3    # 0.015849f
        0x3cb764f1    # 0.022387f
        0x3d01871e
        0x3d36f5cb    # 0.044668f
        0x3d81387a
        0x3db6872b    # 0.089125f
        0x3e00ea18
        0x3e36188b
        0x3e809bd8
        0x3eb5aa0d
        0x3f004dcb
        0x3f353bf3
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 8

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x96

    .line 56
    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSafeMediaVolumeIndex:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    .line 59
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 63
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x3c

    const-string v3, "Dual A2dp Event history"

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 66
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x1e

    const-string v3, "Dual A2dp Volume history"

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 73
    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    mul-int/lit8 v0, p3, 0xa

    .line 79
    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    .line 80
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    .line 84
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz p2, :cond_5d

    const/16 p1, 0x46

    .line 85
    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSafeMediaVolumeIndex:I

    goto :goto_70

    .line 87
    :cond_5d
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz p2, :cond_70

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0103

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSafeMediaVolumeIndex:I

    :cond_70
    :goto_70
    return-void
.end method

.method public static synthetic lambda$isAvrcpAbsoluteVolumeSupportedForActiveDevice$2(Ljava/lang/Boolean;)Z
    .registers 1

    .line 323
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->makeFineMediaVolumeTable(I)V

    return-void
.end method

.method public static synthetic lambda$setAvrcpAbsoluteVolumeSupported$1(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 312
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;IIIZLandroid/bluetooth/BluetoothDevice;)V
    .registers 12

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",active:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p6}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ",state:"

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {v2, p6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/4 p6, 0x2

    if-ne p2, p6, :cond_be

    const/4 p2, -0x1

    if-ne p3, p2, :cond_86

    .line 147
    iget-object p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_55

    .line 148
    iget-object p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p3, p1, p6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_5f

    .line 150
    :cond_55
    iget-object p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getBTVolumeIndex(Ljava/lang/String;)I

    move-result p3

    .line 152
    :goto_5f
    iget-object p6, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore vol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    if-eq p3, p2, :cond_85

    goto :goto_86

    :cond_85
    move p3, p4

    .line 158
    :cond_86
    :goto_86
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz p2, :cond_a9

    if-eqz p5, :cond_a9

    .line 160
    iget p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSafeMediaVolumeIndex:I

    if-le p3, p2, :cond_a9

    const-string p3, "AS.DualA2dpManager"

    .line 162
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Set safe media volume  : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSafeMediaVolumeIndex:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p3, p2

    .line 165
    :cond_a9
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p3

    .line 166
    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(Ljava/lang/String;I)V

    goto :goto_ce

    :cond_be
    if-nez p2, :cond_ce

    .line 169
    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_ce
    :goto_ce
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    .line 173
    monitor-exit v0

    return-void

    :catchall_d3
    move-exception p0

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_3 .. :try_end_d5} :catchall_d3

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, ""

    .line 353
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SEC_AUDIO_DUAL_A2DP_VOLUME="

    .line 354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  A2dp Devices: "

    .line 356
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 358
    :goto_18
    :try_start_18
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    if-lez v2, :cond_27

    const-string v3, ", "

    .line 360
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    :cond_27
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {v3}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " : "

    .line 364
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 366
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 369
    :cond_51
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  AvrcpAbsoluteVolumeSupported"

    .line 370
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    :goto_59
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_95

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 375
    :cond_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main fine volume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_18 .. :try_end_ac} :catchall_f8

    const-string v0, "  Active device: "

    .line 377
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Dual Sound: "

    .line 380
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    const-string v0, ""

    .line 383
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_f8
    move-exception p0

    .line 376
    :try_start_f9
    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw p0
.end method

.method public enforceSafeMediaVolume(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v1

    const/4 v2, 0x0

    .line 465
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 466
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 467
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 468
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_42

    if-gt v4, p1, :cond_2f

    goto :goto_42

    .line 473
    :cond_2f
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(Ljava/lang/String;I)V

    .line 475
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 477
    :cond_45
    monitor-exit v1

    return-object v0

    :catchall_47
    move-exception p0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 254
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getA2dpDevices()Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 259
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 261
    iget-boolean v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz v2, :cond_12

    .line 262
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_30

    .line 264
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_30

    .line 266
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_30
    :goto_30
    monitor-exit v0

    return-object v1

    :catchall_32
    move-exception p0

    .line 270
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 285
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getMainVolume()I
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz v1, :cond_b

    .line 276
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    monitor-exit v0

    return p0

    .line 278
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 279
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final getValidIndex(I)I
    .registers 2

    .line 448
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    if-le p1, p0, :cond_5

    return p0

    :cond_5
    if-gez p1, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    return p1
.end method

.method public isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1c

    .line 323
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 325
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_34

    .line 326
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    monitor-exit v0

    return p0

    :catchall_37
    move-exception p0

    .line 327
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public isBluetoothHeadphoneActive()Z
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 483
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_10

    .line 484
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 485
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isDualA2dpMode()Z
    .registers 1

    .line 303
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    return p0
.end method

.method public final makeFineMediaVolumeTable(I)V
    .registers 12

    .line 94
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    const-string v1, "AS.DualA2dpManager"

    if-eqz v0, :cond_e

    const-string p0, "Cannot access audioserver"

    .line 95
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_e
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v2, "audioParam"

    .line 100
    invoke-virtual {v0, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v2, "l_volume_table"

    .line 101
    invoke-virtual {v0, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string p0, "cannot get volume tables. using default table"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    add-int/lit8 v2, p1, 0x1

    .line 109
    new-array v2, v2, [F

    .line 110
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v4, v0

    .line 112
    :goto_44
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6f

    if-gt v4, p1, :cond_6f

    .line 113
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 115
    :try_start_52
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v2, v4
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_58} :catch_5a

    move v4, v6

    goto :goto_44

    .line 117
    :catch_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid value "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    if-gt v4, p1, :cond_77

    const-string p0, "incorrect volume table, using default table"

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_77
    move v1, v0

    :goto_78
    if-ge v1, p1, :cond_9a

    add-int/lit8 v3, v1, 0x1

    .line 128
    aget v4, v2, v3

    aget v5, v2, v1

    sub-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    move v5, v0

    :goto_85
    const/16 v6, 0xa

    if-ge v5, v6, :cond_98

    .line 130
    sget-object v6, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    mul-int/lit8 v7, v1, 0xa

    add-int/2addr v7, v5

    aget v8, v2, v1

    int-to-float v9, v5

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    :cond_98
    move v1, v3

    goto :goto_78

    .line 133
    :cond_9a
    sget-object p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, p0

    return-void
.end method

.method public final postSaveVolumeDB(Ljava/lang/String;I)V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 406
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    iput p2, p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    goto :goto_1d

    .line 409
    :cond_16
    new-instance v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;-><init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    .line 411
    :goto_1d
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mBrokerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mPersistVolumeWorker:Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8

    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVolume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 203
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(Ljava/lang/String;I)V

    .line 204
    monitor-exit v0

    return-void

    .line 207
    :cond_40
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    .line 208
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    .line 209
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 180
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.DualA2dpManager"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_46

    .line 184
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 186
    monitor-exit v0

    return v1

    .line 189
    :cond_46
    iget-object v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v2

    .line 190
    :goto_50
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 191
    monitor-exit v0

    return v1

    :catchall_54
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V
    .registers 7

    .line 307
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",support:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.DualA2dpManager"

    .line 309
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 311
    :try_start_30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 312
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    new-instance p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 313
    monitor-exit v0

    return-void

    .line 316
    :cond_42
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public setDualA2dpMode(Z)V
    .registers 7

    .line 289
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 290
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz p1, :cond_b

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume()V

    goto :goto_20

    .line 295
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 297
    :goto_20
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",active:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 298
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",vol:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p0, "AS.DualA2dpManager"

    invoke-virtual {v2, p0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p0

    .line 297
    invoke-virtual {v1, p0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 299
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final setVolume(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevicesVolume"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "AS.DualA2dpManager"

    const-string p1, "null device"

    .line 432
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 437
    :cond_b
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p2

    .line 438
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 439
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_2b

    .line 441
    :cond_23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public shouldVolumeChangedIntent()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public updateIndividualA2dpVolumes(I)V
    .registers 8

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",main:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 217
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-nez v1, :cond_39

    .line 219
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_37

    .line 220
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 221
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    .line 223
    :cond_37
    monitor-exit v0

    return-void

    .line 226
    :cond_39
    iget v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    .line 228
    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 231
    :goto_42
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_79

    .line 232
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 233
    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    if-ne v4, v5, :cond_5c

    add-int/lit8 v3, v3, 0x1

    :cond_5c
    add-int/2addr v4, p1

    .line 237
    iget-object v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 238
    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-ge v5, v4, :cond_6e

    .line 239
    iput v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 241
    :cond_6e
    iget v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 243
    :cond_79
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-eq v3, p1, :cond_82

    const/4 v1, 0x1

    :cond_82
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    .line 244
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public final updateMainVolume()V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, -0x1

    .line 332
    :try_start_4
    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    const/4 v1, 0x0

    .line 333
    :goto_7
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 334
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 335
    iget v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-ge v3, v2, :cond_21

    .line 336
    iput v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 339
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final updateMainVolume(I)V
    .registers 3

    .line 344
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result p1

    .line 345
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-le p1, v0, :cond_b

    .line 346
    iput p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    return-void

    .line 349
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume()V

    return-void
.end method
