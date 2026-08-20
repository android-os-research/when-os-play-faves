.class public final Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "CarrierIdProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;


# instance fields
.field public blacklist gid1:[Ljava/lang/String;

.field public blacklist gid2:[Ljava/lang/String;

.field public blacklist iccidPrefix:[Ljava/lang/String;

.field public blacklist imsiPrefixXpattern:[Ljava/lang/String;

.field public blacklist mccmncTuple:[Ljava/lang/String;

.field public blacklist plmn:[Ljava/lang/String;

.field public blacklist preferredApn:[Ljava/lang/String;

.field public blacklist privilegeAccessRule:[Ljava/lang/String;

.field public blacklist spn:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2

    .line 296
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-nez v0, :cond_15

    .line 297
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 300
    sput-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 302
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 304
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 737
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2

    .line 339
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    .line 340
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 349
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 433
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    array-length v1, v1

    if-lez v1, :cond_26

    move v1, v2

    move v3, v1

    move v4, v3

    .line 437
    :goto_f
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_22

    .line 438
    aget-object v5, v5, v1

    if-eqz v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    .line 442
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 448
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-eqz v1, :cond_47

    array-length v1, v1

    if-lez v1, :cond_47

    move v1, v2

    move v3, v1

    move v4, v3

    .line 451
    :goto_30
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_43

    .line 452
    aget-object v5, v5, v1

    if-eqz v5, :cond_40

    add-int/lit8 v4, v4, 0x1

    .line 456
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_43
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 462
    :cond_47
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-eqz v1, :cond_68

    array-length v1, v1

    if-lez v1, :cond_68

    move v1, v2

    move v3, v1

    move v4, v3

    .line 465
    :goto_51
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_64

    .line 466
    aget-object v5, v5, v1

    if-eqz v5, :cond_61

    add-int/lit8 v4, v4, 0x1

    .line 470
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_64
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 476
    :cond_68
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-eqz v1, :cond_89

    array-length v1, v1

    if-lez v1, :cond_89

    move v1, v2

    move v3, v1

    move v4, v3

    .line 479
    :goto_72
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_85

    .line 480
    aget-object v5, v5, v1

    if-eqz v5, :cond_82

    add-int/lit8 v4, v4, 0x1

    .line 484
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_85
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 490
    :cond_89
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-eqz v1, :cond_aa

    array-length v1, v1

    if-lez v1, :cond_aa

    move v1, v2

    move v3, v1

    move v4, v3

    .line 493
    :goto_93
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_a6

    .line 494
    aget-object v5, v5, v1

    if-eqz v5, :cond_a3

    add-int/lit8 v4, v4, 0x1

    .line 498
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_a6
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 504
    :cond_aa
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-eqz v1, :cond_cb

    array-length v1, v1

    if-lez v1, :cond_cb

    move v1, v2

    move v3, v1

    move v4, v3

    .line 507
    :goto_b4
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_c7

    .line 508
    aget-object v5, v5, v1

    if-eqz v5, :cond_c4

    add-int/lit8 v4, v4, 0x1

    .line 512
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_c7
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 518
    :cond_cb
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-eqz v1, :cond_ec

    array-length v1, v1

    if-lez v1, :cond_ec

    move v1, v2

    move v3, v1

    move v4, v3

    .line 521
    :goto_d5
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_e8

    .line 522
    aget-object v5, v5, v1

    if-eqz v5, :cond_e5

    add-int/lit8 v4, v4, 0x1

    .line 526
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_e5
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    :cond_e8
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 532
    :cond_ec
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-eqz v1, :cond_10d

    array-length v1, v1

    if-lez v1, :cond_10d

    move v1, v2

    move v3, v1

    move v4, v3

    .line 535
    :goto_f6
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_109

    .line 536
    aget-object v5, v5, v1

    if-eqz v5, :cond_106

    add-int/lit8 v4, v4, 0x1

    .line 540
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_109
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 546
    :cond_10d
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v1, :cond_12d

    array-length v1, v1

    if-lez v1, :cond_12d

    move v1, v2

    move v3, v1

    .line 549
    :goto_116
    iget-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_129

    .line 550
    aget-object v4, v4, v2

    if-eqz v4, :cond_126

    add-int/lit8 v3, v3, 0x1

    .line 554
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_126
    add-int/lit8 v2, v2, 0x1

    goto :goto_116

    :cond_129
    add-int/2addr v0, v1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :cond_12d
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1c6

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_199

    const/16 v1, 0x12

    if-eq v0, v1, :cond_16c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_13f

    const/16 v1, 0x22

    if-eq v0, v1, :cond_112

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_e5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b8

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_8b

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_32

    .line 573
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 716
    :cond_32
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    if-nez v1, :cond_3c

    move v3, v2

    goto :goto_3d

    :cond_3c
    array-length v3, v1

    :goto_3d
    add-int/2addr v0, v3

    .line 718
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_45

    .line 720
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    :goto_45
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_55

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 724
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 727
    :cond_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 728
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    goto :goto_0

    .line 699
    :cond_5e
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-nez v1, :cond_68

    move v3, v2

    goto :goto_69

    :cond_68
    array-length v3, v1

    :goto_69
    add-int/2addr v0, v3

    .line 701
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_71

    .line 703
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_71
    :goto_71
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_81

    .line 706
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 707
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 710
    :cond_81
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 711
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    goto/16 :goto_0

    .line 682
    :cond_8b
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-nez v1, :cond_95

    move v3, v2

    goto :goto_96

    :cond_95
    array-length v3, v1

    :goto_96
    add-int/2addr v0, v3

    .line 684
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_9e

    .line 686
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9e
    :goto_9e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_ae

    .line 689
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 690
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 693
    :cond_ae
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 694
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    goto/16 :goto_0

    .line 665
    :cond_b8
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-nez v1, :cond_c2

    move v3, v2

    goto :goto_c3

    :cond_c2
    array-length v3, v1

    :goto_c3
    add-int/2addr v0, v3

    .line 667
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_cb

    .line 669
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_cb
    :goto_cb
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_db

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 673
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 676
    :cond_db
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 677
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    goto/16 :goto_0

    .line 648
    :cond_e5
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-nez v1, :cond_ef

    move v3, v2

    goto :goto_f0

    :cond_ef
    array-length v3, v1

    :goto_f0
    add-int/2addr v0, v3

    .line 650
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_f8

    .line 652
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f8
    :goto_f8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_108

    .line 655
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 656
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    .line 659
    :cond_108
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 660
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    goto/16 :goto_0

    .line 631
    :cond_112
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-nez v1, :cond_11c

    move v3, v2

    goto :goto_11d

    :cond_11c
    array-length v3, v1

    :goto_11d
    add-int/2addr v0, v3

    .line 633
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_125

    .line 635
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_125
    :goto_125
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_135

    .line 638
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    .line 642
    :cond_135
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 643
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    goto/16 :goto_0

    .line 614
    :cond_13f
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-nez v1, :cond_149

    move v3, v2

    goto :goto_14a

    :cond_149
    array-length v3, v1

    :goto_14a
    add-int/2addr v0, v3

    .line 616
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_152

    .line 618
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_152
    :goto_152
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_162

    .line 621
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 622
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_152

    .line 625
    :cond_162
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 626
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    goto/16 :goto_0

    .line 597
    :cond_16c
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-nez v1, :cond_176

    move v3, v2

    goto :goto_177

    :cond_176
    array-length v3, v1

    :goto_177
    add-int/2addr v0, v3

    .line 599
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_17f

    .line 601
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17f
    :goto_17f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_18f

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 605
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_17f

    .line 608
    :cond_18f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 609
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    goto/16 :goto_0

    .line 580
    :cond_199
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    if-nez v1, :cond_1a3

    move v3, v2

    goto :goto_1a4

    :cond_1a3
    array-length v3, v1

    :goto_1a4
    add-int/2addr v0, v3

    .line 582
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_1ac

    .line 584
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1ac
    :goto_1ac
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1bc

    .line 587
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 588
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ac

    .line 591
    :cond_1bc
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 592
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c6
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

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

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 357
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 358
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 360
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 364
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-eqz v0, :cond_31

    array-length v0, v0

    if-lez v0, :cond_31

    move v0, v1

    .line 365
    :goto_21
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_31

    .line 366
    aget-object v2, v2, v0

    if-eqz v2, :cond_2e

    const/4 v3, 0x2

    .line 368
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 372
    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-eqz v0, :cond_49

    array-length v0, v0

    if-lez v0, :cond_49

    move v0, v1

    .line 373
    :goto_39
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_49

    .line 374
    aget-object v2, v2, v0

    if-eqz v2, :cond_46

    const/4 v3, 0x3

    .line 376
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 380
    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-eqz v0, :cond_61

    array-length v0, v0

    if-lez v0, :cond_61

    move v0, v1

    .line 381
    :goto_51
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_61

    .line 382
    aget-object v2, v2, v0

    if-eqz v2, :cond_5e

    const/4 v3, 0x4

    .line 384
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 388
    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-eqz v0, :cond_79

    array-length v0, v0

    if-lez v0, :cond_79

    move v0, v1

    .line 389
    :goto_69
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_79

    .line 390
    aget-object v2, v2, v0

    if-eqz v2, :cond_76

    const/4 v3, 0x5

    .line 392
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 396
    :cond_79
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-eqz v0, :cond_91

    array-length v0, v0

    if-lez v0, :cond_91

    move v0, v1

    .line 397
    :goto_81
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_91

    .line 398
    aget-object v2, v2, v0

    if-eqz v2, :cond_8e

    const/4 v3, 0x6

    .line 400
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 404
    :cond_91
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-eqz v0, :cond_a9

    array-length v0, v0

    if-lez v0, :cond_a9

    move v0, v1

    .line 405
    :goto_99
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a9

    .line 406
    aget-object v2, v2, v0

    if-eqz v2, :cond_a6

    const/4 v3, 0x7

    .line 408
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 412
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-eqz v0, :cond_c2

    array-length v0, v0

    if-lez v0, :cond_c2

    move v0, v1

    .line 413
    :goto_b1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_c2

    .line 414
    aget-object v2, v2, v0

    if-eqz v2, :cond_bf

    const/16 v3, 0x8

    .line 416
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 420
    :cond_c2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v0, :cond_da

    array-length v0, v0

    if-lez v0, :cond_da

    .line 421
    :goto_c9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_da

    .line 422
    aget-object v0, v0, v1

    if-eqz v0, :cond_d7

    const/16 v2, 0x9

    .line 424
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 428
    :cond_da
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
