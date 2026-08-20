.class public Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    }
.end annotation


# static fields
.field public static final ANTENNA_PAIR_SELECTION_AOA_LANDSCAPE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANTENNA_PAIR_SELECTION_AOA_PORTRAIT:I = 0x1

.field public static final ANTENNA_PAIR_SELECTION_FOR_RANGING:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANTENNA_PAIR_SELECTION_INVALID:I = -0x1

.field public static final AUTH_TYPE_APP:I = 0x3

.field public static final AUTH_TYPE_CONTACT:I = 0x1

.field public static final AUTH_TYPE_NONE:I = 0x0

.field public static final DATA_ENCRYPTION_TYPE_MCF:I = 0x0

.field public static final DATA_ENCRYPTION_TYPE_SMARTTHINGS:I = 0x1

.field public static final DEFAULT_RANGING_INTERVAL:I = 0x3e8

.field public static final DEVICE_ROLE_INITIATOR:I = 0x1

.field public static final DEVICE_ROLE_RESPONDER:I = 0x0

.field public static final DEVICE_TYPE_CONTROLEE:I = 0x0

.field public static final DEVICE_TYPE_CONTROLLER:I = 0x1

.field public static final KEY_ANTENNA_PAIR_SELECTION:Ljava/lang/String; = "antennaPairSelection"

.field public static final KEY_DEVICE_ROLE:Ljava/lang/String; = "deviceRole"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final KEY_ENABLE_DUAL_AOA:Ljava/lang/String; = "enableDualAoa"

.field public static final KEY_MAX_RR_RETRY:Ljava/lang/String; = "maxRrRetry"

.field public static final KEY_RANGING_AUTH_PAYLOAD:Ljava/lang/String; = "rangingAuthPayload"

.field public static final KEY_RANGING_AUTH_TYPE:Ljava/lang/String; = "rangingAuth"

.field public static final KEY_RANGING_ENCRYPT_TYPE:Ljava/lang/String; = "useAppEncrypt"

.field public static final KEY_RANGING_INTERVAL:Ljava/lang/String; = "rangingInterval"

.field public static final KEY_RANGING_TARGET:Ljava/lang/String; = "rangingTarget"

.field public static final KEY_SCREEN_OFF_SCAN:Ljava/lang/String; = "screenOffScan"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final KEY_SUBSCRIBERS_RANGING:Ljava/lang/String; = "subDevRanging"

.field public static final MAX_RANGING_INTERVAL:I = 0x7530

.field public static final MIN_RANGING_INTERVAL:I = 0x64


# instance fields
.field public final antennaPairSelection:I

.field public authPayloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public final authType:I

.field public final bleSID:I

.field public final dataEncryptionType:I

.field public final deviceRole:I

.field public final deviceType:I

.field public final enableDualAoa:Z

.field public final maxRrRetry:I

.field public final needScreenOffRanging:Z

.field public final needToReportSubscribersRanging:Z

.field public final rangingInterval:I

.field public final targetDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIII)V
    .registers 14
    .param p7    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "[B>;ZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZIIIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    iput p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    iput p3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    iput-object p4, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    iput-boolean p6, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    iput-object p7, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    iput p9, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    iput p10, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    iput p11, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    iput p12, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    iput p13, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIIILcom/samsung/android/mcf/ranging/McfUWBRangingConfig$a;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;-><init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    const-string v0, "antennaPairSelection"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    const-string/jumbo v0, "rangingAuth"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    const-string/jumbo v0, "rangingAuthPayload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_4f
    const-string/jumbo v0, "subDevRanging"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    const-string/jumbo v0, "screenOffScan"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    const-string/jumbo v0, "rangingTarget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    const-string v0, "enableDualAoa"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    const-string/jumbo v0, "rangingInterval"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    const-string v0, "maxRrRetry"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    const-string/jumbo v0, "useAppEncrypt"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    const-string v0, "deviceRole"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    const-string v0, "deviceType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    return-void
.end method


# virtual methods
.method public getAntennaPairSelection()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public getAuthPayloads()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getAuthType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    return p0
.end method

.method public getBleSID()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    const-string/jumbo v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    const-string v2, "antennaPairSelection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    const-string/jumbo v2, "rangingAuth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_45
    const-string/jumbo v2, "rangingAuthPayload"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4b
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    const-string/jumbo v2, "subDevRanging"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    const-string/jumbo v2, "screenOffScan"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    const-string/jumbo v2, "rangingTarget"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6d
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    const-string v2, "enableDualAoa"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    const-string/jumbo v2, "rangingInterval"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    const-string v2, "maxRrRetry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    const-string/jumbo v2, "useAppEncrypt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    const-string v2, "deviceRole"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getDataEncryption()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    return p0
.end method

.method public getDeviceRole()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    return p0
.end method

.method public getDeviceType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    return p0
.end method

.method public getMaxRrRetry()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    return p0
.end method

.method public getRangingInterval()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    return p0
.end method

.method public getTargetDevices()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isEnabledDualAoa()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    return p0
.end method

.method public isNeedScreenOffRanging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    return p0
.end method

.method public isNeedToReportSubscribersRanging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McfUWBRangingData{bleSID=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", antennaPairSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authPayloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needSubscribersRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needScreenOffRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableDualAoa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rangingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRrRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataEncryptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
