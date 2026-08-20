.class public Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelData"
.end annotation


# static fields
.field public static final MODEL_LOADED:I = 0x1

.field public static final MODEL_NOTLOADED:I = 0x0

.field public static final MODEL_STARTED:I = 0x2

.field public static final MODEL_STOP_PENDING:I = 0x3


# instance fields
.field public mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field public mModelHandle:I

.field public mModelId:Ljava/util/UUID;

.field public mModelState:I

.field public mModelType:I

.field public mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field public mRequested:Z

.field public mRunInBatterySaverMode:Z

.field public mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;


# direct methods
.method public constructor <init>(Ljava/util/UUID;I)V
    .registers 5

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1492
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    const/4 v1, 0x0

    .line 1498
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1499
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1511
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z

    .line 1514
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 1517
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    .line 1520
    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    return-void
.end method

.method public static createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3

    .line 1528
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method public static createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3

    .line 1524
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method public static createModelDataOfUnknownType(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3

    .line 1534
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized callbackToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1663
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_16

    :cond_14
    const-string v1, "null"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCallback()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1589
    :try_start_2
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1590
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearState()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1582
    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    const/4 v1, 0x0

    .line 1583
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1584
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1585
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 1586
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 2

    monitor-enter p0

    .line 1542
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHandle()I
    .registers 2

    monitor-enter p0

    .line 1609
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getModelId()Ljava/util/UUID;
    .registers 2

    monitor-enter p0

    .line 1613
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getModelType()I
    .registers 2

    monitor-enter p0

    .line 1638
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 2

    monitor-enter p0

    .line 1617
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .registers 2

    monitor-enter p0

    .line 1634
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isGenericModel()Z
    .registers 3

    monitor-enter p0

    .line 1646
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isKeyphraseModel()Z
    .registers 2

    monitor-enter p0

    .line 1642
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isModelLoaded()Z
    .registers 4

    monitor-enter p0

    .line 1546
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    monitor-exit p0

    return v1

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isModelNotLoaded()Z
    .registers 2

    monitor-enter p0

    .line 1550
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isModelStarted()Z
    .registers 3

    monitor-enter p0

    .line 1578
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequested()Z
    .registers 2

    monitor-enter p0

    .line 1622
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStopPending()Z
    .registers 3

    monitor-enter p0

    .line 1554
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized modelTypeToString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1682
    :try_start_2
    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    goto :goto_15

    :cond_d
    const-string v0, "Generic"

    goto :goto_15

    :cond_10
    const-string v0, "Keyphrase"

    goto :goto_15

    :cond_13
    const-string v0, "Unknown"

    .line 1687
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestedToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1659
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    if-eqz v1, :cond_12

    const-string v1, "Yes"

    goto :goto_14

    :cond_12
    const-string v1, "No"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V
    .registers 2

    monitor-enter p0

    .line 1538
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1539
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHandle(I)V
    .registers 2

    monitor-enter p0

    .line 1593
    :try_start_1
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1594
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoaded()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1570
    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1571
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotLoaded()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1574
    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1575
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .registers 2

    monitor-enter p0

    .line 1597
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1598
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRequested(Z)V
    .registers 2

    monitor-enter p0

    .line 1626
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1627
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRunInBatterySaverMode(Z)V
    .registers 2

    monitor-enter p0

    .line 1601
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1602
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V
    .registers 2

    monitor-enter p0

    .line 1630
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1631
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStarted()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x2

    .line 1558
    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1559
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStopPending()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x3

    .line 1566
    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1567
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStopped()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1562
    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1563
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldRunInBatterySaverMode()Z
    .registers 2

    monitor-enter p0

    .line 1605
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stateToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1650
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const-string v0, "Unknown state"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1b

    .line 1655
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    const-string v0, "STARTED"
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1b

    .line 1653
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    const-string v0, "LOADED"
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_1b

    .line 1652
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    const-string v0, "NOT_LOADED"
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1b

    .line 1651
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1671
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nModelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->requestedToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->callbackToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->uuidToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->modelTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RunInBatterySaverMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 1671
    monitor-exit p0

    return-object v0

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uuidToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1667
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
