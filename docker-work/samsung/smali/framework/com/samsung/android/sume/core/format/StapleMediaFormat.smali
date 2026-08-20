.class Lcom/samsung/android/sume/core/format/StapleMediaFormat;
.super Ljava/lang/Object;
.source "StapleMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;


# instance fields
.field blacklist impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V
    .registers 2
    .param p1, "mutableMediaFormat"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist bytePerSample()F
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->bytePerSample()F

    move-result v0

    return v0
.end method

.method public blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 107
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public blacklist contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAllOf([Ljava/lang/String;)Z
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->containsAllOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAnyOf([Ljava/lang/String;)Z
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contentToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 87
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatch()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getBatch()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCols()I
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlanesFormat()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getPlanesFormat()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRows()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStride()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getStride()I

    move-result v0

    return v0
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()J
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->deepCopy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 133
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
