.class public abstract Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.super Ljava/lang/Object;
.source "BerTLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
    }
.end annotation


# instance fields
.field public mLen:I

.field public mLenLength:I

.field public mLevel:I

.field public mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSpecialPrimitiveTag(B)Z
    .registers 2

    const/16 v0, -0x50

    if-eq p0, v0, :cond_b

    const/16 v0, -0x10

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 19
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 24
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 25
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0

    .line 28
    :cond_f
    aget-byte v0, p0, p1

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1c

    .line 29
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    return-object v0

    .line 31
    :cond_1c
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0
.end method

.method public static parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 37
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0

    .line 41
    :cond_10
    aget-byte v0, p0, p1

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1f

    .line 42
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    return-object v0

    .line 44
    :cond_1f
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0
.end method


# virtual methods
.method public getFullLen()I
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getLen()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    return p0
.end method

.method public abstract getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.end method

.method public getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    return-object p0
.end method

.method public parseLength([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 57
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x7f

    if-le v1, v2, :cond_5a

    and-int/lit16 v1, v1, -0x81

    int-to-short v1, v1

    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    if-eq v1, v0, :cond_4b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2b

    add-int/lit8 p2, p2, 0x1

    const/4 v2, 0x0

    shl-int/lit8 v2, v2, 0x8

    .line 64
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    goto :goto_33

    .line 79
    :cond_2b
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string p1, "Invalid format (size)"

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    add-int/2addr p2, v0

    .line 68
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    :cond_3f
    add-int/2addr p2, v0

    .line 72
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    :cond_4b
    add-int/2addr p2, v0

    .line 76
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v2, v2, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    add-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 83
    :cond_5a
    iget p0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    return p0
.end method

.method public abstract remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
.end method

.method public setLevel(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "( tag_len: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", len_length:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLenLength()V
    .registers 3

    .line 111
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_19

    :cond_a
    const/16 v1, 0x100

    if-ge v0, v1, :cond_12

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_19

    :cond_12
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_19

    const/4 v0, 0x3

    .line 116
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    :cond_19
    :goto_19
    return-void
.end method

.method public abstract updateLength()V
.end method

.method public abstract write([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public write()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    return-object v0
.end method

.method public writeLen([BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget p0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 122
    aput-byte p0, p1, p2

    const/4 p0, 0x1

    return p0

    :cond_d
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1e

    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x7f

    .line 125
    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 126
    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0

    :cond_1e
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_38

    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x7e

    .line 129
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 130
    aput-byte v1, p1, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 131
    aput-byte p0, p1, p2

    const/4 p0, 0x3

    return p0

    .line 134
    :cond_38
    new-instance p0, Ljava/lang/Exception;

    const-string/jumbo p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
