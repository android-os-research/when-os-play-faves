.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierIdMatchingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;


# instance fields
.field public blacklist carrierId:I

.field public blacklist gid1:Ljava/lang/String;

.field public blacklist gid2:Ljava/lang/String;

.field public blacklist iccidPrefix:Ljava/lang/String;

.field public blacklist imsiPrefix:Ljava/lang/String;

.field public blacklist mccmnc:Ljava/lang/String;

.field public blacklist pnn:Ljava/lang/String;

.field public blacklist preferApn:Ljava/lang/String;

.field public blacklist privilegeAccessRule:[Ljava/lang/String;

.field public blacklist spn:Ljava/lang/String;

.field public blacklist unknownGid1:Ljava/lang/String;

.field public blacklist unknownMccmnc:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4407
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4408
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 2

    .line 4360
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-nez v0, :cond_15

    .line 4361
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4363
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 4364
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 4366
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4368
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4628
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4622
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 3

    const/4 v0, 0x0

    .line 4412
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    const-string v0, ""

    .line 4413
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    .line 4414
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    .line 4415
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 4416
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    .line 4417
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    .line 4418
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    .line 4419
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    .line 4420
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    .line 4421
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    .line 4422
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    .line 4423
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4424
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4425
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 4478
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4479
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 4481
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4483
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x2

    .line 4484
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    .line 4485
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4487
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x3

    .line 4488
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    .line 4489
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4491
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const/4 v1, 0x4

    .line 4492
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 4493
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4495
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x5

    .line 4496
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    .line 4497
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4499
    :cond_50
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const/4 v1, 0x6

    .line 4500
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    .line 4501
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4503
    :cond_60
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const/4 v1, 0x7

    .line 4504
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    .line 4505
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4507
    :cond_70
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    const/16 v1, 0x8

    .line 4508
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    .line 4509
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4511
    :cond_81
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    const/16 v1, 0x9

    .line 4512
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    .line 4513
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4515
    :cond_92
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    const/16 v1, 0xa

    .line 4516
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    .line 4517
    invoke-static {v1, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4519
    :cond_a3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v1, :cond_c3

    array-length v1, v1

    if-lez v1, :cond_c3

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    .line 4522
    :goto_ad
    iget-object v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_c0

    .line 4523
    aget-object v6, v6, v1

    if-eqz v6, :cond_bd

    add-int/lit8 v5, v5, 0x1

    .line 4527
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    :cond_c0
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 4533
    :cond_c3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    const/16 v1, 0xc

    .line 4534
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    .line 4535
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d4
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_8e

    .line 4550
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4613
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x5a

    .line 4597
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4598
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    array-length v3, v1

    :goto_23
    add-int/2addr v0, v3

    .line 4599
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 4601
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3b

    .line 4604
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 4605
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 4608
    :cond_3b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 4609
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    goto :goto_0

    .line 4592
    :sswitch_44
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    goto :goto_0

    .line 4588
    :sswitch_4b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    goto :goto_0

    .line 4584
    :sswitch_52
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    goto :goto_0

    .line 4580
    :sswitch_59
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    goto :goto_0

    .line 4576
    :sswitch_60
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    goto :goto_0

    .line 4572
    :sswitch_67
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    goto :goto_0

    .line 4568
    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    goto :goto_0

    .line 4564
    :sswitch_75
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    goto :goto_0

    .line 4560
    :sswitch_7c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    goto/16 :goto_0

    .line 4556
    :sswitch_84
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    goto/16 :goto_0

    :sswitch_8c
    return-object p0

    nop

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_8c
        0x8 -> :sswitch_84
        0x12 -> :sswitch_7c
        0x1a -> :sswitch_75
        0x22 -> :sswitch_6e
        0x2a -> :sswitch_67
        0x32 -> :sswitch_60
        0x3a -> :sswitch_59
        0x42 -> :sswitch_52
        0x4a -> :sswitch_4b
        0x52 -> :sswitch_44
        0x5a -> :sswitch_15
        0x62 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4354
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4432
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4433
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4435
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x2

    .line 4436
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4438
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x3

    .line 4439
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4441
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x4

    .line 4442
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4444
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x5

    .line 4445
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4447
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v0, 0x6

    .line 4448
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4450
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const/4 v0, 0x7

    .line 4451
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4453
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const/16 v0, 0x8

    .line 4454
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4456
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const/16 v0, 0x9

    .line 4457
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4459
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0xa

    .line 4460
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4462
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v0, :cond_a4

    array-length v0, v0

    if-lez v0, :cond_a4

    const/4 v0, 0x0

    .line 4463
    :goto_93
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a4

    .line 4464
    aget-object v2, v2, v0

    if-eqz v2, :cond_a1

    const/16 v3, 0xb

    .line 4466
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 4470
    :cond_a4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const/16 v0, 0xc

    .line 4471
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4473
    :cond_b3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
