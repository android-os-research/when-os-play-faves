.class public Lorg/apache/http/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final allHeaders:Ljava/util/List;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "headers"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_13

    .line 97
    iput-object p1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    .line 98
    iput-object p2, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 100
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 101
    return-void

    .line 93
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header list must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected filterHeader(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 136
    iget-object v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 137
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_6
    iget-object v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected findNext(I)I
    .registers 5
    .param p1, "from"    # I

    .line 114
    const/4 v0, -0x1

    if-ge p1, v0, :cond_4

    .line 115
    return v0

    .line 117
    :cond_4
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 118
    .local v1, "to":I
    const/4 v2, 0x0

    .line 119
    .local v2, "found":Z
    :goto_d
    if-nez v2, :cond_18

    if-ge p1, v1, :cond_18

    .line 120
    add-int/lit8 p1, p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicListHeaderIterator;->filterHeader(I)Z

    move-result v2

    goto :goto_d

    .line 123
    :cond_18
    if-eqz v2, :cond_1b

    move v0, p1

    :cond_1b
    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 148
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

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

    .line 184
    invoke-virtual {p0}, Lorg/apache/http/message/BasicListHeaderIterator;->nextHeader()Lorg/apache/http/Header;

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

    .line 162
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 163
    .local v0, "current":I
    if-ltz v0, :cond_15

    .line 167
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 170
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    return-object v1

    .line 164
    :cond_15
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

    .line 194
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    if-ltz v0, :cond_13

    .line 197
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 199
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 200
    return-void

    .line 195
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No header to remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
