.class public interface abstract Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.super Ljava/lang/Object;
.source "MediaBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sume/core/format/Copyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/MediaBuffer$BufferFlag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/samsung/android/sume/core/format/Copyable<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist BUFFER_FLAG_PACKED_EVALUATION_BUFFER:I = 0x2

.field public static final blacklist BUFFER_FLAG_PACKED_IO_BUFFERS:I = 0x1


# direct methods
.method public static blacklist emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 112
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->allocatePlaceHolder()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 145
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist groupOf(ILjava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "primaryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 177
    .local p1, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static varargs blacklist groupOf(I[Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "primaryId"    # I
    .param p1, "buffers"    # [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 174
    array-length v0, p1

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :cond_9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_d
    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(ILjava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "primary"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 171
    .local p1, "derivatives":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)V

    return-object v0
.end method

.method public static blacklist groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 183
    .local p0, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(ILjava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist groupOf([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "buffers"    # [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 180
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(I[Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 115
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 116
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 118
    :cond_f
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 133
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 148
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            "TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 162
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/types/MediaType;",
            "TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 166
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->wrapPlaceHolder(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofEmpty(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofEmpty(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofShared(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->sharedOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofShared(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->sharedOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sharedOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 130
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sharedOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 159
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->sharedOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist addExtra(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist asList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 1

    .line 86
    return-object p0
.end method

.method public varargs abstract blacklist containFlags([I)Z
.end method

.method public varargs abstract blacklist containsAllExtra([Ljava/lang/String;)Z
.end method

.method public varargs abstract blacklist containsAnyExtra([Ljava/lang/String;)Z
.end method

.method public abstract blacklist containsExtra(Ljava/lang/String;)Z
.end method

.method public abstract blacklist contentToString()Ljava/lang/String;
.end method

.method public abstract blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract blacklist convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation
.end method

.method public abstract blacklist getChannels()I
.end method

.method public abstract blacklist getCols()I
.end method

.method public abstract blacklist getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation
.end method

.method public abstract blacklist getExtra()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
.end method

.method public abstract blacklist getPlanesFormat()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRows()I
.end method

.method public abstract blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist release()V
.end method

.method public abstract blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation
.end method

.method public abstract blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setExtra(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method public abstract blacklist size()J
.end method

.method public abstract blacklist stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end method
