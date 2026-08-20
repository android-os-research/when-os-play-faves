.class public interface abstract Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.super Ljava/lang/Object;
.source "MutableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;
.implements Lcom/samsung/android/sume/core/format/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/format/MediaFormat;",
        "Lcom/samsung/android/sume/core/format/Copyable<",
        "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
        ">;"
    }
.end annotation


# direct methods
.method public static varargs blacklist of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p0, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setChannels(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist setDimension(II)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 22
    invoke-interface {p0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 23
    invoke-interface {p0, p2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 24
    return-object p0
.end method

.method public abstract blacklist setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
