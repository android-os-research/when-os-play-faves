.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field public mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

.field public final mIndexMap:Landroid/util/SparseIntArray;

.field public mIndexMax:I

.field public mIndexMin:I

.field public mIndexMinNoPerm:I

.field public mIsMuted:Z

.field public mIsMutedInternally:Z

.field public mObservedDeviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mStreamDevicesChanged:Landroid/content/Intent;

.field public final mStreamType:I

.field public final mVolumeChanged:Landroid/content/Intent;

.field public mVolumeIndexSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$0T7PJvX8X1r37pW6S-b_dUcGlw8(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->lambda$applyDeviceVolume_syncVSS$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KuLbbM9k6IHPHRaEH23ICNTlXco(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->lambda$setIndex$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UHiPSOl7RhKrVPilEklhi5HFSEg(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->lambda$setIndex$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKsGrfUelHr8b6d6spY8Jnbn75w(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->lambda$setStreamVolumeIndex$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzmNRe-x8gJJ2z6Hzxtun_p1dik(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->lambda$applyDeviceVolume_syncVSS$1(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMap(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMax(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMin(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObservedDeviceSet(Lcom/android/server/audio/AudioService$VolumeStreamState;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeIndexSettingName(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasValidSettingsName(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 12

    .line 8175
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8142
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 8144
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 8172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 8879
    new-instance v0, Lcom/android/server/audio/CurrentDeviceManager;

    invoke-direct {v0}, Lcom/android/server/audio/CurrentDeviceManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    .line 8176
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 8178
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 8179
    sget-object p2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p2, p2, p3

    mul-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 8180
    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 8181
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 8182
    div-int/lit8 p2, p2, 0xa

    div-int/lit8 v0, v0, 0xa

    invoke-static {p3, p2, v0}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    move-result p2

    if-eqz p2, :cond_7f

    .line 8185
    sget-object v0, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSS() stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initStreamVolume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string v2, "AS.AudioService"

    .line 8187
    invoke-virtual {v1, p2, v2}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p2

    .line 8185
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8188
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x7d0

    const-string v6, "VSS()"

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8192
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 8200
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string p0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 8201
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$applyDeviceVolume_syncVSS$1(II)V
    .registers 3

    .line 8468
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    return-void
.end method

.method public static synthetic lambda$applyDeviceVolume_syncVSS$2(I)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$setIndex$3(II)V
    .registers 3

    .line 8598
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static synthetic lambda$setIndex$4(I)V
    .registers 1

    return-void
.end method

.method public static synthetic lambda$setStreamVolumeIndex$0(Ljava/lang/String;)V
    .registers 3

    .line 8407
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 8408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fine volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.AudioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;Z)Z
    .registers 6

    .line 8543
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public applyAllVolumes()V
    .registers 8

    .line 8481
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 8484
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v4, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_b9

    .line 8485
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, v5, :cond_b5

    .line 8487
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v5, :cond_30

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 8488
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    const/4 v5, 0x7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto/16 :goto_b2

    .line 8490
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v5

    if-eqz v5, :cond_39

    move v4, v1

    goto/16 :goto_b2

    .line 8493
    :cond_39
    invoke-static {v3}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v5

    if-eqz v5, :cond_61

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMode(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    .line 8494
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_61

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v5, :cond_61

    if-ne v5, v4, :cond_58

    .line 8497
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    goto :goto_b2

    .line 8500
    :cond_58
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_b2

    .line 8502
    :cond_61
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v5

    if-nez v5, :cond_aa

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 8503
    invoke-static {v5, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$misA2dpAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 8504
    invoke-static {v3}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v5

    if-eqz v5, :cond_78

    goto :goto_aa

    .line 8510
    :cond_78
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 8511
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_b2

    :cond_87
    const/high16 v5, 0x8000000

    if-ne v3, v5, :cond_92

    .line 8513
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_b2

    .line 8515
    :cond_92
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v5, v4, :cond_9f

    .line 8516
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    goto :goto_b2

    .line 8519
    :cond_9f
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_b2

    .line 8506
    :cond_aa
    :goto_aa
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v4

    .line 8522
    :goto_b2
    invoke-virtual {p0, v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 8527
    :cond_b9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v2

    if-eqz v2, :cond_c0

    goto :goto_d3

    .line 8530
    :cond_c0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v1, v4, :cond_cb

    .line 8531
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    goto :goto_d3

    .line 8534
    :cond_cb
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    .line 8537
    :goto_d3
    invoke-virtual {p0, v1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 8538
    monitor-exit v0

    return-void

    :catchall_d8
    move-exception p0

    monitor-exit v0
    :try_end_da
    .catchall {:try_start_5 .. :try_end_da} :catchall_d8

    throw p0
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .registers 6

    .line 8421
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 8422
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_9e

    .line 8424
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    goto/16 :goto_9e

    .line 8427
    :cond_21
    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMode(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 8428
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v0, :cond_4a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 8431
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    goto :goto_9e

    .line 8434
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_9e

    .line 8436
    :cond_4a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 8437
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misA2dpAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-nez v0, :cond_96

    .line 8438
    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_96

    .line 8445
    :cond_61
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 8446
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_9e

    :cond_70
    const/high16 v0, 0x8000000

    if-ne p1, v0, :cond_7b

    .line 8448
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_9e

    .line 8453
    :cond_7b
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    const/high16 v1, 0x20000000

    if-ne p1, v1, :cond_9e

    .line 8459
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isBluetoothDualModeActive()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 8460
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    goto :goto_9e

    .line 8440
    :cond_96
    :goto_96
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    .line 8467
    :cond_9e
    :goto_9e
    new-instance v1, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 8470
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mshouldSkipDeviceAlias(Lcom/android/server/audio/AudioService;I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 8471
    new-instance v1, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda4;-><init>()V

    .line 8474
    :cond_b0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceAliasManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/DeviceAliasManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, p1, v3, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager;->apply(IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 8477
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    return-void
.end method

.method public checkFixedVolumeDevices()V
    .registers 6

    .line 8794
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 8796
    :try_start_3
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    const/4 v1, 0x0

    .line 8797
    :goto_d
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 8798
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 8799
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 8800
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_33

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 8801
    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misFixedVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz v3, :cond_3a

    .line 8802
    :cond_33
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 8804
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 8807
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "   Muted: "

    .line 8822
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8823
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "   Muted Internally: "

    .line 8824
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8825
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "   Min: "

    .line 8826
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8827
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8828
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    if-eq v0, v1, :cond_37

    const-string v0, " w/o perm:"

    .line 8829
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8830
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_3a

    .line 8832
    :cond_37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_3a
    const-string v0, "   Max: "

    .line 8834
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8835
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   streamVolume:"

    .line 8836
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   Current: "

    .line 8837
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8838
    :goto_5e
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c4

    if-lez v0, :cond_6d

    const-string v1, ", "

    .line 8840
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8842
    :cond_6d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 8843
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_81

    const-string v1, "default"

    goto :goto_85

    .line 8845
    :cond_81
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 8846
    :goto_85
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    const-string v2, " ("

    .line 8847
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8848
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    .line 8849
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_98
    const-string v1, ": "

    .line 8851
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8852
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 8853
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioService;->getIndexDividedBy10(II)I

    move-result v1

    .line 8855
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 8856
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c1

    const-string v1, "\\"

    .line 8858
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8859
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 8862
    :cond_c4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "   Devices: "

    .line 8863
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8864
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final getAbsoluteVolumeIndex(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 8363
    :cond_4
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 p0, p0, 0x5

    div-int/lit8 p0, p0, 0xa

    :goto_a
    return p0
.end method

.method public getIndex(I)I
    .registers 5

    .line 8653
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 8654
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_14

    .line 8657
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 8659
    :cond_14
    monitor-exit v0

    return p1

    :catchall_16
    move-exception p0

    .line 8660
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getIndexDividedBy10(I)I
    .registers 3

    .line 8869
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    .line 8870
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    add-int/lit8 p1, p1, 0x9

    .line 8873
    div-int/lit8 p1, p1, 0xa

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x5

    .line 8875
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getMaxIndex()I
    .registers 1

    .line 8670
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public getMinIndex()I
    .registers 1

    .line 8677
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method public getMinIndex(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 8686
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_7

    :cond_5
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_7
    return p0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 3

    .line 8282
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 8285
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 8286
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8287
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p0

    .line 8289
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamType()I
    .registers 1

    .line 8790
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method public final getValidIndex(IZ)I
    .registers 3

    if-eqz p2, :cond_5

    .line 8811
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_7

    :cond_5
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_7
    if-ge p1, p2, :cond_a

    return p2

    .line 8814
    :cond_a
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result p2

    if-nez p2, :cond_18

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, p2, :cond_17

    goto :goto_18

    :cond_17
    return p1

    .line 8815
    :cond_18
    :goto_18
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public hasIndexForDevice(I)Z
    .registers 4

    .line 8664
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 8665
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 8666
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final hasValidSettingsName()Z
    .registers 1

    .line 8293
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isFullyMuted()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .line 8786
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public mute(Z)Z
    .registers 12

    .line 8736
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 8737
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x1

    .line 8739
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 8744
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 8751
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_38

    if-eqz v1, :cond_37

    .line 8754
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 8755
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 8756
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8757
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    :cond_37
    return v1

    :catchall_38
    move-exception p0

    .line 8751
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public muteInternally(Z)Z
    .registers 6

    .line 8769
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 8770
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eq p1, v1, :cond_e

    const/4 v1, 0x1

    .line 8772
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 8774
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 8776
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    if-eqz v1, :cond_20

    .line 8778
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0x9

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v2, v3, p0, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :cond_20
    return v1

    :catchall_21
    move-exception p0

    .line 8776
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public observeDevicesForStream_syncVSS(Z)Ljava/util/Set;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8225
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemServer(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_12

    .line 8226
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    .line 8228
    :cond_12
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 8229
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetDeviceSetForStreamDirect(Lcom/android/server/audio/AudioService;I)Ljava/util/Set;

    move-result-object v0

    .line 8230
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 8231
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0

    .line 8236
    :cond_25
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v7

    .line 8237
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v8

    .line 8239
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    if-eqz p1, :cond_3a

    .line 8242
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    .line 8245
    :cond_3a
    sget-object p1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget p1, p1, v0

    if-ne p1, v0, :cond_45

    .line 8246
    invoke-static {v0, v8, v7}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 8250
    :cond_45
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPreventOverheatState()Z

    move-result p1

    if-eqz p1, :cond_6d

    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p1, v0, :cond_6d

    .line 8252
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 8253
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v1

    .line 8252
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setPreventOverheatState(I)V

    .line 8258
    :cond_6d
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p1, v0, :cond_98

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMode(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_98

    .line 8259
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x2ff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8261
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x301

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8267
    :cond_98
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 8268
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 8267
    invoke-virtual {p1, v0}, Lcom/android/server/audio/CurrentDeviceManager;->changedCurrentDevice(Ljava/util/Set;)V

    .line 8273
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const/4 v6, 0x0

    move v3, v8

    move v4, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8278
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0
.end method

.method public readSettings()V
    .registers 11

    .line 8297
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 8298
    :try_start_9
    monitor-enter v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_76

    .line 8300
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1e

    .line 8301
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 8302
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_73

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_76

    return-void

    .line 8321
    :cond_1e
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_73

    .line 8322
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_76

    .line 8323
    monitor-enter v0

    .line 8324
    :try_start_21
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v3, :cond_41

    .line 8330
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v5, v5, v6

    goto :goto_42

    :cond_41
    move v5, v4

    .line 8332
    :goto_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v6

    if-nez v6, :cond_49

    goto :goto_5e

    .line 8335
    :cond_49
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v6

    .line 8336
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v6, v5, v9}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    :goto_5e
    if-ne v5, v4, :cond_61

    goto :goto_27

    .line 8343
    :cond_61
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_27

    .line 8346
    :cond_6e
    monitor-exit v0

    return-void

    :catchall_70
    move-exception p0

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_21 .. :try_end_72} :catchall_70

    throw p0

    :catchall_73
    move-exception p0

    .line 8321
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw p0

    :catchall_76
    move-exception p0

    .line 8322
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public registerCurrentDeviceCallback(Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 8883
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 8884
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 8883
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/audio/CurrentDeviceManager;->registerCallback(Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .line 8699
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_7

    return-void

    .line 8702
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 8705
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 8706
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 8707
    :goto_1b
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 8708
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 8711
    :cond_2f
    iget-object p1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 8712
    :goto_31
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_4e

    .line 8713
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 8714
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 8715
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v0, v5}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v3

    const/4 v4, 0x1

    .line 8717
    invoke-virtual {p0, v3, v1, p2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_4e
    return-void
.end method

.method public setAllIndexesToMax()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8724
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 8725
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .registers 16

    .line 8551
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8552
    :try_start_7
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10d

    .line 8553
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 8554
    invoke-virtual {p0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result p1

    .line 8555
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 8556
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 8558
    :cond_21
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v3

    .line 8566
    :goto_2d
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    if-ne p2, v6, :cond_39

    move v6, v4

    goto :goto_3a

    :cond_39
    move v6, v3

    .line 8567
    :goto_3a
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_3f
    if-ltz v7, :cond_74

    .line 8569
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v8

    aget-object v8, v8, v7

    .line 8570
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v7, v9, :cond_71

    sget-object v10, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v10, v10, v7

    if-ne v10, v9, :cond_71

    if-nez v5, :cond_5b

    .line 8572
    invoke-virtual {v8, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v9

    if-nez v9, :cond_71

    .line 8573
    :cond_5b
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v9, p1, v10, v7}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v9

    .line 8574
    invoke-virtual {v8, v9, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    if-eqz v6, :cond_71

    .line 8577
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 8578
    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v10

    .line 8577
    invoke-virtual {v8, v9, v10, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    :cond_71
    add-int/lit8 v7, v7, -0x1

    goto :goto_3f

    :cond_74
    const/4 p4, 0x2

    if-eqz v5, :cond_a0

    .line 8584
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, p4, :cond_a0

    if-ne p2, p4, :cond_a0

    move v6, v3

    .line 8586
    :goto_7e
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_a0

    .line 8587
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 8588
    sget-object v8, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 8589
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    :cond_a0
    if-eqz v5, :cond_bf

    .line 8597
    new-instance v6, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 8600
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mshouldSkipDeviceAlias(Lcom/android/server/audio/AudioService;I)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 8601
    new-instance v6, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda1;-><init>()V

    .line 8604
    :cond_b4
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceAliasManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/DeviceAliasManager;

    move-result-object v7

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v7, p2, v8, v6}, Lcom/samsung/android/server/audio/DeviceAliasManager;->apply(IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 8607
    :cond_bf
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_a .. :try_end_c0} :catchall_10a

    .line 8608
    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_10d

    if-eqz v5, :cond_109

    .line 8612
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_d0

    add-int/lit8 v2, v2, 0x5

    .line 8613
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 p1, p1, 0x5

    .line 8614
    div-int/lit8 p1, p1, 0xa

    .line 8621
    :cond_d0
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p2

    if-ne v1, p2, :cond_ed

    if-nez p3, :cond_e4

    const-string p2, "AS.AudioService"

    const-string v1, "No caller for volume_changed event"

    .line 8623
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8625
    :cond_e4
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p2, v2, p1, v1, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 8638
    :cond_ed
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p2, v0, :cond_109

    if-eqz v2, :cond_f5

    if-eqz p1, :cond_f9

    :cond_f5
    if-nez v2, :cond_102

    if-eqz p1, :cond_102

    .line 8640
    :cond_f9
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    if-nez p1, :cond_fe

    move v3, v4

    :cond_fe
    invoke-static {p0, p4, v3, p3}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToSoundEventReceiver(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V

    goto :goto_109

    .line 8644
    :cond_102
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/16 p2, 0x100

    invoke-static {p0, p2, p1, p3}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToSoundEventReceiver(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V

    :cond_109
    :goto_109
    return v5

    :catchall_10a
    move-exception p0

    .line 8607
    :try_start_10b
    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    :try_start_10c
    throw p0

    :catchall_10d
    move-exception p0

    .line 8608
    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_10d

    throw p0
.end method

.method public final setStreamVolumeIndex(II)V
    .registers 5

    .line 8385
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_22

    if-nez p1, :cond_22

    .line 8386
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-nez v0, :cond_22

    .line 8387
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRemoteMic()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "AS.AudioService"

    const-string v1, "SCO stream volume can be muted while remote mic is active"

    .line 8388
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    .line 8396
    :cond_22
    :goto_22
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6c

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p2, v1, :cond_6c

    .line 8398
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    .line 8399
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v1, :cond_36

    const/4 v0, 0x0

    :cond_36
    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v0

    .line 8402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "l_volume_fine_key;index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "device"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8406
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object p0

    new-instance p2, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6f

    .line 8411
    :cond_6c
    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    :goto_6f
    return-void
.end method

.method public updateNoPermMinIndex(I)V
    .registers 3

    mul-int/lit8 p1, p1, 0xa

    .line 8209
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 8210
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_24

    .line 8211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mIndexMinNoPerm for stream "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8212
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :cond_24
    return-void
.end method
