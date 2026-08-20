.class public final Landroid/ota/nano/OtaPackageMetadata$DeviceState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist buildIncremental:Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

.field public blacklist sdkLevel:Ljava/lang/String;

.field public blacklist securityPatchLevel:Ljava/lang/String;

.field public blacklist timestamp:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 232
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 233
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 2

    .line 199
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_15

    .line 200
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v1, :cond_10

    .line 203
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 205
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 207
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 4

    .line 236
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 238
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 239
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 240
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->cachedSize:I

    .line 244
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 291
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 292
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_26

    array-length v1, v1

    if-lez v1, :cond_26

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .line 295
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_22

    .line 296
    aget-object v4, v4, v3

    .line 297
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_1f

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    nop

    .line 300
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 295
    .end local v4    # "element":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 303
    .end local v3    # "i":I
    :cond_22
    add-int/2addr v0, v2

    .line 304
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 306
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_26
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_48

    array-length v1, v1

    if-lez v1, :cond_48

    .line 307
    const/4 v1, 0x0

    .line 308
    .restart local v1    # "dataCount":I
    const/4 v2, 0x0

    .line 309
    .restart local v2    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_30
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_44

    .line 310
    aget-object v4, v4, v3

    .line 311
    .restart local v4    # "element":Ljava/lang/String;
    if-eqz v4, :cond_41

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    nop

    .line 314
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 309
    .end local v4    # "element":Ljava/lang/String;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 317
    .end local v3    # "i":I
    :cond_44
    add-int/2addr v0, v2

    .line 318
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 320
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_48
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 321
    const/4 v1, 0x3

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 322
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_5a
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_68

    .line 325
    const/4 v1, 0x4

    .line 326
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_68
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 329
    const/4 v1, 0x5

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 330
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_78
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 333
    const/4 v1, 0x6

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 334
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_88
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v1, :cond_a2

    array-length v1, v1

    if-lez v1, :cond_a2

    .line 337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_90
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v3, v2

    if-ge v1, v3, :cond_a2

    .line 338
    aget-object v2, v2, v1

    .line 339
    .local v2, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v2, :cond_9f

    .line 340
    const/4 v3, 0x7

    .line 341
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 337
    .end local v2    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 345
    .end local v1    # "i":I
    :cond_a2
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 354
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_ce

    .line 358
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 359
    return-object p0

    .line 414
    :sswitch_f
    const/16 v2, 0x3a

    .line 415
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 416
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v3, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    array-length v4, v3

    .line 417
    .local v4, "i":I
    :goto_1c
    add-int v5, v4, v2

    new-array v5, v5, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 419
    .local v5, "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v4, :cond_25

    .line 420
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_25
    :goto_25
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_3c

    .line 423
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v5, v4

    .line 424
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 425
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 428
    :cond_3c
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v5, v4

    .line 429
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 430
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 431
    goto/16 :goto_cc

    .line 410
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 411
    goto/16 :goto_cc

    .line 406
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 407
    goto/16 :goto_cc

    .line 402
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 403
    goto/16 :goto_cc

    .line 398
    :sswitch_64
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 399
    goto :goto_cc

    .line 381
    :sswitch_6b
    const/16 v2, 0x12

    .line 382
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 383
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-nez v3, :cond_77

    move v4, v1

    goto :goto_78

    :cond_77
    array-length v4, v3

    .line 384
    .restart local v4    # "i":I
    :goto_78
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 385
    .local v5, "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_81

    .line 386
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    :cond_81
    :goto_81
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_92

    .line 389
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 390
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 393
    :cond_92
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 394
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 395
    goto :goto_cc

    .line 364
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_9b
    const/16 v2, 0xa

    .line 365
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 366
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-nez v3, :cond_a7

    move v4, v1

    goto :goto_a8

    :cond_a7
    array-length v4, v3

    .line 367
    .restart local v4    # "i":I
    :goto_a8
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 368
    .restart local v5    # "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_b1

    .line 369
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    :cond_b1
    :goto_b1
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_c2

    .line 372
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 373
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 376
    :cond_c2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 377
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 378
    goto :goto_cc

    .line 356
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_cb
    return-object p0

    .line 434
    .end local v0    # "tag":I
    :cond_cc
    :goto_cc
    goto/16 :goto_0

    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_cb
        0xa -> :sswitch_9b
        0x12 -> :sswitch_6b
        0x1a -> :sswitch_64
        0x20 -> :sswitch_5c
        0x2a -> :sswitch_54
        0x32 -> :sswitch_4c
        0x3a -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 252
    aget-object v1, v1, v0

    .line 253
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 254
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 251
    .end local v1    # "element":Ljava/lang/String;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 258
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_30

    array-length v0, v0

    if-lez v0, :cond_30

    .line 259
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_30

    .line 260
    aget-object v1, v1, v0

    .line 261
    .restart local v1    # "element":Ljava/lang/String;
    if-eqz v1, :cond_2d

    .line 262
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 259
    .end local v1    # "element":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 266
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 267
    const/4 v0, 0x3

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_40
    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4c

    .line 270
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 272
    :cond_4c
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 273
    const/4 v0, 0x5

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 275
    :cond_5a
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 276
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 278
    :cond_68
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v0, :cond_80

    array-length v0, v0

    if-lez v0, :cond_80

    .line 279
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_70
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v2, v1

    if-ge v0, v2, :cond_80

    .line 280
    aget-object v1, v1, v0

    .line 281
    .local v1, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v1, :cond_7d

    .line 282
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 279
    .end local v1    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 286
    .end local v0    # "i":I
    :cond_80
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 287
    return-void
.end method
