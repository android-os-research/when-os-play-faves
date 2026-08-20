.class public Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
.source "DeriveBufferGroup.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->TAG:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;-><init>(Landroid/os/Parcel;)V

    .line 34
    const-class v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)V
    .registers 4
    .param p1, "primaryBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/List;)V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 79
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .registers 2

    .line 118
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "primary-buffer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 111
    invoke-interface {v3, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "derivative-buffers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    .line 112
    invoke-super {p0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 110
    const-string v2, "    "

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->contentToStringln(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
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

    .line 45
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 97
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    .line 98
    .local v0, "copied":Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-object v1, v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 99
    return-object v0
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlanesFormat()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getPlanesFormat()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 68
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist release()V
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->release()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 86
    return-void
.end method

.method public blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 60
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_7

    .line 61
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 62
    :cond_7
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->contentToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    return-void
.end method
