.class public Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;
.super Ljava/lang/Object;
.source "MediaMuxerFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;
.implements Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist cacheId:Ljava/lang/String;

.field private blacklist channelReady:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/ConditionVariable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist contentId:I

.field private blacklist contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field private blacklist cvPause:Landroid/os/ConditionVariable;

.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

.field private blacklist diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

.field private blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field private blacklist muxer:Landroid/media/MediaMuxer;

.field private blacklist outputFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist readyToStart:Ljava/util/concurrent/Semaphore;

.field private blacklist receiveChannelCount:I

.field private blacklist receiveChannelQuery:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist storeCache:Z

.field private final blacklist threadPool:Ljava/util/concurrent/ExecutorService;

.field private final blacklist trackIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/MediaType;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;)V
    .registers 4
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->trackIndexMap:Ljava/util/Map;

    .line 52
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    .line 65
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 66
    return-void
.end method

.method private blacklist feedExistFramesToBufferChannel(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "cachedFd"    # Ljava/io/FileDescriptor;

    .line 166
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string v1, "feedExistFramesToBufferChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 168
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 170
    :cond_24
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 172
    .local v0, "extractor":Landroid/media/MediaExtractor;
    :try_start_29
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/media/MediaExtractor;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3d} :catch_40
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_3d} :catch_40
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3e

    goto :goto_44

    .line 218
    :catchall_3e
    move-exception v1

    goto :goto_49

    .line 215
    :catch_40
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :goto_49
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 219
    throw v1
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .registers 2

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x4
        0x3
        0x6
    .end array-data
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    return-object v0
.end method

.method public blacklist getReceiveChannelCount()I
    .registers 2

    .line 407
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    return v0
.end method

.method public blacklist getReceiveChannelQuery()Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method synthetic blacklist lambda$feedExistFramesToBufferChannel$0$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/media/MediaExtractor;I)V
    .registers 15
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "idx"    # I

    .line 174
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 177
    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    goto :goto_18

    :cond_16
    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 179
    .local v1, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :goto_18
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 180
    .local v2, "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    if-nez v2, :cond_3b

    .line 181
    sget-object v3, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no given buffer-channel for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 185
    :cond_3b
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 187
    :goto_3e
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v3

    long-to-int v3, v3

    .line 188
    .local v3, "sampleSize":I
    if-gez v3, :cond_51

    .line 189
    sget-object v4, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string v5, "parser reached EOS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    nop

    .line 213
    .end local v3    # "sampleSize":I
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 214
    return-void

    .line 193
    .restart local v3    # "sampleSize":I
    :cond_51
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 194
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 197
    .local v6, "readBytes":I
    const/4 v7, 0x1

    if-ne v3, v6, :cond_65

    move v5, v7

    :cond_65
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    .line 199
    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    .line 201
    .local v5, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 202
    .local v8, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    iput v3, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 203
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 205
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_85

    .line 206
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/2addr v7, v9

    iput v7, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 208
    :cond_85
    const-string v7, "buffer-info"

    invoke-interface {v5, v7, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    .line 210
    sget-object v7, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "push to buffer-channel["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[us]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {v2, v5}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 212
    .end local v3    # "sampleSize":I
    .end local v4    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v6    # "readBytes":I
    .end local v8    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    goto :goto_3e
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/util/Pair;Lcom/samsung/android/sume/core/types/MediaType;)Ljava/lang/Boolean;
    .registers 22
    .param p1, "data"    # Landroid/util/Pair;
    .param p2, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 243
    .local v4, "mime":Ljava/lang/String;
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 244
    .local v5, "trackIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[enc: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "tag":Ljava/lang/String;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 248
    .local v7, "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    const/4 v0, 0x0

    .line 249
    .local v0, "numFrames":I
    const/4 v8, 0x0

    .line 250
    .local v8, "reachedEos":Z
    const-wide/16 v9, 0x0

    move/from16 v18, v8

    move v8, v0

    move/from16 v0, v18

    .line 252
    .local v0, "reachedEos":Z
    .local v8, "numFrames":I
    .local v9, "lastTimestampUs":J
    :goto_3e
    if-nez v0, :cond_155

    .line 253
    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v12}, Landroid/os/ConditionVariable;->block()V

    .line 254
    invoke-interface {v7}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 255
    .local v12, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const-string v13, "buffer-info"

    invoke-interface {v12, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaCodec$BufferInfo;

    .line 257
    .local v13, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v15, 0x2

    and-int/2addr v14, v15

    const/4 v15, 0x0

    if-eqz v14, :cond_5c

    .line 258
    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 261
    :cond_5c
    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_7d

    .line 262
    sget-object v14, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "muxer reached EOS"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x1

    move v11, v0

    goto :goto_7e

    .line 261
    :cond_7d
    move v11, v0

    .line 269
    .end local v0    # "reachedEos":Z
    .local v11, "reachedEos":Z
    :goto_7e
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_143

    .line 270
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {v12, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 271
    .local v14, "outputBuffer":Ljava/nio/ByteBuffer;
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 272
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v15, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v15

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 274
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write data[#"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "] from "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ": "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v15, v6

    move-object/from16 v16, v7

    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .local v15, "tag":Ljava/lang/String;
    .local v16, "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "us"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_d1
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v5, v14, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d6} :catch_d7

    .line 279
    goto :goto_db

    .line 277
    :catch_d7
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_db
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputFd size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 284
    .end local v9    # "lastTimestampUs":J
    .local v6, "lastTimestampUs":J
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->isMediaTypeToNotifyEvent(Lcom/samsung/android/sume/core/types/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 285
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/util/Pair;

    new-instance v10, Landroid/util/Pair;

    iget v2, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentId:I

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v4

    .end local v4    # "mime":Ljava/lang/String;
    .local v17, "mime":Ljava/lang/String;
    const-string v4, "contents-id"

    invoke-direct {v10, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v10, v9, v2

    new-instance v2, Landroid/util/Pair;

    const-string v4, "media-type"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v9, v4

    new-instance v2, Landroid/util/Pair;

    add-int/lit8 v8, v8, 0x1

    .line 288
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "number-of-frames"

    invoke-direct {v2, v10, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v2, v9, v4

    .line 285
    const/16 v2, 0x1fc

    invoke-interface {v0, v2, v9}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    move-wide v9, v6

    goto :goto_148

    .line 284
    .end local v17    # "mime":Ljava/lang/String;
    .restart local v4    # "mime":Ljava/lang/String;
    :cond_13f
    move-object/from16 v17, v4

    .end local v4    # "mime":Ljava/lang/String;
    .restart local v17    # "mime":Ljava/lang/String;
    move-wide v9, v6

    goto :goto_148

    .line 269
    .end local v14    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v17    # "mime":Ljava/lang/String;
    .restart local v4    # "mime":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    .restart local v7    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .restart local v9    # "lastTimestampUs":J
    :cond_143
    move-object/from16 v17, v4

    move-object v15, v6

    move-object/from16 v16, v7

    .line 293
    .end local v4    # "mime":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .restart local v17    # "mime":Ljava/lang/String;
    :goto_148
    invoke-interface {v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 294
    .end local v12    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v13    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v2, p1

    move v0, v11

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v4, v17

    goto/16 :goto_3e

    .line 295
    .end local v11    # "reachedEos":Z
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v17    # "mime":Ljava/lang/String;
    .local v0, "reachedEos":Z
    .restart local v4    # "mime":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    :cond_155
    move-object/from16 v17, v4

    move-object v15, v6

    move-object/from16 v16, v7

    .end local v4    # "mime":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .restart local v17    # "mime":Ljava/lang/String;
    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_171

    const-string/jumbo v6, "video"

    goto :goto_173

    :cond_171
    const-string v6, "audio"

    :goto_173
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-timestamp-us"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 296
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method synthetic blacklist lambda$run$2$com-samsung-android-sume-core-filter-MediaMuxerFilter(Ljava/util/List;Lcom/samsung/android/sume/core/types/MediaType;Landroid/util/Pair;)V
    .registers 6
    .param p1, "results"    # Ljava/util/List;
    .param p2, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p3, "data"    # Landroid/util/Pair;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/util/Pair;Lcom/samsung/android/sume/core/types/MediaType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 298
    .local v0, "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-core-filter-MediaMuxerFilter(Ljava/io/File;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .line 323
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 324
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Landroid/system/Int64Ref;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroid/system/Int64Ref;-><init>(J)V

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    .line 325
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v1

    .line 326
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_25
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .registers 10
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "consumed":Z
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_1da

    .line 159
    :pswitch_a
    const/4 v0, 0x0

    goto/16 :goto_1d9

    .line 150
    :pswitch_d
    const-string v1, "cache"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 151
    .local v1, "cacheData":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/cache/DiskCache;Ljava/lang/Boolean;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/sume/core/cache/DiskCache;

    iput-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    .line 152
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    .line 154
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    if-eqz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 156
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk-cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto/16 :goto_1d9

    .line 80
    .end local v1    # "cacheData":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/cache/DiskCache;Ljava/lang/Boolean;>;"
    :pswitch_57
    const-string v1, "output-file"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    .line 81
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_68

    goto :goto_69

    :cond_68
    move v2, v3

    :goto_69
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 82
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputFd size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "cache-id"

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda1;-><init>()V

    .line 85
    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    .line 88
    iget-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    if-nez v4, :cond_11f

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    if-eqz v4, :cond_11f

    if-eqz v2, :cond_11f

    .line 89
    invoke-interface {v4, v2}, Lcom/samsung/android/sume/core/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 90
    .local v2, "cached":Ljava/io/File;
    if-eqz v2, :cond_107

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restore from cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_d8
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 95
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->feedExistFramesToBufferChannel(Ljava/io/FileDescriptor;)V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e5} :catch_ec
    .catchall {:try_start_d8 .. :try_end_e5} :catchall_ea

    .line 99
    nop

    .line 101
    :try_start_e6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_f6

    goto :goto_f5

    .line 99
    :catchall_ea
    move-exception v3

    goto :goto_fc

    .line 96
    :catch_ec
    move-exception v4

    .line 97
    .local v4, "e":Ljava/io/IOException;
    :try_start_ed
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_ea

    .line 99
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_fb

    .line 101
    :try_start_f2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    .line 104
    :goto_f5
    goto :goto_fb

    .line 102
    :catch_f6
    move-exception v4

    .line 103
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_f5

    .line 107
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_fb
    :goto_fb
    goto :goto_11f

    .line 99
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_fc
    if-eqz v1, :cond_106

    .line 101
    :try_start_fe
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102

    .line 104
    goto :goto_106

    .line 102
    :catch_102
    move-exception v4

    .line 103
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .end local v4    # "e":Ljava/io/IOException;
    :cond_106
    :goto_106
    throw v3

    .line 108
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no cache exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v2    # "cached":Ljava/io/File;
    :cond_11f
    :goto_11f
    :try_start_11f
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_12c} :catch_12d

    .line 116
    goto :goto_131

    .line 114
    :catch_12d
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :goto_131
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 120
    const-string v1, "contents-id"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentId:I

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "track-count"

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, "numTracks":I
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 124
    goto :goto_1d9

    .line 126
    .end local v1    # "numTracks":I
    :pswitch_161
    const-string v1, "media-type"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/types/MediaType;

    .line 127
    .local v1, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    const-string v2, "media-format"

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    .line 129
    .local v2, "mediaFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "rotation-degrees"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18c

    .line 130
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, "orientation":I
    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v5, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 132
    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 135
    .end local v4    # "orientation":I
    :cond_18c
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 136
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 138
    :cond_19e
    const-string v3, "height"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 139
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 142
    :cond_1af
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    .line 143
    .local v3, "trackIndex":I
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->trackIndexMap:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "mime"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "track-idx"

    invoke-virtual {p1, v5, v4}, Lcom/samsung/android/sume/core/message/Message;->reply(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 148
    nop

    .line 162
    .end local v1    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .end local v2    # "mediaFormat":Landroid/media/MediaFormat;
    .end local v3    # "trackIndex":I
    :goto_1d9
    return v0

    :pswitch_data_1da
    .packed-switch 0x3
        :pswitch_161
        :pswitch_57
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist pause()V
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 370
    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 361
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    iget v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 364
    const-string/jumbo v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public blacklist resume()V
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 375
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 12
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 226
    const-string v0, "muxer released"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run: ibuf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obuf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 231
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_132

    .line 236
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->trackIndexMap:Ljava/util/Map;

    new-instance v4, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 301
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_5d} :catch_13f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5d} :catch_13f
    .catchall {:try_start_3 .. :try_end_5d} :catchall_13d

    .line 303
    .local v4, "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :try_start_5d
    sget-object v5, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5d .. :try_end_7a} :catch_7b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5d .. :try_end_7a} :catch_7b
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_7a} :catch_13f
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_7a} :catch_13f
    .catchall {:try_start_5d .. :try_end_7a} :catchall_13d

    .line 306
    goto :goto_99

    .line 304
    :catch_7b
    move-exception v5

    .line 305
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7c
    sget-object v6, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "task canceled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v4    # "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_99
    goto :goto_51

    .line 308
    :cond_9a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 310
    sget-object v3, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total outputFd size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->stop()V

    .line 314
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    if-eqz v4, :cond_120

    .line 315
    iget-boolean v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    if-eqz v5, :cond_f6

    .line 316
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-nez v4, :cond_d1

    .line 318
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    .line 320
    :cond_d1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache output file to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;)V

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sume/core/cache/DiskCache;->put(Ljava/lang/String;Ljava/util/function/Function;)V

    goto :goto_120

    .line 331
    :cond_f6
    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-eqz v5, :cond_120

    .line 332
    invoke-interface {v4, v5}, Lcom/samsung/android/sume/core/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 333
    .local v4, "cached":Ljava/io/File;
    if-eqz v4, :cond_120

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 334
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    .line 335
    .local v5, "success":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache is consumed, remove it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v4    # "cached":Ljava/io/File;
    .end local v5    # "success":Z
    :cond_120
    :goto_120
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_125
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_125} :catch_13f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_125} :catch_13f
    .catchall {:try_start_7c .. :try_end_125} :catchall_13d

    .line 344
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_151

    .line 345
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 346
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    .line 347
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    .line 232
    :cond_132
    :try_start_132
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 233
    new-instance v2, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string v3, "no muxer is given, might be released"

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;
    .end local p1    # "ibuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local p2    # "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    throw v2
    :try_end_13d
    .catch Ljava/lang/InterruptedException; {:try_start_132 .. :try_end_13d} :catch_13f
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_13d} :catch_13f
    .catchall {:try_start_132 .. :try_end_13d} :catchall_13d

    .line 344
    .restart local p0    # "this":Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;
    .restart local p1    # "ibuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .restart local p2    # "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catchall_13d
    move-exception v2

    goto :goto_16c

    .line 341
    :catch_13f
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/Exception;
    :try_start_140
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_13d

    .line 344
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_151

    .line 345
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 346
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    .line 347
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_151
    :goto_151
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 353
    .local v0, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    iget v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contents-id"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-eqz v1, :cond_16b

    .line 355
    const-string v2, "cache-id"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    :cond_16b
    return-object v0

    .line 344
    .end local v0    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_16c
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v3, :cond_17a

    .line 345
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 346
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    .line 347
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_17a
    throw v2
.end method

.method public blacklist setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .registers 2
    .param p1, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 389
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 390
    return-void
.end method

.method public blacklist setReceiveChannelQuery(Ljava/util/function/Function;I)V
    .registers 4
    .param p2, "numChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation

    .line 394
    .local p1, "receiveChannelQuery":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    .line 395
    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    .line 396
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 397
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 398
    :cond_17
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
