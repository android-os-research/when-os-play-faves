.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;
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

.field public securityType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 22
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 91
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 95
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 101
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    .line 102
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 145
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 146
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 147
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 149
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 151
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 154
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

    .line 40
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 43
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 44
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 47
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    if-eq v2, v3, :cond_21

    return v1

    .line 50
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 53
    :cond_2c
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return v1

    :cond_37
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 64
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 65
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 61
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

    .line 112
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 113
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 116
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    const/16 v9, 0x20

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    add-long/2addr v4, v6

    .line 120
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 121
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 125
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v4, :cond_57

    mul-int/lit8 v3, v2, 0x1

    int-to-long v5, v3

    .line 128
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 129
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_57
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x38

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 86
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".securityType = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .cipherType = "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .pmk = "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .passphrase = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 13

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 159
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 160
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 163
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    if-eqz v6, :cond_58

    .line 165
    array-length v7, v6

    const/16 v8, 0x20

    if-ne v7, v8, :cond_58

    .line 169
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 173
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x28

    add-long/2addr p2, v5

    add-long/2addr v2, p2

    .line 174
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    const/4 v5, 0x0

    .line 175
    invoke-virtual {p1, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 176
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3c
    if-ge v5, v4, :cond_53

    mul-int/lit8 v3, v5, 0x1

    int-to-long v6, v3

    .line 178
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_53
    add-long/2addr p2, v0

    .line 180
    invoke-virtual {p1, p2, p3, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void

    .line 166
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 135
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 136
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
