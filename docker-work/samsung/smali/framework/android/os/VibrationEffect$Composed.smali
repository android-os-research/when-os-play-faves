.class public final Landroid/os/VibrationEffect$Composed;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composed"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRepeatIndex:I

.field private final blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 823
    new-instance v0, Landroid/os/VibrationEffect$Composed$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Composed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 632
    const-class v0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitude:I

    .line 635
    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 637
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/vibrator/VibrationEffectSegment;)V
    .registers 4
    .param p1, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 640
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/vibrator/VibrationEffectSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 641
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;I)V
    .registers 4
    .param p2, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)V"
        }
    .end annotation

    .line 645
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<+Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    .line 647
    iput p2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    .line 648
    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect$Composed;
    .registers 6
    .param p1, "effectStrength"    # I

    .line 766
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 767
    .local v0, "segmentCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 768
    .local v1, "scaledSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_20

    .line 769
    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 771
    .end local v2    # "i":I
    :cond_20
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 772
    return-object p0

    .line 774
    :cond_29
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v2, v1, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 775
    .local v2, "scaled":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->validate()V

    .line 776
    return-object v2
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 626
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->applyEffectStrength(I)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 781
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 782
    return v1

    .line 784
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 785
    .local v0, "other":Landroid/os/VibrationEffect$Composed;
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    iget v3, v0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public blacklist getDuration()J
    .registers 9

    .line 683
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ltz v0, :cond_a

    .line 684
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 686
    :cond_a
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 687
    .local v0, "segmentCount":I
    const-wide/16 v1, 0x0

    .line 688
    .local v1, "totalDuration":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v0, :cond_2c

    .line 689
    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v4

    .line 690
    .local v4, "segmentDuration":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_28

    .line 691
    return-wide v4

    .line 693
    :cond_28
    add-long/2addr v1, v4

    .line 688
    .end local v4    # "segmentDuration":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 695
    .end local v3    # "i":I
    :cond_2c
    return-wide v1
.end method

.method public blacklist getRepeatIndex()I
    .registers 2

    .line 656
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    return v0
.end method

.method public blacklist getSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 790
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 12

    .line 701
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide v0

    .line 702
    .local v0, "totalDuration":J
    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_c

    .line 705
    return v5

    .line 707
    :cond_c
    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 708
    .local v4, "segmentCount":I
    int-to-long v6, v4

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-lez v6, :cond_1a

    .line 711
    return v5

    .line 713
    :cond_1a
    const-wide/16 v0, 0x0

    .line 714
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    if-ge v6, v4, :cond_44

    .line 715
    iget-object v7, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/VibrationEffectSegment;->isHapticFeedbackCandidate()Z

    move-result v7

    if-nez v7, :cond_2e

    .line 717
    return v5

    .line 719
    :cond_2e
    iget-object v7, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v7

    .line 720
    .local v7, "segmentDuration":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_41

    .line 721
    add-long/2addr v0, v7

    .line 714
    .end local v7    # "segmentDuration":J
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 725
    .end local v6    # "i":I
    :cond_44
    cmp-long v2, v0, v2

    if-gtz v2, :cond_49

    const/4 v5, 0x1

    :cond_49
    return v5
.end method

.method public blacklist resolve(I)Landroid/os/VibrationEffect$Composed;
    .registers 6
    .param p1, "defaultAmplitude"    # I

    .line 732
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 733
    .local v0, "segmentCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .local v1, "resolvedSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_20

    .line 735
    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->resolve(I)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 737
    .end local v2    # "i":I
    :cond_20
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 738
    return-object p0

    .line 740
    :cond_29
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v2, v1, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 741
    .local v2, "resolved":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->validate()V

    .line 742
    return-object v2
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 626
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->resolve(I)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/VibrationEffect$Composed;
    .registers 6
    .param p1, "scaleFactor"    # F

    .line 749
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 750
    .local v0, "segmentCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v1, "scaledSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_20

    .line 752
    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->scale(F)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 754
    .end local v2    # "i":I
    :cond_20
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 755
    return-object p0

    .line 757
    :cond_29
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v2, v1, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 758
    .local v2, "scaled":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->validate()V

    .line 759
    return-object v2
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .registers 2

    .line 626
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->scale(F)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Composed{segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagnitudeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 798
    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    return-object v0
.end method

.method public blacklist validate()V
    .registers 10

    .line 662
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 663
    .local v0, "segmentCount":I
    const/4 v1, 0x0

    .line 664
    .local v1, "hasNonZeroDuration":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x0

    if-ge v2, v0, :cond_25

    .line 665
    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 666
    .local v4, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->validate()V

    .line 668
    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_21

    const/4 v3, 0x1

    :cond_21
    or-int/2addr v1, v3

    .line 664
    .end local v4    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 670
    .end local v2    # "i":I
    :cond_25
    const-string v2, ")"

    if-eqz v1, :cond_58

    .line 674
    iget v4, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    .line 675
    add-int/lit8 v5, v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "repeat index must be within the bounds of the segments (segments.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 679
    :cond_57
    return-void

    .line 671
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at least one timing must be non-zero (segments="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 813
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 814
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    return-void
.end method
