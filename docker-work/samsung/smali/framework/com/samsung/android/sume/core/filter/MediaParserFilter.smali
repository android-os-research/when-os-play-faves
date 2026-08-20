.class public Lcom/samsung/android/sume/core/filter/MediaParserFilter;
.super Ljava/lang/Object;
.source "MediaParserFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;
.implements Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist bitrate:I

.field private final blacklist cvPause:Landroid/os/ConditionVariable;

.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

.field private blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field private blacklist sendChannelCount:I

.field private blacklist sendChannelQuery:Ljava/util/function/Function;
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


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;)V
    .registers 3
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    .line 45
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 46
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/filter/MediaParserFilter;)Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    return-object v0
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    return-object v0
.end method

.method public blacklist getSendChannelCount()I
    .registers 2

    .line 263
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelCount:I

    return v0
.end method

.method public blacklist getSendChannelQuery()Ljava/util/function/Function;
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

    .line 258
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method synthetic blacklist lambda$run$0$com-samsung-android-sume-core-filter-MediaParserFilter(Landroid/media/MediaExtractor;Landroid/os/ParcelFileDescriptor;ILjava/util/List;I)V
    .registers 20
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "inputFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "contentId"    # I
    .param p4, "tracks"    # Ljava/util/List;
    .param p5, "idx"    # I

    .line 104
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p5

    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "mimeType":Ljava/lang/String;
    const-string/jumbo v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 107
    sget-object v5, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    goto :goto_1c

    :cond_1a
    sget-object v5, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 109
    .local v5, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :goto_1c
    iget-object v6, v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    invoke-virtual {v6, v5}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->needToParse(Lcom/samsung/android/sume/core/types/MediaType;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 110
    sget-object v4, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "descriptor has type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 114
    :cond_3d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v6, "configData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 118
    .local v4, "mediaFormat":Landroid/media/MediaFormat;
    sget-object v7, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "media-format = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v8, "media-format"

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v8, "media-type"

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v8, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v5, v8, :cond_73

    const-string/jumbo v8, "video-format"

    goto :goto_75

    :cond_73
    const-string v8, "audio-format"

    :goto_75
    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v8, "width"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 127
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_8c
    const-string v8, "height"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 130
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_9f
    const-string/jumbo v8, "rotation-degrees"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 133
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_b3
    const-string v8, "bitrate"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 137
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 138
    :cond_c7
    iget v9, v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    if-eqz v9, :cond_d3

    .line 139
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 140
    :cond_d3
    const-string v9, "durationUs"

    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f4

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v10

    const/4 v12, 0x3

    shl-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    div-long/2addr v10, v12

    long-to-int v9, v10

    iput v9, v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    .line 142
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_f4
    :goto_f4
    const-string v8, "frame-rate"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_107

    .line 146
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_107
    const-string v8, "i-frame-interval"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v8, "sample-rate"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_129

    .line 152
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_129
    const-string v8, "channel-count"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 155
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_13c
    const-string/jumbo v8, "send TRACK_FORMAT message to decoder"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "contents-id"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    invoke-interface {v7, v9, v6}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 161
    new-instance v7, Landroid/util/Pair;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, p4

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-filter-MediaParserFilter(Landroid/media/MediaExtractor;JI)V
    .registers 20
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "endTimeUs"    # J
    .param p4, "idx"    # I

    .line 165
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "mimeType":Ljava/lang/String;
    const-string/jumbo v0, "video"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 168
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    :goto_1d
    move-object v5, v0

    .line 170
    .local v5, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->needToParse(Lcom/samsung/android/sume/core/types/MediaType;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 171
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "descriptor has type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 176
    :cond_3f
    :try_start_3f
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 177
    .local v0, "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    if-nez v0, :cond_68

    .line 178
    sget-object v6, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no buffer-channel given for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skip decoding this track"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_68
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[track: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 187
    .local v7, "reachedEos":Z
    :goto_85
    if-nez v7, :cond_f6

    .line 188
    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    .line 190
    instance-of v8, v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    const/4 v9, 0x0

    if-eqz v8, :cond_99

    .line 191
    move-object v8, v0

    check-cast v8, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    .local v8, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_9f

    .line 194
    .end local v8    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_99
    new-array v8, v9, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    .line 197
    .restart local v8    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_9f
    const-class v10, Ljava/nio/ByteBuffer;

    invoke-interface {v8, v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 198
    .local v10, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v10, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9
    :try_end_ab
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_ab} :catch_fa

    .line 199
    .local v9, "chunkSize":I
    const-string v11, "chunk-size"

    if-ltz v9, :cond_d1

    :try_start_af
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v12, p2, v12

    if-gez v12, :cond_b8

    goto :goto_d1

    .line 204
    :cond_b8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string/jumbo v11, "timestampUs"

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_f2

    .line 200
    :cond_d1
    :goto_d1
    sget-object v12, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "parser reached EOS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v7, 0x1

    .line 202
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    :goto_f2
    invoke-interface {v0, v8}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 209
    .end local v8    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v9    # "chunkSize":I
    .end local v10    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_85

    .line 210
    :cond_f6
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->unselectTrack(I)V
    :try_end_f9
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_f9} :catch_fa

    .line 213
    .end local v0    # "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "reachedEos":Z
    goto :goto_fe

    .line 211
    :catch_fa
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_fe
    return-void
.end method

.method public blacklist pause()V
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 228
    return-void
.end method

.method public blacklist resume()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 233
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 30
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 51
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v0, "file-descriptor"

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    move-object v14, v1

    .line 55
    .local v14, "extractor":Landroid/media/MediaExtractor;
    :try_start_25
    const-string v1, "contents-id"

    invoke-interface {v13, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 56
    .local v3, "contentId":I
    invoke-interface {v13, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/os/ParcelFileDescriptor;

    .line 57
    .local v22, "inputFd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v8, p2

    invoke-interface {v8, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 58
    .local v4, "outputFd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 59
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 61
    const-string/jumbo v0, "start-time-us"

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 62
    .local v11, "startTimeUs":J
    const-string v0, "end-time-us"

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    .line 64
    .local v6, "endTimeUs":J
    iget-object v0, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v10, 0x4

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaParserFilter$1;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v9, v5

    move-object/from16 v5, p2

    move-wide/from16 v25, v6

    .end local v6    # "endTimeUs":J
    .local v25, "endTimeUs":J
    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$1;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;ILandroid/os/ParcelFileDescriptor;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v10, v9}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 72
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 73
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 75
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 76
    .local v10, "frameCount":I
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    .line 78
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 80
    iget-object v1, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v2, 0x2

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_c4} :catch_135
    .catchall {:try_start_25 .. :try_end_c4} :catchall_131

    move-object v7, v5

    move-object/from16 v8, p0

    const/4 v6, 0x0

    move v9, v3

    move-object v6, v14

    .end local v14    # "extractor":Landroid/media/MediaExtractor;
    .local v6, "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v13, v25

    :try_start_cc
    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;IIJJ)V

    invoke-interface {v1, v2, v5}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 89
    iget-object v1, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v2, 0x7

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaParserFilter$3;
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_db} :catch_12e
    .catchall {:try_start_cc .. :try_end_db} :catchall_12b

    move-object v13, v5

    move-object/from16 v14, p0

    move-object v7, v15

    move v15, v3

    move/from16 v16, v10

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    :try_start_e6
    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$3;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;IILcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v1, v2, v5}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 100
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 102
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v24, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/samsung/android/sume/core/types/MediaType;>;>;"
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda0;

    move-object/from16 v19, v2

    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move/from16 v23, v3

    invoke-direct/range {v19 .. v24}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;Landroid/media/MediaExtractor;Landroid/os/ParcelFileDescriptor;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 164
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda1;

    move-wide/from16 v8, v25

    .end local v25    # "endTimeUs":J
    .local v8, "endTimeUs":J
    invoke-direct {v2, v7, v6, v8, v9}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;Landroid/media/MediaExtractor;J)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_128} :catch_129
    .catchall {:try_start_e6 .. :try_end_128} :catchall_14b

    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v3    # "contentId":I
    .end local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "endTimeUs":J
    .end local v10    # "frameCount":I
    .end local v11    # "startTimeUs":J
    .end local v22    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .end local v24    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/samsung/android/sume/core/types/MediaType;>;>;"
    goto :goto_13b

    .line 215
    :catch_129
    move-exception v0

    goto :goto_138

    .line 218
    :catchall_12b
    move-exception v0

    move-object v7, v15

    goto :goto_14c

    .line 215
    :catch_12e
    move-exception v0

    move-object v7, v15

    goto :goto_138

    .line 218
    .end local v6    # "extractor":Landroid/media/MediaExtractor;
    .restart local v14    # "extractor":Landroid/media/MediaExtractor;
    :catchall_131
    move-exception v0

    move-object v6, v14

    move-object v7, v15

    .end local v14    # "extractor":Landroid/media/MediaExtractor;
    .restart local v6    # "extractor":Landroid/media/MediaExtractor;
    goto :goto_14c

    .line 215
    .end local v6    # "extractor":Landroid/media/MediaExtractor;
    .restart local v14    # "extractor":Landroid/media/MediaExtractor;
    :catch_135
    move-exception v0

    move-object v6, v14

    move-object v7, v15

    .line 216
    .end local v14    # "extractor":Landroid/media/MediaExtractor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v6    # "extractor":Landroid/media/MediaExtractor;
    :goto_138
    :try_start_138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13b
    .catchall {:try_start_138 .. :try_end_13b} :catchall_14b

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13b
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 219
    nop

    .line 222
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 218
    :catchall_14b
    move-exception v0

    :goto_14c
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 219
    throw v0
.end method

.method public blacklist setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .registers 2
    .param p1, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 247
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 248
    return-void
.end method

.method public blacklist setSendChannelQuery(Ljava/util/function/Function;I)V
    .registers 3
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

    .line 252
    .local p1, "sendChannelQuery":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelQuery:Ljava/util/function/Function;

    .line 253
    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelCount:I

    .line 254
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

    .line 242
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
