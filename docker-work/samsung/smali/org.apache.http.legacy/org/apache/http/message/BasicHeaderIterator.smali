.class public Lorg/apache/http/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final allHeaders:[Lorg/apache/http/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lorg/apache/http/Header;Ljava/lang/String;)V
    .registers 5
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "name"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p1, :cond_11

    .line 90
    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    .line 91
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    .line 92
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    .line 93
    return-void

    .line 86
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header array must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected filterHeader(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 128
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    aget-object v1, v1, p1

    .line 129
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 128
    :goto_16
    return v0
.end method

.method protected findNext(I)I
    .registers 5
    .param p1, "from"    # I

    .line 106
    const/4 v0, -0x1

    if-ge p1, v0, :cond_4

    .line 107
    return v0

    .line 109
    :cond_4
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 110
    .local v1, "to":I
    const/4 v2, 0x0

    .line 111
    .local v2, "found":Z
    :goto_a
    if-nez v2, :cond_15

    if-ge p1, v1, :cond_15

    .line 112
    add-int/lit8 p1, p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v2

    goto :goto_a

    .line 115
    :cond_15
    if-eqz v2, :cond_18

    move v0, p1

    :cond_18
    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 135
    iget v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lorg/apache/http/Header;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    .line 150
    .local v0, "current":I
    if-ltz v0, :cond_f

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    .line 156
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    aget-object v1, v1, v0

    return-object v1

    .line 151
    :cond_f
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
