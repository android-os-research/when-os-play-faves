.class public final Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CameraProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/camera/nano/CameraProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraStreamProto"
.end annotation


# static fields
.field public static final blacklist CAPTURE_LATENCY:I = 0x1

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;


# instance fields
.field public blacklist dataSpace:I

.field public blacklist dynamicRangeProfile:J

.field public blacklist errorCount:J

.field public blacklist firstCaptureLatencyMillis:I

.field public blacklist format:I

.field public blacklist height:I

.field public blacklist histogramBins:[F

.field public blacklist histogramCounts:[J

.field public blacklist histogramType:I

.field public blacklist maxAppBuffers:I

.field public blacklist maxHalBuffers:I

.field public blacklist requestCount:J

.field public blacklist streamUseCase:J

.field public blacklist usage:J

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 75
    invoke-virtual {p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 76
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2

    .line 18
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v0, :cond_15

    .line 19
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v1, :cond_10

    .line 22
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    sput-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 24
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 26
    :cond_15
    :goto_15
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 378
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 4

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 80
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 81
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 82
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 84
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 85
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 86
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 87
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 88
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 89
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 90
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 91
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 92
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 93
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->cachedSize:I

    .line 95
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 10

    .line 155
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 156
    .local v0, "size":I
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 157
    nop

    .line 158
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_f
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v1, :cond_19

    .line 161
    const/4 v3, 0x2

    .line 162
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_19
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v1, :cond_23

    .line 165
    const/4 v3, 0x3

    .line 166
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_23
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    const/4 v3, 0x4

    if-eqz v1, :cond_2e

    .line 169
    nop

    .line 170
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_2e
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3c

    .line 173
    const/4 v1, 0x5

    .line 174
    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_3c
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_48

    .line 177
    const/4 v1, 0x6

    .line 178
    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_48
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_54

    .line 181
    const/4 v1, 0x7

    .line 182
    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_54
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v1, :cond_5f

    .line 185
    const/16 v4, 0x8

    .line 186
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_5f
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v1, :cond_6a

    .line 189
    const/16 v4, 0x9

    .line 190
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_6a
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v1, :cond_75

    .line 193
    const/16 v4, 0xa

    .line 194
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_75
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v1, :cond_80

    .line 197
    const/16 v4, 0xb

    .line 198
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_80
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v1, :cond_8d

    array-length v4, v1

    if-lez v4, :cond_8d

    .line 201
    array-length v4, v1

    mul-int/2addr v4, v3

    .line 202
    .local v4, "dataSize":I
    add-int/2addr v0, v4

    .line 203
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 205
    .end local v4    # "dataSize":I
    :cond_8d
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v1, :cond_aa

    array-length v1, v1

    if-lez v1, :cond_aa

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_96
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v5, v4

    if-ge v3, v5, :cond_a6

    .line 208
    aget-wide v4, v4, v3

    .line 209
    .local v4, "element":J
    nop

    .line 210
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v8

    add-int/2addr v1, v8

    .line 207
    .end local v4    # "element":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 212
    .end local v3    # "i":I
    :cond_a6
    add-int/2addr v0, v1

    .line 213
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 215
    .end local v1    # "dataSize":I
    :cond_aa
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_b7

    .line 216
    const/16 v3, 0xe

    .line 217
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_b7
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_c4

    .line 220
    const/16 v3, 0xf

    .line 221
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_c4
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 13
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 232
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_140

    .line 236
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_13e

    .line 237
    return-object p0

    .line 369
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    goto/16 :goto_13e

    .line 365
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 366
    goto/16 :goto_13e

    .line 342
    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 343
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 345
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 346
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 347
    .local v5, "startPos":I
    :goto_2c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_38

    .line 348
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 351
    :cond_38
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 352
    iget-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v6, :cond_41

    move v7, v1

    goto :goto_42

    :cond_41
    array-length v7, v6

    .line 353
    .local v7, "i":I
    :goto_42
    add-int v8, v7, v4

    new-array v8, v8, [J

    .line 354
    .local v8, "newArray":[J
    if-eqz v7, :cond_4b

    .line 355
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    :cond_4b
    :goto_4b
    array-length v1, v8

    if-ge v7, v1, :cond_57

    .line 358
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 357
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 360
    :cond_57
    iput-object v8, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 361
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 362
    goto/16 :goto_13e

    .line 325
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[J
    :sswitch_5e
    const/16 v2, 0x68

    .line 326
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 327
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v3, :cond_6a

    move v4, v1

    goto :goto_6b

    :cond_6a
    array-length v4, v3

    .line 328
    .local v4, "i":I
    :goto_6b
    add-int v5, v4, v2

    new-array v5, v5, [J

    .line 329
    .local v5, "newArray":[J
    if-eqz v4, :cond_74

    .line 330
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    :cond_74
    :goto_74
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_85

    .line 333
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 334
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 337
    :cond_85
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 338
    iput-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 339
    goto/16 :goto_13e

    .line 292
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[J
    :sswitch_8f
    const/16 v2, 0x65

    .line 293
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 294
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v3, :cond_9b

    move v4, v1

    goto :goto_9c

    :cond_9b
    array-length v4, v3

    .line 295
    .restart local v4    # "i":I
    :goto_9c
    add-int v5, v4, v2

    new-array v5, v5, [F

    .line 296
    .local v5, "newArray":[F
    if-eqz v4, :cond_a5

    .line 297
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    :cond_a5
    :goto_a5
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_b6

    .line 300
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    .line 301
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    .line 304
    :cond_b6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    .line 305
    iput-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 306
    goto/16 :goto_13e

    .line 309
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[F
    :sswitch_c0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 310
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 311
    .restart local v3    # "limit":I
    div-int/lit8 v4, v2, 0x4

    .line 312
    .local v4, "arrayLength":I
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v5, :cond_d0

    move v6, v1

    goto :goto_d1

    :cond_d0
    array-length v6, v5

    .line 313
    .local v6, "i":I
    :goto_d1
    add-int v7, v6, v4

    new-array v7, v7, [F

    .line 314
    .local v7, "newArray":[F
    if-eqz v6, :cond_da

    .line 315
    invoke-static {v5, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :cond_da
    :goto_da
    array-length v1, v7

    if-ge v6, v1, :cond_e6

    .line 318
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v7, v6

    .line 317
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    .line 320
    :cond_e6
    iput-object v7, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 321
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 322
    goto :goto_13e

    .line 282
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[F
    :sswitch_ec
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 283
    .local v1, "value":I
    packed-switch v1, :pswitch_data_18a

    goto :goto_f6

    .line 286
    :pswitch_f4
    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 289
    :goto_f6
    goto :goto_13e

    .line 278
    .end local v1    # "value":I
    :sswitch_f7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 279
    goto :goto_13e

    .line 274
    :sswitch_fe
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 275
    goto :goto_13e

    .line 270
    :sswitch_105
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 271
    goto :goto_13e

    .line 266
    :sswitch_10c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 267
    goto :goto_13e

    .line 262
    :sswitch_113
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 263
    goto :goto_13e

    .line 258
    :sswitch_11a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 259
    goto :goto_13e

    .line 254
    :sswitch_121
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 255
    goto :goto_13e

    .line 250
    :sswitch_128
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 251
    goto :goto_13e

    .line 246
    :sswitch_12f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 247
    goto :goto_13e

    .line 242
    :sswitch_136
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 243
    goto :goto_13e

    .line 234
    :sswitch_13d
    return-object p0

    .line 373
    .end local v0    # "tag":I
    :cond_13e
    :goto_13e
    goto/16 :goto_0

    :sswitch_data_140
    .sparse-switch
        0x0 -> :sswitch_13d
        0x8 -> :sswitch_136
        0x10 -> :sswitch_12f
        0x18 -> :sswitch_128
        0x20 -> :sswitch_121
        0x28 -> :sswitch_11a
        0x30 -> :sswitch_113
        0x38 -> :sswitch_10c
        0x40 -> :sswitch_105
        0x48 -> :sswitch_fe
        0x50 -> :sswitch_f7
        0x58 -> :sswitch_ec
        0x62 -> :sswitch_c0
        0x65 -> :sswitch_8f
        0x68 -> :sswitch_5e
        0x6a -> :sswitch_1f
        0x70 -> :sswitch_17
        0x78 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_f4
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 9
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    if-eqz v0, :cond_8

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 104
    :cond_8
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v0, :cond_10

    .line 105
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 107
    :cond_10
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v0, :cond_18

    .line 108
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 110
    :cond_18
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    if-eqz v0, :cond_20

    .line 111
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 113
    :cond_20
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    .line 114
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 116
    :cond_2c
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_36

    .line 117
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 119
    :cond_36
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_40

    .line 120
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 122
    :cond_40
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v0, :cond_49

    .line 123
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 125
    :cond_49
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v0, :cond_52

    .line 126
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 128
    :cond_52
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v0, :cond_5b

    .line 129
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 131
    :cond_5b
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v0, :cond_64

    .line 132
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 134
    :cond_64
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v0, :cond_7b

    array-length v0, v0

    if-lez v0, :cond_7b

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6c
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v4, v1

    if-ge v0, v4, :cond_7b

    .line 136
    const/16 v4, 0xc

    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 139
    .end local v0    # "i":I
    :cond_7b
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v0, :cond_92

    array-length v0, v0

    if-lez v0, :cond_92

    .line 140
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_83
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v4, v1

    if-ge v0, v4, :cond_92

    .line 141
    const/16 v4, 0xd

    aget-wide v5, v1, v0

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 144
    .end local v0    # "i":I
    :cond_92
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9d

    .line 145
    const/16 v4, 0xe

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 147
    :cond_9d
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a8

    .line 148
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 150
    :cond_a8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 151
    return-void
.end method
