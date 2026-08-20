.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;
.super Ljava/lang/Object;
.source "NanEnableRequest.java"


# instance fields
.field public configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

.field public debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

.field public hopCountMax:B

.field public operateInBand:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 8
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 17
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 21
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 82
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x5c

    int-to-long v5, v3

    .line 87
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 86
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 92
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    mul-int/lit8 v5, v3, 0x5c

    int-to-long v5, v5

    .line 93
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;",
            ">;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 124
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 126
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x5c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 128
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    mul-int/lit8 v5, v4, 0x5c

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 130
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 31
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 34
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 35
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 38
    :cond_1e
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    if-eq v2, v3, :cond_25

    return v1

    .line 41
    :cond_25
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    return v1

    .line 44
    :cond_30
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    return v1

    :cond_3b
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 54
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 56
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 105
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    .line 108
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 109
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    const-wide/16 v0, 0x2c

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x5c

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 77
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".operateInBand = "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .hopCountMax = "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .configParams = "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .debugConfigs = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 140
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    if-eqz v2, :cond_27

    .line 142
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_27

    .line 146
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    .line 149
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 150
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    const-wide/16 v0, 0x2c

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void

    .line 143
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 114
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x5c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
