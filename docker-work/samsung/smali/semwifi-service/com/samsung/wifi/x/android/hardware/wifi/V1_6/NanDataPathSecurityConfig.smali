.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;
.super Ljava/lang/Object;
.source "NanDataPathSecurityConfig.java"


# instance fields
.field public cipherType:I

.field public passphrase:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public pmk:[B

.field public scid:[B

.field public securityType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 22
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 37
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 104
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 109
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 108
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 114
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    .line 115
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 116
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 163
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 165
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 167
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    mul-int/lit8 v5, v4, 0x48

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 169
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 172
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

    .line 47
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 50
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 51
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 54
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    if-eq v2, v3, :cond_21

    return v1

    .line 57
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 60
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 63
    :cond_37
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    return v1

    :cond_42
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    .line 74
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 75
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

    .line 76
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 71
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

    .line 125
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 126
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 129
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    const/16 v9, 0x20

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    add-long/2addr v4, v6

    .line 133
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 134
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 138
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_42
    if-ge v3, v4, :cond_57

    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    .line 141
    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 142
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_57
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    .line 147
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

    const/16 v4, 0x10

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x48

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 99
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".securityType = "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .cipherType = "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .pmk = "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .passphrase = "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .scid = "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 15

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 177
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->securityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 178
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->cipherType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 181
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->pmk:[B

    const-string v7, "Array element is not of the expected length"

    if-eqz v6, :cond_6f

    .line 183
    array-length v8, v6

    const/16 v9, 0x20

    if-ne v8, v9, :cond_6f

    .line 187
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 191
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x28

    add-long/2addr v5, p2

    add-long/2addr v2, v5

    .line 192
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    add-long/2addr v2, v5

    const/4 v8, 0x0

    .line 193
    invoke-virtual {p1, v2, v3, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 194
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3e
    if-ge v8, v4, :cond_55

    mul-int/lit8 v3, v8, 0x1

    int-to-long v9, v3

    .line 196
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v9, v10, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_55
    add-long/2addr v5, v0

    .line 198
    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    .line 202
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->scid:[B

    if-eqz p0, :cond_69

    .line 204
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_69

    .line 208
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    return-void

    .line 205
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 153
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
