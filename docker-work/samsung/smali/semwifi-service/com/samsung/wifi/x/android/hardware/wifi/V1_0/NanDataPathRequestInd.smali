.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;
.super Ljava/lang/Object;
.source "NanDataPathRequestInd.java"


# instance fields
.field public appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public discoverySessionId:B

.field public ndpInstanceId:I

.field public peerDiscMacAddr:[B

.field public securityRequired:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 15
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    .line 19
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    .line 24
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 99
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 104
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 103
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 109
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 110
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 111
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 154
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 155
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 156
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 158
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 160
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 163
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

    .line 42
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    if-eq v2, v3, :cond_11

    return v1

    .line 45
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    .line 46
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 49
    :cond_1a
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 52
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 55
    :cond_2c
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    if-eq v2, v3, :cond_33

    return v1

    .line 58
    :cond_33
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    return v1

    :cond_3e
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    .line 67
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    .line 71
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 120
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    const-wide/16 v4, 0x1

    add-long v4, p3, v4

    .line 123
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    const/4 v7, 0x6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 126
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    .line 127
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long/2addr v4, v6

    .line 129
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 130
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 134
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v4, :cond_60

    mul-int/lit8 v3, v2, 0x1

    int-to-long v5, v3

    .line 137
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 138
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_60
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x20

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 94
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".discoverySessionId = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerDiscMacAddr = "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .ndpInstanceId = "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .securityRequired = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .appInfo = "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 13

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 168
    iget-byte v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    .line 171
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    if-eqz v4, :cond_5e

    .line 173
    array-length v5, v4

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5e

    .line 177
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 180
    iget v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    .line 181
    iget-boolean v8, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 183
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x10

    add-long/2addr p2, v7

    add-long/2addr v2, p2

    .line 184
    invoke-virtual {p1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v4, p2

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 186
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v6, 0x1

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_42
    if-ge v2, v6, :cond_59

    mul-int/lit8 v4, v2, 0x1

    int-to-long v4, v4

    .line 188
    iget-object v7, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_59
    add-long/2addr p2, v0

    .line 190
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void

    .line 174
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 144
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 145
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
