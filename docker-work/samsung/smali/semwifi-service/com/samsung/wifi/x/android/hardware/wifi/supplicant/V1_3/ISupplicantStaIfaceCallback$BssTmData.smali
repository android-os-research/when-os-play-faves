.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BssTmData"
.end annotation


# instance fields
.field public assocRetryDelayMs:I

.field public flags:I

.field public mboCellPreference:B

.field public mboTransitionReason:B

.field public status:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 440
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    .line 448
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    .line 452
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    .line 456
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 523
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 526
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 528
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 527
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 531
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 533
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;-><init>()V

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    .line 534
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 535
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;",
            ">;)V"
        }
    .end annotation

    .line 559
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 561
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 562
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 563
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 564
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 566
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 568
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 571
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 466
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    if-eq v2, v3, :cond_11

    return v1

    .line 469
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    .line 470
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 473
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 476
    :cond_2d
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    if-eq v2, v3, :cond_34

    return v1

    .line 479
    :cond_34
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    if-eq v2, v3, :cond_3b

    return v1

    .line 482
    :cond_3b
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    iget-byte p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    if-eq p0, p1, :cond_42

    return v1

    :cond_42
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 490
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    .line 491
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->flags:I

    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    .line 494
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    .line 495
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 490
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 544
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 545
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->flags:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 546
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 547
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    const-wide/16 v0, 0xd

    add-long/2addr p3, v0

    .line 548
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x10

    .line 517
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 518
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".status = "

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmStatusCode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .flags = "

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->flags:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmDataFlagsMask;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .assocRetryDelayMs = "

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .mboTransitionReason = "

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$MboTransitionReasonCode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .mboCellPreference = "

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$MboCellularDataConnectionPrefValue;->toString(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 512
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 576
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->status:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 577
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->flags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 578
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->assocRetryDelayMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 579
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboTransitionReason:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0xd

    add-long/2addr p2, v0

    .line 580
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->mboCellPreference:B

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8(JB)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 552
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 553
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 554
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
