.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociationRejectionData"
.end annotation


# instance fields
.field public bssid:[B

.field public isMboAssocDisallowedReasonCodePresent:Z

.field public isOceRssiBasedAssocRejectAttrPresent:Z

.field public mboAssocDisallowedReason:B

.field public oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

.field public ssid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public statusCode:I

.field public timedOut:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 432
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    const/4 v0, 0x0

    .line 437
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    .line 442
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    .line 447
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    .line 455
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    .line 460
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    .line 465
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 550
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 553
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 555
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 554
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 560
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;-><init>()V

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    .line 561
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 562
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;",
            ">;)V"
        }
    .end annotation

    .line 605
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 607
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 608
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 609
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 610
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 612
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 614
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 617
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

    .line 475
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;

    if-eq v2, v3, :cond_11

    return v1

    .line 478
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;

    .line 479
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 482
    :cond_1e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 485
    :cond_29
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    if-eq v2, v3, :cond_30

    return v1

    .line 488
    :cond_30
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    if-eq v2, v3, :cond_37

    return v1

    .line 491
    :cond_37
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    if-eq v2, v3, :cond_3e

    return v1

    .line 494
    :cond_3e
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    if-eq v2, v3, :cond_45

    return v1

    .line 497
    :cond_45
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    if-eq v2, v3, :cond_4c

    return v1

    .line 500
    :cond_4c
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    return v1

    :cond_57
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    .line 509
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    .line 510
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    .line 511
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    .line 512
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    .line 513
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    .line 514
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    .line 515
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    .line 516
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 508
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    .line 572
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v4, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 573
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 577
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v6, :cond_3a

    mul-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    .line 580
    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    .line 581
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3a
    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    .line 586
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    const/4 v5, 0x6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    .line 589
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    const-wide/16 v2, 0x1c

    add-long v2, p3, v2

    .line 590
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    const-wide/16 v2, 0x1d

    add-long v2, p3, v2

    .line 591
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    const-wide/16 v2, 0x1e

    add-long v2, p3, v2

    .line 592
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    const-wide/16 v2, 0x1f

    add-long v2, p3, v2

    .line 593
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    .line 594
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x28

    .line 544
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 545
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ssid = "

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .bssid = "

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .statusCode = "

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .timedOut = "

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .isMboAssocDisallowedReasonCodePresent = "

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .mboAssocDisallowedReason = "

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$MboAssocDisallowedReasonCode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .isOceRssiBasedAssocRejectAttrPresent = "

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .oceRssiBasedAssocRejectData = "

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 539
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 623
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    .line 624
    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    .line 625
    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 626
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1e
    if-ge v7, v0, :cond_35

    mul-int/lit8 v6, v7, 0x1

    int-to-long v8, v6

    .line 628
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_35
    add-long/2addr v3, v1

    .line 630
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 634
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->bssid:[B

    if-eqz v2, :cond_78

    .line 636
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_78

    .line 640
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 643
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->statusCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 644
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->timedOut:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1d

    add-long/2addr v0, p2

    .line 645
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1e

    add-long/2addr v0, p2

    .line 646
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->mboAssocDisallowedReason:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x1f

    add-long/2addr v0, p2

    .line 647
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 648
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$OceRssiBasedAssocRejectAttr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void

    .line 637
    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 598
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 599
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 600
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
