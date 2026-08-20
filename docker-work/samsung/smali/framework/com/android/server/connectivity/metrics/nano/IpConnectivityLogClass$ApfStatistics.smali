.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfStatistics"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;


# instance fields
.field public blacklist droppedRas:I

.field public blacklist durationMs:J

.field public blacklist hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist matchingRas:I

.field public blacklist maxProgramSize:I

.field public blacklist parseErrors:I

.field public blacklist programUpdates:I

.field public blacklist programUpdatesAll:I

.field public blacklist programUpdatesAllowingMulticast:I

.field public blacklist receivedRas:I

.field public blacklist totalPacketDropped:I

.field public blacklist totalPacketProcessed:I

.field public blacklist zeroLifetimeRas:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2161
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2162
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    .line 2163
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 2

    .line 2111
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    if-nez v0, :cond_15

    .line 2112
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    if-nez v1, :cond_10

    .line 2115
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    .line 2117
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2119
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2391
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2385
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 3

    .line 2166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 2167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 2168
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 2169
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 2170
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 2171
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 2172
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 2173
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 2174
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 2175
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 2176
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    .line 2177
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    .line 2178
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->cachedSize:I

    .line 2180
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 2235
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2236
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    .line 2237
    nop

    .line 2238
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2240
    :cond_13
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v1, :cond_1d

    .line 2241
    const/4 v2, 0x2

    .line 2242
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2244
    :cond_1d
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v1, :cond_27

    .line 2245
    const/4 v2, 0x3

    .line 2246
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2248
    :cond_27
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v1, :cond_31

    .line 2249
    const/4 v2, 0x5

    .line 2250
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2252
    :cond_31
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v1, :cond_3b

    .line 2253
    const/4 v2, 0x6

    .line 2254
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2256
    :cond_3b
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v1, :cond_45

    .line 2257
    const/4 v2, 0x7

    .line 2258
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2260
    :cond_45
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v1, :cond_50

    .line 2261
    const/16 v2, 0x8

    .line 2262
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2264
    :cond_50
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v1, :cond_5b

    .line 2265
    const/16 v2, 0x9

    .line 2266
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2268
    :cond_5b
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    if-eqz v1, :cond_66

    .line 2269
    const/16 v2, 0xa

    .line 2270
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2272
    :cond_66
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    if-eqz v1, :cond_71

    .line 2273
    const/16 v2, 0xb

    .line 2274
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2276
    :cond_71
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    if-eqz v1, :cond_7c

    .line 2277
    const/16 v2, 0xc

    .line 2278
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2280
    :cond_7c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    if-eqz v1, :cond_87

    .line 2281
    const/16 v2, 0xd

    .line 2282
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    :cond_87
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_a2

    array-length v1, v1

    if-lez v1, :cond_a2

    .line 2285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8f
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_a2

    .line 2286
    aget-object v2, v2, v1

    .line 2287
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_9f

    .line 2288
    const/16 v3, 0xe

    .line 2289
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2285
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 2293
    .end local v1    # "i":I
    :cond_a2
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2105
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2301
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2302
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_a2

    .line 2306
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 2307
    return-object p0

    .line 2360
    :sswitch_e
    const/16 v1, 0x72

    .line 2361
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 2362
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    move v4, v3

    goto :goto_1c

    :cond_1b
    array-length v4, v2

    .line 2363
    .local v4, "i":I
    :goto_1c
    add-int v5, v4, v1

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2365
    .local v5, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_25

    .line 2366
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2368
    :cond_25
    :goto_25
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_3c

    .line 2369
    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v2, v5, v4

    .line 2370
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2371
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2368
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 2374
    :cond_3c
    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v2, v5, v4

    .line 2375
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2376
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2377
    goto :goto_a0

    .line 2356
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_4b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    .line 2357
    goto :goto_a0

    .line 2352
    :sswitch_52
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    .line 2353
    goto :goto_a0

    .line 2348
    :sswitch_59
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 2349
    goto :goto_a0

    .line 2344
    :sswitch_60
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 2345
    goto :goto_a0

    .line 2340
    :sswitch_67
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 2341
    goto :goto_a0

    .line 2336
    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 2337
    goto :goto_a0

    .line 2332
    :sswitch_75
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 2333
    goto :goto_a0

    .line 2328
    :sswitch_7c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 2329
    goto :goto_a0

    .line 2324
    :sswitch_83
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 2325
    goto :goto_a0

    .line 2320
    :sswitch_8a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 2321
    goto :goto_a0

    .line 2316
    :sswitch_91
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 2317
    goto :goto_a0

    .line 2312
    :sswitch_98
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 2313
    goto :goto_a0

    .line 2304
    :sswitch_9f
    return-object p0

    .line 2380
    .end local v0    # "tag":I
    :cond_a0
    :goto_a0
    goto/16 :goto_0

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_9f
        0x8 -> :sswitch_98
        0x10 -> :sswitch_91
        0x18 -> :sswitch_8a
        0x28 -> :sswitch_83
        0x30 -> :sswitch_7c
        0x38 -> :sswitch_75
        0x40 -> :sswitch_6e
        0x48 -> :sswitch_67
        0x50 -> :sswitch_60
        0x58 -> :sswitch_59
        0x60 -> :sswitch_52
        0x68 -> :sswitch_4b
        0x72 -> :sswitch_e
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2186
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    .line 2187
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2189
    :cond_c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v0, :cond_14

    .line 2190
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2192
    :cond_14
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v0, :cond_1c

    .line 2193
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2195
    :cond_1c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v0, :cond_24

    .line 2196
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2198
    :cond_24
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v0, :cond_2c

    .line 2199
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2201
    :cond_2c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v0, :cond_34

    .line 2202
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2204
    :cond_34
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v0, :cond_3d

    .line 2205
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2207
    :cond_3d
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v0, :cond_46

    .line 2208
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2210
    :cond_46
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    if-eqz v0, :cond_4f

    .line 2211
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2213
    :cond_4f
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    if-eqz v0, :cond_58

    .line 2214
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2216
    :cond_58
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    if-eqz v0, :cond_61

    .line 2217
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2219
    :cond_61
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    if-eqz v0, :cond_6a

    .line 2220
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2222
    :cond_6a
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_83

    array-length v0, v0

    if-lez v0, :cond_83

    .line 2223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_72
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_83

    .line 2224
    aget-object v1, v1, v0

    .line 2225
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_80

    .line 2226
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2223
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 2230
    .end local v0    # "i":I
    :cond_83
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2231
    return-void
.end method
