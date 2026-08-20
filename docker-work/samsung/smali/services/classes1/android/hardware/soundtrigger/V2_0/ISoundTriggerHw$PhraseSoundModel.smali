.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhraseSoundModel"
.end annotation


# instance fields
.field public common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

.field public phrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 759
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 762
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 764
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 763
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 767
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 769
    new-instance v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    .line 770
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 771
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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;",
            ">;)V"
        }
    .end annotation

    .line 804
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 806
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 807
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 808
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 809
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 811
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    mul-int/lit8 v5, v4, 0x48

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 813
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 816
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

    .line 720
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    if-eq v2, v3, :cond_11

    return v1

    .line 723
    :cond_11
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    .line 724
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 727
    :cond_1e
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 735
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 736
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    .line 737
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 735
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 780
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, v9, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x38

    add-long v5, p3, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 782
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x38

    int-to-long v7, v2

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v5, v3

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    .line 783
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 787
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v10, :cond_49

    .line 789
    new-instance v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    .line 790
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 791
    iget-object v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_49
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x48

    .line 753
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 754
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".common = "

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .phrases = "

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 748
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 821
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 823
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x38

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 824
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 825
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 826
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_26
    if-ge v5, v0, :cond_39

    .line 828
    iget-object v4, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    mul-int/lit8 v6, v5, 0x38

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_39
    add-long/2addr p2, v1

    .line 830
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 797
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 798
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 799
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
