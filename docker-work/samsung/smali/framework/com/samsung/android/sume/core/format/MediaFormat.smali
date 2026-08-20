.class public interface abstract Lcom/samsung/android/sume/core/format/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# direct methods
.method public static varargs blacklist audioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist imageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mutableEmptyOf()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 1

    .line 92
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>()V

    return-object v0
.end method

.method public static varargs blacklist mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p0, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs blacklist mutableVideoOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 3
    .param p0, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 72
    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist scalarOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist bytePerSample()F
.end method

.method public abstract blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist contains(Ljava/lang/String;)Z
.end method

.method public varargs abstract blacklist containsAllOf([Ljava/lang/String;)Z
.end method

.method public varargs abstract blacklist containsAnyOf([Ljava/lang/String;)Z
.end method

.method public abstract blacklist contentToString()Ljava/lang/String;
.end method

.method public abstract blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public blacklist dimension()I
    .registers 3

    .line 36
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public abstract blacklist get(Ljava/lang/String;)Ljava/lang/Object;
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

.method public abstract blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getBatch()I
.end method

.method public abstract blacklist getChannels()I
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 4

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist getCols()I
.end method

.method public abstract blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
.end method

.method public blacklist getDimensionRect()Landroid/graphics/Rect;
    .registers 5

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public abstract blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
.end method

.method public abstract blacklist getPlanesFormat()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRows()I
.end method

.method public abstract blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
.end method

.method public abstract blacklist getStride()I
.end method

.method public abstract blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
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

.method public abstract blacklist size()J
.end method

.method public abstract blacklist toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">()TV;"
        }
    .end annotation
.end method

.method public blacklist total()I
    .registers 3

    .line 37
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->dimension()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
