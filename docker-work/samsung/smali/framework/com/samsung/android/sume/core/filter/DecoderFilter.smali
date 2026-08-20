.class public Lcom/samsung/android/sume/core/filter/DecoderFilter;
.super Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.source "DecoderFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/BufferSupplier;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$PyepeIklr7W_-kf1EdYoUmLgcQM(Lcom/samsung/android/sume/core/filter/DecoderFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->supplyMediaBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .registers 2
    .param p1, "codecDescriptor"    # Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    .line 34
    return-void
.end method

.method private blacklist supplyMediaBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 7

    .line 177
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "supplyMediaBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_f

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->awaitCodecToReady()V

    .line 184
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    .line 185
    .local v0, "bufferIdx":I
    sget-object v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeue input buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-gez v0, :cond_6d

    .line 188
    :try_start_38
    const-string v2, "fail to dequeue input buffer, wait 50ms"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_48} :catch_49

    .line 193
    goto :goto_f

    .line 190
    :catch_49
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 192
    sget-object v2, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retry to dequeue input buffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_f

    .line 197
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success to dequeue input buffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 200
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    .line 201
    .local v2, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    .line 202
    .local v3, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "buffer-idx"

    invoke-interface {v3, v5, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-object v3
.end method


# virtual methods
.method protected blacklist configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .registers 12
    .param p1, "configData"    # Lcom/samsung/android/sume/core/message/Message;

    .line 38
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCodec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 42
    .local v1, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const-string v2, "mime"

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v3

    .line 45
    .local v3, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :try_start_2a
    const-string v4, "media-format"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFormat;

    .line 46
    .local v4, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v5, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 47
    .local v5, "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outputChannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "surface":Landroid/view/Surface;
    instance-of v6, v5, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v6, :cond_72

    .line 51
    const-string/jumbo v6, "width"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 52
    .local v6, "width":I
    const-string v7, "height"

    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 54
    .local v7, "height":I
    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    const/16 v9, 0x22

    invoke-interface {v8, v6, v7, v9}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->configure(III)V

    .line 55
    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    invoke-interface {v8}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->getSurface()Landroid/view/Surface;

    move-result-object v8

    move-object v0, v8

    .line 58
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_72
    const-string/jumbo v6, "vendor.qti-ext-dec-forceNonUBWC.value"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 60
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 61
    iget-object v6, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v0, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 63
    iget-object v6, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->signalCodecFromReady()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_8e} :catch_8f

    .line 68
    .end local v0    # "surface":Landroid/view/Surface;
    .end local v4    # "mediaFormat":Landroid/media/MediaFormat;
    .end local v5    # "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    goto :goto_93

    .line 66
    :catch_8f
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :goto_93
    return-void
.end method

.method public blacklist getBufferSupplier()Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/DecoderFilter;)V

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 25
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 74
    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->awaitCodecToReady()V

    .line 77
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_23b

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 83
    .local v2, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v3

    .line 85
    .local v3, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 86
    .local v4, "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 88
    .local v5, "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    .line 89
    iput-boolean v6, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedOutputEos:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dec: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->codecTag:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v7, v0

    .line 95
    .local v7, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :goto_5e
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedOutputEos:Z

    if-nez v0, :cond_67

    goto :goto_7b

    .line 170
    :cond_67
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->isRunInstant()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->release()V

    .line 173
    :cond_70
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 96
    :cond_7b
    :goto_7b
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 97
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    const-string/jumbo v8, "timestampUs"

    const/4 v9, 0x1

    if-nez v0, :cond_d2

    .line 98
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 99
    .local v0, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const-string v10, "chunk-size"

    invoke-interface {v0, v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 100
    .local v10, "chunkSize":I
    const-string v11, "buffer-idx"

    invoke-interface {v0, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 102
    .local v19, "bufferIdx":I
    if-gez v10, :cond_b8

    .line 103
    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    move/from16 v13, v19

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 104
    iput-boolean v9, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    goto :goto_cf

    .line 106
    :cond_b8
    invoke-interface {v0, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 107
    .local v20, "timeUs":J
    iget-object v11, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    const/16 v17, 0x0

    move/from16 v12, v19

    move v14, v10

    move-wide/from16 v15, v20

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 109
    .end local v20    # "timeUs":J
    :goto_cf
    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 112
    .end local v0    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v10    # "chunkSize":I
    .end local v19    # "bufferIdx":I
    :cond_d2
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v0, v7, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 113
    .local v10, "status":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_ed

    .line 114
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    const-string/jumbo v9, "retry dequeue output buffer"

    invoke-virtual {v1, v9, v8}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_239

    .line 115
    :cond_ed
    const/4 v0, -0x2

    if-ne v10, v0, :cond_116

    .line 116
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output format changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_239

    .line 117
    :cond_116
    if-ltz v10, :cond_239

    .line 118
    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_160

    .line 119
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/Object;

    const-string/jumbo v12, "reached EOS"

    invoke-virtual {v1, v12, v11}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-boolean v9, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedOutputEos:Z

    .line 123
    instance-of v0, v5, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v0, :cond_149

    .line 124
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v11, 0x5

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "last-timestampUs"

    invoke-interface {v0, v11, v13, v12}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    goto :goto_160

    .line 126
    :cond_149
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 127
    .restart local v0    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string/jumbo v12, "reached-eos"

    invoke-interface {v0, v12, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-interface {v5, v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 132
    .end local v0    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_160
    :goto_160
    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_239

    .line 133
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_1ad

    iget-wide v11, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gez v0, :cond_1ad

    .line 134
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drop sample of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v11, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " before "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 136
    goto/16 :goto_5e

    .line 142
    :cond_1ad
    instance-of v0, v5, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v0, :cond_1d6

    .line 144
    const-wide/16 v11, 0x28

    :try_start_1b3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b6
    .catch Ljava/lang/InterruptedException; {:try_start_1b3 .. :try_end_1b6} :catch_1b7

    .line 147
    goto :goto_1bd

    .line 145
    :catch_1b7
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 146
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1bd
    invoke-interface {v5}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForSend()Z

    move-result v0

    if-nez v0, :cond_1ce

    .line 152
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    iget-wide v11, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-virtual {v0, v10, v11, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    goto :goto_20f

    .line 150
    :cond_1ce
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v6, "output channel is already closed"

    invoke-direct {v0, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1d6
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 155
    .local v0, "decodedBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v11

    .line 158
    .local v11, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const-class v12, Ljava/nio/ByteBuffer;

    invoke-interface {v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 159
    iget-wide v12, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-interface {v5, v11}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 162
    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, v10, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 164
    .end local v0    # "decodedBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_20f
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v11, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 165
    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# of decoded frames: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->processedFrames:I

    add-int/2addr v11, v9

    iput v11, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->processedFrames:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v10    # "status":I
    :cond_239
    :goto_239
    goto/16 :goto_5e

    .line 78
    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .end local v4    # "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v5    # "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v7    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_23b
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 79
    new-instance v0, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string v2, "no media-codec given, might be released"

    invoke-direct {v0, v2}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
