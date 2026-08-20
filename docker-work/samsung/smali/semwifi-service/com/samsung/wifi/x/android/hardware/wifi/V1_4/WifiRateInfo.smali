.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;
.super Ljava/lang/Object;
.source "WifiRateInfo.java"


# instance fields
.field public bitRateInKbps:I

.field public bw:I

.field public nss:I

.field public preamble:I

.field public rateMcsIdx:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    .line 21
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    .line 25
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 92
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 97
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 96
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 102
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    .line 103
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;",
            ">;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 131
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 132
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 133
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 135
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    mul-int/lit8 v5, v4, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 137
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 140
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

    .line 35
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 38
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    .line 39
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 42
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    if-eq v2, v3, :cond_21

    return v1

    .line 45
    :cond_21
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    if-eq v2, v3, :cond_28

    return v1

    .line 48
    :cond_28
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    if-eq v2, v3, :cond_2f

    return v1

    .line 51
    :cond_2f
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    if-eq p0, p1, :cond_36

    return v1

    :cond_36
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    .line 63
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 113
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 114
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 115
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 116
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    const-wide/16 v0, 0x10

    add-long/2addr p3, v0

    .line 117
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x14

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 87
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".preamble = "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRatePreamble;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .nss = "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateNss;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .bw = "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelWidthInMhz;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .rateMcsIdx = "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .bitRateInKbps = "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 145
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 146
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 147
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 148
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x10

    add-long/2addr p2, v0

    .line 149
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 121
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
