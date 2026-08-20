.class public abstract Lcom/samsung/android/sume/core/graph/GraphBase;
.super Ljava/lang/Object;
.source "GraphBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/graph/Graph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/graph/Graph<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field protected final blacklist messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

.field protected blacklist messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

.field protected final blacklist nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected final blacklist option:Lcom/samsung/android/sume/core/graph/Graph$Option;

.field protected final blacklist outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/graph/GraphBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .registers 5
    .param p2, "option"    # Lcom/samsung/android/sume/core/graph/Graph$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;>;",
            "Lcom/samsung/android/sume/core/graph/Graph$Option;",
            ")V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/graph/GraphNode<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->nodes:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 39
    return-void
.end method

.method static synthetic blacklist lambda$publishEvent$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .registers 3
    .param p0, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "it"    # Ljava/lang/String;

    .line 153
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$publishEvent$3(Lcom/samsung/android/sume/core/message/Event;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)V
    .registers 4
    .param p0, "event"    # Lcom/samsung/android/sume/core/message/Event;
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "it"    # Ljava/lang/String;

    .line 154
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method

.method static synthetic blacklist lambda$publishEvent$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "data"    # Landroid/os/Bundle;

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "buffer-list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method private blacklist onCanceled()V
    .registers 3

    .line 183
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v1, "onCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method private blacklist onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 10
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 42
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    .line 43
    .local v0, "outMediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "contents-id"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 46
    .local v1, "storedOutput":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq v0, v2, :cond_b1

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq v0, v2, :cond_b1

    if-eqz v1, :cond_b1

    .line 47
    sget-object v2, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v2, v3, :cond_9a

    .line 55
    move-object v2, v1

    .line 56
    .local v2, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 58
    const/4 v3, 0x0

    .line 60
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_57
    const-string v4, "file-descriptor"

    invoke-interface {v2, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 61
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v5

    .line 62
    const-class v5, Landroid/graphics/Bitmap;

    invoke-interface {p1, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_78} :catch_7f
    .catchall {:try_start_57 .. :try_end_78} :catchall_7d

    .line 66
    nop

    .line 68
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_89

    goto :goto_88

    .line 66
    :catchall_7d
    move-exception v4

    goto :goto_8f

    .line 63
    :catch_7f
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    :try_start_80
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    .line 66
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_8e

    .line 68
    :try_start_85
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 71
    :goto_88
    goto :goto_8e

    .line 69
    :catch_89
    move-exception v4

    .line 70
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_88

    .line 74
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :cond_8e
    :goto_8e
    goto :goto_a6

    .line 66
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_8f
    if-eqz v3, :cond_99

    .line 68
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    .line 71
    goto :goto_99

    .line 69
    :catch_95
    move-exception v5

    .line 70
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    .end local v5    # "e":Ljava/io/IOException;
    :cond_99
    :goto_99
    throw v4

    .line 75
    .end local v2    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :cond_9a
    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofUnified()Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v2

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .line 78
    .restart local v2    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_a6
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "freezed"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-object v2

    .line 81
    .end local v2    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_b1
    return-object p1
.end method

.method private blacklist publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 14
    .param p1, "code"    # I
    .param p2, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 131
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishEvent E: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    if-eqz v1, :cond_13d

    .line 133
    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Event;->of(I)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v1

    .line 134
    .local v1, "event":Lcom/samsung/android/sume/core/message/Event;
    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/Event;->setPublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;

    .line 136
    const-string v2, "contents-id"

    const-string v3, "input-file"

    packed-switch p1, :pswitch_data_13e

    goto/16 :goto_123

    .line 145
    :pswitch_39
    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 146
    invoke-interface {p2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 147
    invoke-interface {p2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 148
    :cond_4d
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 149
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "end-time-ms"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 152
    const-string/jumbo v2, "rotation-degrees"

    const-string v3, "last-video-timestamp-us"

    const-string v4, "last-audio-timestamp-us"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 153
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/Event;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 154
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 157
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 158
    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/core/message/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 159
    .local v2, "videoDurationUs":J
    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/core/message/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 162
    .local v4, "audioDurationUs":J
    cmp-long v6, v2, v4

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x3e8

    if-lez v6, :cond_dd

    .line 163
    div-long v9, v2, v9

    add-long/2addr v9, v7

    .local v9, "durationMs":J
    goto :goto_e0

    .line 165
    .end local v9    # "durationMs":J
    :cond_dd
    div-long v9, v4, v9

    add-long/2addr v9, v7

    .line 167
    .restart local v9    # "durationMs":J
    :goto_e0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "duration"

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 170
    .end local v2    # "videoDurationUs":J
    .end local v4    # "audioDurationUs":J
    .end local v9    # "durationMs":J
    :cond_e9
    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isOutputOnEventCallback()Z

    move-result v2

    if-eqz v2, :cond_123

    .line 171
    const-string/jumbo v2, "set output buffer to event cb"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/Event;->setBundledDataHandler(Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_123

    .line 138
    :pswitch_100
    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 139
    invoke-interface {p2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 140
    invoke-interface {p2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 141
    :cond_114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "start-time-ms"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 142
    nop

    .line 177
    :cond_123
    :goto_123
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/Event;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "publishEvent X: code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "event":Lcom/samsung/android/sume/core/message/Event;
    :cond_13d
    return-void

    :pswitch_data_13e
    .packed-switch 0x1fd
        :pswitch_100
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method synthetic blacklist lambda$runBatch$0$com-samsung-android-sume-core-graph-GraphBase(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 3
    .param p1, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 89
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 90
    const/16 v0, 0x1fd

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 91
    return-void
.end method

.method synthetic blacklist lambda$runOneByOne$1$com-samsung-android-sume-core-graph-GraphBase(Ljava/util/List;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 5
    .param p1, "outBuffers"    # Ljava/util/List;
    .param p2, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 115
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p2}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 117
    const/16 v0, 0x1fd

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 120
    .local v0, "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isOutputOnEventCallback()Z

    move-result v1

    if-nez v1, :cond_21

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_21
    const/16 v1, 0x1fe

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 124
    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 197
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->nodes:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->clear()V

    .line 204
    const-string/jumbo v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method protected blacklist runBatch(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runBatch: # of inputs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    :try_start_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    .local v0, "remains":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 98
    :goto_2c
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "remains":I
    .local v1, "remains":I
    if-eqz v0, :cond_56

    .line 99
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait to receive output..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 101
    .local v0, "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isOutputOnEventCallback()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 102
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4f
    const/16 v2, 0x1fe

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    :try_end_54
    .catch Ljava/util/concurrent/CancellationException; {:try_start_25 .. :try_end_54} :catch_57

    .line 104
    .end local v0    # "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    move v0, v1

    goto :goto_2c

    .line 107
    .end local v1    # "remains":I
    :cond_56
    goto :goto_5b

    .line 105
    :catch_57
    move-exception v0

    .line 106
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onCanceled()V

    .line 108
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :goto_5b
    return-void
.end method

.method protected blacklist runOneByOne(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runOneByOne: # of inputs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_1d
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_25
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1d .. :try_end_25} :catch_26

    .line 127
    goto :goto_2a

    .line 125
    :catch_26
    move-exception v0

    .line 126
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onCanceled()V

    .line 128
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :goto_2a
    return-void
.end method

.method public blacklist setMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .registers 4
    .param p1, "messageSubscriber"    # Lcom/samsung/android/sume/core/message/MessageSubscriber;

    .line 189
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMessageSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 193
    return-void
.end method
