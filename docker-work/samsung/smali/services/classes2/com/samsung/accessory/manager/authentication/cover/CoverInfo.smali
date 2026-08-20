.class public Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "CoverInfo.java"


# instance fields
.field public HexDecimalTable:[Ljava/lang/String;

.field public chip_id:[B

.field public color:I

.field public cover_id:[B

.field public id:Ljava/lang/String;

.field public idVersion:I

.field public model:I

.field public month:I

.field public reserved:B

.field public serial:Ljava/lang/String;

.field public smapp:I

.field public sn:[B

.field public type:I

.field public url:I

.field public valid:Z

.field public vendorInfo:[B

.field public year:I


# direct methods
.method public constructor <init>([B)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x17

    new-array v3, v2, [B

    .line 4
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v3, 0xe

    new-array v3, v3, [B

    .line 6
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    const/16 v3, 0x9

    new-array v3, v3, [B

    .line 7
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    const/4 v3, 0x2

    new-array v3, v3, [B

    .line 18
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    const/4 v3, 0x0

    .line 21
    iput-boolean v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    const-string v4, "0"

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "3"

    const-string v8, "4"

    const-string v9, "5"

    const-string v10, "6"

    const-string v11, "7"

    const-string v12, "8"

    const-string v13, "9"

    const-string v14, "A"

    const-string v15, "B"

    const-string v16, "C"

    const-string v17, "D"

    const-string v18, "E"

    const-string v19, "F"

    const-string v20, "G"

    const-string v21, "H"

    const-string v22, "J"

    const-string v23, "K"

    const-string v24, "L"

    const-string v25, "M"

    const-string v26, "N"

    const-string v27, "P"

    const-string v28, "Q"

    const-string v29, "R"

    const-string v30, "S"

    const-string v31, "T"

    const-string v32, "V"

    const-string v33, "W"

    const-string v34, "X"

    const-string v35, "Y"

    const-string v36, "Z"

    const-string v37, "I"

    const-string v38, "O"

    const-string v39, "U"

    .line 111
    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    if-eqz v1, :cond_82

    .line 24
    array-length v3, v1

    if-ne v3, v2, :cond_82

    .line 25
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->setId()V

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    :cond_82
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 149
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "null"

    return-object p0
.end method

.method public final convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_44

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_44

    .line 123
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 125
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    add-int/lit8 v2, v1, 0x2

    .line 126
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    .line 128
    :try_start_1d
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_2b

    const-string v1, "0"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_2b
    if-ltz v1, :cond_38

    .line 131
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_38

    .line 132
    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_38
    const-string v1, " "

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_3d} :catch_3d

    :catch_3d
    :goto_3d
    move v1, v2

    goto :goto_f

    .line 140
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public getColor()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    return p0
.end method

.method public getCoverId()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getId()[B
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    return-object p0
.end method

.method public getIdVersion()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    return p0
.end method

.method public getModel()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    return p0
.end method

.method public getMonth()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->month:I

    return p0
.end method

.method public getReserved()B
    .registers 1

    .line 108
    iget-byte p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return p0
.end method

.method public getSmapp()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    return p0
.end method

.method public getSn()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    return p0
.end method

.method public getUrl()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    return p0
.end method

.method public getVendorInfo()[B
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getYear()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    return p0
.end method

.method public isValid()Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    return p0
.end method

.method public final setId()V
    .registers 6

    .line 33
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    const/16 v4, 0x9

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    const/4 v1, 0x4

    .line 38
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->month:I

    .line 39
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    const/16 v1, 0xf

    .line 40
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    const/16 v1, 0x10

    .line 41
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    const/16 v1, 0x11

    .line 42
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    const/16 v1, 0x12

    .line 44
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    .line 45
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    const/16 v3, 0x13

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x14

    .line 46
    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/16 v1, 0x15

    .line 47
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    const/16 v1, 0x16

    .line 48
    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    return-void
.end method
