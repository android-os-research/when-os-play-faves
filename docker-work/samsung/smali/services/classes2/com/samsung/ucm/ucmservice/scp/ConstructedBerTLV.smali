.class public Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "ConstructedBerTLV.java"


# instance fields
.field public mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/ucm/ucmservice/scp/BerTLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    .line 16
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    return-void

    .line 13
    :cond_16
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string p1, "Inconsistent tag"

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 22
    iput p4, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    .line 23
    new-instance p4, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {p4, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object p4, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 24
    invoke-virtual {p4}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result p4

    add-int/2addr p2, p4

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parseLength([BI)I

    move-result p4

    add-int/2addr p2, p4

    .line 26
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result p4

    const-string v0, ")"

    if-gt p4, p3, :cond_6b

    .line 29
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    const/4 p3, 0x0

    .line 31
    :goto_26
    iget p4, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    if-ge p3, p4, :cond_42

    .line 32
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, p4, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object p4

    .line 33
    invoke-virtual {p4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v1

    add-int/2addr p2, v1

    .line 34
    invoke-virtual {p4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v1

    add-int/2addr p3, v1

    .line 35
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_42
    if-ne p3, p4, :cond_45

    return-void

    .line 38
    :cond_45
    new-instance p1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid format exception (buffer size expected:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " read: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_6b
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

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    return-void
.end method

.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 99
    :cond_9
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 100
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 102
    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 115
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method public setLevel(I)V
    .registers 4

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    .line 50
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 51
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "\n"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 73
    :goto_1e
    iget v3, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    if-ge v2, v3, :cond_2a

    const-string v3, "  "

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2a
    const-string v2, "+--"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 79
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLength()V
    .registers 4

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 58
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 61
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    .line 62
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    goto :goto_9

    .line 64
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLenLength()V

    return-void
.end method

.method public write([BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    .line 85
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->writeLen([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 88
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_15

    .line 92
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result p0

    return p0
.end method
