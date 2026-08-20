.class public final Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApexInfo"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;


# instance fields
.field public blacklist decompressedSize:J

.field public blacklist isCompressed:Z

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist sourceVersion:J

.field public blacklist version:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 481
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 482
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->clear()Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 483
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .registers 2

    .line 455
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-nez v0, :cond_15

    .line 456
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-nez v1, :cond_10

    .line 459
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 461
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 463
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 583
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .registers 4

    .line 486
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 487
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    .line 488
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    .line 489
    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    .line 490
    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    .line 491
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->cachedSize:I

    .line 492
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 518
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 519
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 520
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 521
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_16
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_24

    .line 524
    const/4 v5, 0x2

    .line 525
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_24
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    if-eqz v1, :cond_2e

    .line 528
    const/4 v2, 0x3

    .line 529
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_2e
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3a

    .line 532
    const/4 v5, 0x4

    .line 533
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    :cond_3a
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_46

    .line 536
    const/4 v3, 0x5

    .line 537
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_46
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 548
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_34

    .line 552
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 553
    return-object p0

    .line 574
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    goto :goto_32

    .line 570
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    .line 571
    goto :goto_32

    .line 566
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    .line 567
    goto :goto_32

    .line 562
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    .line 563
    goto :goto_32

    .line 558
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 559
    goto :goto_32

    .line 550
    :sswitch_31
    return-object p0

    .line 578
    .end local v0    # "tag":I
    :cond_32
    :goto_32
    goto :goto_0

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_31
        0xa -> :sswitch_2a
        0x10 -> :sswitch_23
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_15
        0x28 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 499
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 501
    :cond_10
    iget-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    .line 502
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 504
    :cond_1c
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    if-eqz v0, :cond_24

    .line 505
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 507
    :cond_24
    iget-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2e

    .line 508
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 510
    :cond_2e
    iget-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    .line 511
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 513
    :cond_38
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 514
    return-void
.end method
