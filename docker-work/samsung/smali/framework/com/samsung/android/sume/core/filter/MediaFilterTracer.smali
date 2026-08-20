.class public Lcom/samsung/android/sume/core/filter/MediaFilterTracer;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "MediaFilterTracer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist contentId:I

.field private blacklist instantRun:Z

.field private final blacklist messageHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field private blacklist numBlocks:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .registers 4
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p2, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    .line 25
    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->numBlocks:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 5
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p2, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;
    .param p3, "parent"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V

    .line 36
    instance-of v0, p3, Lcom/samsung/android/sume/core/filter/InstantFilter;

    if-eqz v0, :cond_a

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    .line 39
    :cond_a
    return-void
.end method

.method private blacklist getShortDescription(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/util/Map;
    .registers 6
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortDescription: descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v0, "shortDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v1, p1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    if-eqz v1, :cond_99

    .line 146
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    .line 147
    .local v1, "nnfwDescriptor":Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    const-string/jumbo v2, "type"

    const-string v3, "NNFWDescriptor"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v2

    const-string v3, "fw"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getHw()Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object v2

    const-string v3, "hw"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    const-string v3, "input-data-type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    const-string v3, "input-color-format"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    const-string v3, "input-shape"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    const-string v3, "output-data-type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    const-string v3, "output-color-format"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    const-string v3, "output-shape"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1    # "nnfwDescriptor":Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    :cond_99
    return-object v0
.end method

.method static synthetic blacklist lambda$makeReport$1(Lcom/samsung/android/sume/core/message/Message;Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .param p1, "it"    # Ljava/util/function/Consumer;

    .line 126
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$makeReport$2(Lcom/samsung/android/sume/core/message/Message;Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .param p1, "it"    # Ljava/util/function/Consumer;

    .line 133
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist makeReport(I)V
    .registers 3
    .param p1, "code"    # I

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 77
    return-void
.end method

.method private blacklist makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 80
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeReport: code="

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

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "currentInMillis":J
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    invoke-interface {v2, p1}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(I)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v2

    .line 84
    .local v2, "message":Lcom/samsung/android/sume/core/message/Message;
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "unit-id"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 85
    if-eqz p2, :cond_8f

    .line 86
    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "contents-id"

    invoke-interface {p2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    .local v3, "contentId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 89
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "block-id"

    invoke-interface {p2, v6, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 90
    .local v5, "blockId":I
    if-eq v5, v4, :cond_80

    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 92
    iget v4, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->numBlocks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "num-blocks"

    invoke-interface {p2, v6, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 95
    :cond_80
    const-string v4, "input-file"

    invoke-interface {p2, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 96
    invoke-interface {p2, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 99
    .end local v3    # "contentId":I
    .end local v5    # "blockId":I
    :cond_8f
    const-string v3, "end-time-ms"

    const-string/jumbo v4, "start-time-ms"

    packed-switch p1, :pswitch_data_10a

    goto :goto_105

    .line 132
    :pswitch_98
    iget-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    if-eqz v4, :cond_a6

    .line 133
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v4, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 134
    :cond_a6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_105

    .line 125
    :pswitch_ae
    iget-boolean v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    if-eqz v3, :cond_bc

    .line 126
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 128
    :cond_bc
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 129
    goto :goto_105

    .line 116
    :pswitch_c4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 118
    iget-boolean v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    if-eqz v3, :cond_105

    .line 119
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilterTracer;Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_105

    .line 112
    :pswitch_da
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 113
    goto :goto_105

    .line 108
    :pswitch_e2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 109
    goto :goto_105

    .line 101
    :pswitch_ea
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->getShortDescription(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/util/Map;

    move-result-object v3

    .line 103
    .local v3, "shortDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_105

    .line 104
    const-string/jumbo v4, "unit-description"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 139
    .end local v3    # "shortDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_105
    :goto_105
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 140
    return-void

    nop

    :pswitch_data_10a
    .packed-switch 0x1ff
        :pswitch_ea
        :pswitch_e2
        :pswitch_da
        :pswitch_c4
        :pswitch_ae
        :pswitch_98
    .end packed-switch
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .registers 4

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    return-object v0
.end method

.method synthetic blacklist lambda$makeReport$0$com-samsung-android-sume-core-filter-MediaFilterTracer(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/Message;)V
    .registers 5
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .param p2, "msg"    # Lcom/samsung/android/sume/core/message/Message;

    .line 120
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contents-id"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .registers 5
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    goto :goto_47

    .line 173
    :pswitch_20
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contents-id"

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "whole-frames"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->numBlocks:I

    .line 175
    nop

    .line 178
    :goto_47
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_4a
    .packed-switch 0x7
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist prepare()V
    .registers 4

    .line 43
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: successor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/16 v0, 0x1ff

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    .line 46
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    .line 48
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    .line 49
    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 67
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release: successor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    .line 70
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->release()V

    .line 72
    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    .line 73
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 6
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 54
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run: successor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v0, 0x201

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 60
    .local v0, "result":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const/16 v1, 0x202

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 62
    return-object v0
.end method
