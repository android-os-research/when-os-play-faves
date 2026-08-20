.class Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
.source "StapleBufferAllocator.java"


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .registers 2
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 13
    return-void
.end method

.method private blacklist allocAsByteBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5

    .line 71
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist allocAsNumber()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 52
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 53
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 54
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 55
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 56
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 57
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 58
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_87

    .line 59
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 60
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 67
    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_87
    return-object v0

    .line 62
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented alloc data-type yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented alloc yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocAsNumber()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 19
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocAsByteBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist allocatePlaceHolder()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4

    .line 27
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4

    .line 23
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 39
    .local p1, "data":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_16

    .line 40
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 41
    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const-string v1, "file-descriptor"

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1d

    .line 43
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_16
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 45
    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_1d
    return-object v0
.end method

.method blacklist wrapPlaceHolder(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 31
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method
