.class public final Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private antennaPairSelection:I

.field private authPayloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private authType:I

.field private bleSID:I

.field private dataEncryptionType:I

.field private deviceRole:I

.field private deviceType:I

.field private enableDualAoa:Z

.field private maxRrRetry:I

.field private needScreenOffRanging:Z

.field private needToReportSubscribersRanging:Z

.field private rangingInterval:I

.field private targetDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    if-eqz v1, :cond_55

    iget v9, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    const/16 v2, 0x64

    if-lt v9, v2, :cond_4d

    const/16 v2, 0x7530

    if-gt v9, v2, :cond_4d

    iget v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    if-nez v2, :cond_1a

    const v2, 0x1d4c0

    div-int/2addr v2, v9

    iput v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    :cond_1a
    iget v12, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    const/4 v2, -0x1

    if-eq v12, v2, :cond_45

    iget v13, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    if-eq v13, v2, :cond_3d

    new-instance v15, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;

    iget v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    iget v3, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    iget-object v4, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    iget-boolean v5, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    iget-boolean v6, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    iget-object v7, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    iget v10, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    iget v11, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;-><init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIIILcom/samsung/android/mcf/ranging/McfUWBRangingConfig$a;)V

    return-object v15

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setDeviceType is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setDeviceRole is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging Interval value should be between 100 and 30000."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setRangingData is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAntennaPairSelection(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid antennaPairSelection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthPayloads(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "authPayloads is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthType(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    return-object p0
.end method

.method public setDataEncryption(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataEncryptionType is wrong"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_e
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    return-object p0
.end method

.method public setDeviceRole(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 5

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deviceRole : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    return-object p0
.end method

.method public setDeviceType(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 5

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    return-object p0
.end method

.method public setEnableDualAoa(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    return-object p0
.end method

.method public setMaxRrRetry(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3

    if-lez p1, :cond_5

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxRrRetry must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRangingAppId(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    return-object p0
.end method

.method public setRangingInterval(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    return-object p0
.end method

.method public setReportSubscribersRanging(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    return-object p0
.end method

.method public setScreenOffScan(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    return-object p0
.end method

.method public setTargetBluetoothDevice(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    return-object p0

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bluetoothDevices is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetMcfDevice(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/McfDevice;",
            ">;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfDevice;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    return-object p0

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mcfDevices is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
