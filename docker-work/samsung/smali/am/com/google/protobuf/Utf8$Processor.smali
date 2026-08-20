.class abstract Lcom/google/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 541
    # invokes: Lcom/google/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    .line 549
    :goto_5
    if-lt p1, p2, :cond_9

    .line 550
    const/4 v0, 0x0

    return v0

    .line 552
    :cond_9
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    move v1, p1

    .local v1, "byte1":I
    if-gez p1, :cond_8d

    .line 555
    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_2c

    .line 557
    if-lt v0, p2, :cond_1c

    .line 559
    return v1

    .line 564
    :cond_1c
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2b

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_27

    goto :goto_2b

    .line 567
    :cond_27
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_89

    .line 565
    :cond_2b
    :goto_2b
    return v2

    .line 568
    :cond_2c
    const/16 v4, -0x10

    if-ge v1, v4, :cond_5c

    .line 570
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_3b

    .line 572
    sub-int p1, p2, v0

    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p1}, Lcom/google/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    .line 575
    :cond_3b
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 576
    .local v0, "byte2":B
    if-gt v0, v3, :cond_5b

    const/16 v5, -0x60

    if-ne v1, p1, :cond_49

    if-lt v0, v5, :cond_5b

    :cond_49
    const/16 p1, -0x13

    if-ne v1, p1, :cond_4f

    if-ge v0, v5, :cond_5b

    .line 582
    :cond_4f
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_56

    goto :goto_5b

    .line 585
    :cond_56
    nop

    .end local v0    # "byte2":B
    add-int/lit8 v4, v4, 0x1

    .line 586
    move p1, v4

    goto :goto_89

    .line 583
    .restart local v0    # "byte2":B
    :cond_5b
    :goto_5b
    return v2

    .line 588
    .end local v4    # "index":I
    .local v0, "index":I
    :cond_5c
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_67

    .line 590
    sub-int p1, p2, v0

    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p1}, Lcom/google/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    .line 594
    :cond_67
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 595
    .local v0, "byte2":I
    if-gt v0, v3, :cond_8c

    shl-int/lit8 v4, v1, 0x1c

    add-int/lit8 v5, v0, 0x70

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_8c

    add-int/lit8 v4, p1, 0x1

    .line 602
    .end local p1    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-gt p1, v3, :cond_8b

    add-int/lit8 p1, v4, 0x1

    .line 604
    .end local v4    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-le v4, v3, :cond_89

    goto :goto_8c

    .line 608
    .end local v0    # "byte2":I
    .end local v1    # "byte1":I
    :cond_89
    :goto_89
    goto/16 :goto_5

    .line 602
    .end local p1    # "index":I
    .restart local v0    # "byte2":I
    .restart local v1    # "byte1":I
    .restart local v4    # "index":I
    :cond_8b
    move p1, v4

    .line 605
    .end local v4    # "index":I
    .restart local p1    # "index":I
    :cond_8c
    :goto_8c
    return v2

    .line 552
    .end local p1    # "index":I
    .local v0, "index":I
    :cond_8d
    move p1, v0

    goto/16 :goto_5
.end method


# virtual methods
.method final decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 627
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 628
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int v2, v0, p2

    invoke-virtual {p0, v1, v2, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 629
    .end local v0    # "offset":I
    :cond_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 630
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 632
    :cond_20
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract decodeUtf8([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method final decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 19
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 646
    move-object/from16 v0, p1

    move/from16 v1, p3

    or-int v2, p2, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v3, v3, p2

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_cb

    .line 651
    move/from16 v2, p2

    .line 652
    .local v2, "offset":I
    add-int v5, v2, v1

    .line 656
    .local v5, "limit":I
    new-array v12, v1, [C

    .line 657
    .local v12, "resultArr":[C
    const/4 v6, 0x0

    .line 661
    .local v6, "resultPos":I
    :goto_19
    if-ge v2, v5, :cond_2f

    .line 662
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 663
    .local v7, "b":B
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v8

    if-nez v8, :cond_26

    .line 664
    goto :goto_2f

    .line 666
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 667
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "resultPos":I
    .local v8, "resultPos":I
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v7, v12, v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 668
    .end local v7    # "b":B
    move v6, v8

    goto :goto_19

    .line 670
    .end local v8    # "resultPos":I
    .restart local v6    # "resultPos":I
    :cond_2f
    :goto_2f
    move v11, v6

    .end local v6    # "resultPos":I
    .local v11, "resultPos":I
    :goto_30
    if-ge v2, v5, :cond_c5

    .line 671
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 672
    .local v2, "byte1":B
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 673
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "resultPos":I
    .local v7, "resultPos":I
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v12, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 676
    :goto_43
    if-ge v6, v5, :cond_59

    .line 677
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    .line 678
    .local v8, "b":B
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_50

    .line 679
    goto :goto_59

    .line 681
    :cond_50
    add-int/lit8 v6, v6, 0x1

    .line 682
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "resultPos":I
    .local v9, "resultPos":I
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v8, v12, v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 683
    .end local v8    # "b":B
    move v7, v9

    goto :goto_43

    .line 714
    .end local v2    # "byte1":B
    .end local v9    # "resultPos":I
    .restart local v7    # "resultPos":I
    :cond_59
    :goto_59
    move v2, v6

    move v11, v7

    goto/16 :goto_be

    .line 684
    .end local v7    # "resultPos":I
    .restart local v2    # "byte1":B
    .restart local v11    # "resultPos":I
    :cond_5d
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 685
    if-ge v6, v5, :cond_73

    .line 688
    add-int/lit8 v7, v6, 0x1

    .line 689
    .end local v6    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v8, v11, 0x1

    .line 688
    .end local v11    # "resultPos":I
    .local v8, "resultPos":I
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v2, v6, v12, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v2, v7

    move v11, v8

    goto :goto_be

    .line 686
    .end local v7    # "offset":I
    .end local v8    # "resultPos":I
    .restart local v6    # "offset":I
    .restart local v11    # "resultPos":I
    :cond_73
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 690
    :cond_78
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 691
    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_96

    .line 694
    add-int/lit8 v7, v6, 0x1

    .line 696
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v8, v7, 0x1

    .line 697
    .end local v7    # "offset":I
    .local v8, "offset":I
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v9, v11, 0x1

    .line 694
    .end local v11    # "resultPos":I
    .restart local v9    # "resultPos":I
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v2, v6, v7, v12, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v2, v8

    move v11, v9

    goto :goto_be

    .line 692
    .end local v8    # "offset":I
    .end local v9    # "resultPos":I
    .restart local v6    # "offset":I
    .restart local v11    # "resultPos":I
    :cond_96
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 701
    :cond_9b
    add-int/lit8 v7, v5, -0x2

    if-ge v6, v7, :cond_c0

    .line 704
    add-int/lit8 v7, v6, 0x1

    .line 706
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    add-int/lit8 v6, v7, 0x1

    .line 707
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    add-int/lit8 v13, v6, 0x1

    .line 708
    .end local v6    # "offset":I
    .local v13, "offset":I
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    add-int/lit8 v14, v11, 0x1

    .line 704
    .end local v11    # "resultPos":I
    .local v14, "resultPos":I
    move v6, v2

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v12

    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v6 .. v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 712
    add-int/2addr v14, v4

    move v2, v13

    move v11, v14

    .line 714
    .end local v13    # "offset":I
    .end local v14    # "resultPos":I
    .local v2, "offset":I
    .restart local v11    # "resultPos":I
    :goto_be
    goto/16 :goto_30

    .line 702
    .local v2, "byte1":B
    .restart local v6    # "offset":I
    :cond_c0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 716
    .end local v6    # "offset":I
    .local v2, "offset":I
    :cond_c5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12, v3, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 647
    .end local v2    # "offset":I
    .end local v5    # "limit":I
    .end local v11    # "resultPos":I
    .end local v12    # "resultArr":[C
    :cond_cb
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 648
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    const-string v3, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method abstract decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method abstract encodeUtf8(Ljava/lang/CharSequence;[BII)I
.end method

.method final encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 769
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 770
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 771
    .local v0, "offset":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 772
    .local v1, "endIndex":I
    sub-int v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 773
    .end local v0    # "offset":I
    .end local v1    # "endIndex":I
    goto :goto_2e

    :cond_21
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_2e

    .line 776
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 778
    :goto_2e
    return-void
.end method

.method final encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 788
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 789
    .local v0, "inLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 790
    .local v1, "outIx":I
    const/4 v2, 0x0

    .line 798
    .local v2, "inIx":I
    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_20

    :try_start_d
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-ge v4, v3, :cond_20

    .line 799
    add-int v3, v1, v2

    int-to-byte v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 798
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 847
    .end local v5    # "c":C
    :catch_1d
    move-exception v3

    goto/16 :goto_cc

    .line 801
    :cond_20
    if-ne v2, v0, :cond_28

    .line 803
    add-int v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 804
    return-void

    .line 807
    :cond_28
    add-int/2addr v1, v2

    .line 808
    :goto_29
    if-ge v2, v0, :cond_c7

    .line 809
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 810
    .local v4, "c":C
    if-ge v4, v3, :cond_37

    .line 812
    int-to-byte v5, v4

    invoke-virtual {p2, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_35} :catch_1d

    goto/16 :goto_c1

    .line 813
    :cond_37
    const/16 v5, 0x800

    if-ge v4, v5, :cond_53

    .line 817
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_42
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 818
    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_4c} :catch_4f

    move v1, v5

    goto/16 :goto_c1

    .line 847
    .end local v4    # "c":C
    :catch_4f
    move-exception v3

    move v1, v5

    goto/16 :goto_cc

    .line 819
    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_53
    const v5, 0xd800

    if-lt v4, v5, :cond_a5

    const v5, 0xdfff

    if-ge v5, v4, :cond_5e

    goto :goto_a5

    .line 833
    :cond_5e
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_9f

    add-int/lit8 v2, v2, 0x1

    :try_start_64
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "low":C
    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 837
    invoke-static {v4, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5
    :try_end_73
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_73} :catch_1d

    .line 838
    .local v5, "codePoint":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .local v7, "outIx":I
    ushr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    :try_start_7a
    invoke-virtual {p2, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7a .. :try_end_7d} :catch_9c

    .line 839
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_85
    invoke-virtual {p2, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_85 .. :try_end_88} :catch_1d

    .line 840
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .restart local v7    # "outIx":I
    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_90
    invoke-virtual {p2, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 841
    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_9a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_90 .. :try_end_9a} :catch_9c

    move v1, v7

    goto :goto_c1

    .line 847
    .end local v4    # "c":C
    .end local v5    # "codePoint":I
    .end local v6    # "low":C
    :catch_9c
    move-exception v3

    move v1, v7

    goto :goto_cc

    .line 834
    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_9f
    :try_start_9f
    new-instance v3, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .end local v0    # "inLength":I
    .end local v1    # "outIx":I
    .end local v2    # "inIx":I
    .end local p0    # "this":Lcom/google/protobuf/Utf8$Processor;
    .end local p1    # "in":Ljava/lang/CharSequence;
    .end local p2    # "out":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_a5} :catch_1d

    .line 824
    .restart local v0    # "inLength":I
    .restart local v1    # "outIx":I
    .restart local v2    # "inIx":I
    .restart local p0    # "this":Lcom/google/protobuf/Utf8$Processor;
    .restart local p1    # "in":Ljava/lang/CharSequence;
    .restart local p2    # "out":Ljava/nio/ByteBuffer;
    :cond_a5
    :goto_a5
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_ac
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ac .. :try_end_af} :catch_4f

    .line 825
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_b7
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 826
    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p2, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 808
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    .line 846
    .end local v4    # "c":C
    :cond_c7
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_ca} :catch_1d

    .line 855
    nop

    .line 856
    return-void

    .line 852
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_cc
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 853
    .local v4, "badWriteIndex":I
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 854
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method abstract encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final isValidUtf8([BII)Z
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 429
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 430
    .local v0, "offset":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int v2, v0, p3

    add-int v3, v0, p4

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1

    .line 431
    .end local v0    # "offset":I
    :cond_17
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 434
    :cond_22
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method abstract partialIsValidUtf8(I[BII)I
.end method

.method final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 12
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 448
    if-eqz p1, :cond_95

    .line 456
    if-lt p3, p4, :cond_5

    .line 457
    return p1

    .line 460
    :cond_5
    int-to-byte v0, p1

    .line 462
    .local v0, "byte1":B
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1f

    .line 467
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_1e

    add-int/lit8 v1, p3, 0x1

    .line 469
    .end local p3    # "index":I
    .local v1, "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1b

    move p3, v1

    goto :goto_1e

    :cond_1b
    move p3, v1

    goto/16 :goto_95

    .line 470
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_1e
    :goto_1e
    return v2

    .line 472
    :cond_1f
    const/16 v4, -0x10

    if-ge v0, v4, :cond_52

    .line 476
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    .line 477
    .local v4, "byte2":B
    if-nez v4, :cond_37

    .line 478
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .local v5, "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 479
    if-lt v5, p4, :cond_36

    .line 480
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 479
    :cond_36
    move p3, v5

    .line 483
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_37
    if-gt v4, v3, :cond_51

    const/16 v5, -0x60

    if-ne v0, v1, :cond_3f

    if-lt v4, v5, :cond_51

    :cond_3f
    const/16 v1, -0x13

    if-ne v0, v1, :cond_45

    if-ge v4, v5, :cond_51

    :cond_45
    add-int/lit8 v1, p3, 0x1

    .line 489
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_4f

    move p3, v1

    goto :goto_51

    .line 492
    .end local v4    # "byte2":B
    :cond_4f
    move p3, v1

    goto :goto_95

    .line 490
    .end local v1    # "index":I
    .restart local v4    # "byte2":B
    .restart local p3    # "index":I
    :cond_51
    :goto_51
    return v2

    .line 496
    .end local v4    # "byte2":B
    :cond_52
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 497
    .local v1, "byte2":B
    const/4 v4, 0x0

    .line 498
    .local v4, "byte3":B
    if-nez v1, :cond_68

    .line 499
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 500
    if-lt v5, p4, :cond_66

    .line 501
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 500
    :cond_66
    move p3, v5

    goto :goto_6b

    .line 504
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_68
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    .line 506
    :goto_6b
    if-nez v4, :cond_7b

    .line 507
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 508
    if-lt v5, p4, :cond_7a

    .line 509
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p3

    return p3

    .line 508
    :cond_7a
    move p3, v5

    .line 517
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_7b
    if-gt v1, v3, :cond_94

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_94

    if-gt v4, v3, :cond_94

    add-int/lit8 v5, p3, 0x1

    .line 526
    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_92

    move p3, v5

    goto :goto_94

    :cond_92
    move p3, v5

    goto :goto_95

    .line 527
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_94
    :goto_94
    return v2

    .line 533
    .end local v0    # "byte1":B
    .end local v1    # "byte2":B
    .end local v4    # "byte3":B
    :cond_95
    :goto_95
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
.end method
