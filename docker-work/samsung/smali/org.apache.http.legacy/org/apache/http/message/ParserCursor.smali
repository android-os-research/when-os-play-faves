.class public Lorg/apache/http/message/ParserCursor;
.super Ljava/lang/Object;
.source "ParserCursor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lowerBound:I

.field private pos:I

.field private final upperBound:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-ltz p1, :cond_16

    .line 61
    if-gt p1, p2, :cond_e

    .line 64
    iput p1, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    .line 65
    iput p2, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    .line 66
    iput p1, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    .line 67
    return-void

    .line 62
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Lower bound cannot be greater then upper bound"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Lower bound cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public atEnd()Z
    .registers 3

    .line 92
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    iget v1, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getLowerBound()I
    .registers 2

    .line 70
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    return v0
.end method

.method public getPos()I
    .registers 2

    .line 78
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    return v0
.end method

.method public getUpperBound()I
    .registers 2

    .line 74
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 96
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 97
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 98
    iget v1, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 99
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 100
    iget v2, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 102
    iget v1, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 103
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 104
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updatePos(I)V
    .registers 3
    .param p1, "pos"    # I

    .line 82
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    if-lt p1, v0, :cond_11

    .line 85
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    if-gt p1, v0, :cond_b

    .line 88
    iput p1, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    .line 89
    return-void

    .line 86
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 83
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
