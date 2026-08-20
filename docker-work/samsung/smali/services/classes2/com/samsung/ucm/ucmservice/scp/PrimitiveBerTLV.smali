.class public Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "PrimitiveBerTLV.java"


# instance fields
.field public mValue:[B


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveBerTLV :: tag:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BERTLV::Prim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_3b

    .line 11
    :cond_33
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string p1, "Inconsistent tag"

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    .line 14
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 15
    array-length p1, p2

    iput p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 16
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    .line 17
    invoke-static {p2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 21
    iput p4, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    .line 22
    new-instance p4, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {p4, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object p4, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 23
    invoke-virtual {p4}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result p4

    add-int/2addr p2, p4

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parseLength([BI)I

    move-result p4

    add-int/2addr p2, p4

    .line 25
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result p4

    if-gt p4, p3, :cond_27

    .line 28
    iget p3, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    new-array p4, p3, [B

    iput-object p4, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    const/4 p0, 0x0

    .line 29
    invoke-static {p1, p2, p4, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 26
    :cond_27
    new-instance p1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid format exception (buffer size max:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " got: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()[B
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    return-object p0
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLength()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2f

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\n "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 40
    :goto_12
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    const-string v2, "  "

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    const-string v1, "Value: "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2f
    const-string p0, ""

    return-object p0
.end method

.method public updateLength()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLenLength()V

    return-void
.end method

.method public write([BI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLenLength()V

    .line 55
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->writeLen([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 57
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result p0

    return p0
.end method
