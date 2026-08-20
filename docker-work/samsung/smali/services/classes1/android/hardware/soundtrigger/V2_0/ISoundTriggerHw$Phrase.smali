.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phrase"
.end annotation


# instance fields
.field public id:I

.field public locale:Ljava/lang/String;

.field public recognitionModes:I

.field public text:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 520
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 524
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    .line 532
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 536
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 603
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 606
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 608
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 607
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 611
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 613
    new-instance v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    .line 614
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 615
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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;",
            ">;)V"
        }
    .end annotation

    .line 663
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 665
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 666
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 667
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 668
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 670
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 672
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 675
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

    .line 546
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    if-eq v2, v3, :cond_11

    return v1

    .line 549
    :cond_11
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    .line 550
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 553
    :cond_1a
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    if-eq v2, v3, :cond_21

    return v1

    .line 556
    :cond_21
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 559
    :cond_2c
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 562
    :cond_37
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    return v1

    :cond_42
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 570
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 571
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    .line 573
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 574
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    .line 575
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 570
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

    .line 624
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 625
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v4, v6

    .line 627
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 628
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 632
    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v4, :cond_4c

    mul-int/lit8 v7, v6, 0x4

    int-to-long v7, v7

    .line 635
    invoke-virtual {v5, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v7

    .line 636
    iget-object v8, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4c
    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    .line 639
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 642
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    .line 641
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    .line 646
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    .line 649
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v0

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, v4, v2

    const/4 v13, 0x0

    move-object/from16 v6, p1

    .line 648
    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x38

    .line 597
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 598
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".id = "

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .recognitionModes = "

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .users = "

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .locale = "

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .text = "

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 592
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 680
    iget v4, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 681
    iget v4, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 683
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v3, v5

    .line 684
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, v5

    const/4 v7, 0x0

    .line 685
    invoke-virtual {p1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 686
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2d
    if-ge v7, v2, :cond_44

    mul-int/lit8 v4, v7, 0x4

    int-to-long v8, v4

    .line 688
    iget-object v4, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v8, v9, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_44
    add-long/2addr v5, v0

    .line 690
    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 692
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x28

    add-long/2addr p2, v0

    .line 693
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 656
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 657
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 658
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
