.class final Landroid/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o mEnd:I

.field greylist-max-o mEntryValid:Z

.field greylist-max-o mIndex:I

.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;)V
    .registers 3
    .param p1, "this$0"    # Landroid/util/MapCollections;

    .line 81
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iput-object p1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 82
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 84
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_36

    .line 143
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 144
    return v1

    .line 146
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v5, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v4, v5, v3}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v1, v3

    goto :goto_35

    :cond_34
    nop

    .line 147
    :goto_35
    return v1

    .line 140
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 112
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 113
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_e

    .line 125
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 122
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 88
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 153
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_27

    .line 157
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v3, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_1a

    move v3, v2

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 160
    :goto_1e
    if-nez v1, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_25
    xor-int/2addr v2, v3

    .line 159
    return v2

    .line 154
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 76
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 94
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 95
    iput-boolean v1, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 96
    return-object p0

    .line 93
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 101
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_1b

    .line 104
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 105
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 106
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 108
    return-void

    .line 102
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 130
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_d

    .line 134
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 131
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 165
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
