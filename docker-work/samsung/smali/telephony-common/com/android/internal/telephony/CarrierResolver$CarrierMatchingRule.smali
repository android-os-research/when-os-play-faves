.class public Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
.super Ljava/lang/Object;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarrierMatchingRule"
.end annotation


# instance fields
.field public final blacklist apn:Ljava/lang/String;

.field public final blacklist gid1:Ljava/lang/String;

.field public final blacklist gid2:Ljava/lang/String;

.field public final blacklist iccidPrefix:Ljava/lang/String;

.field public final blacklist imsiPrefixPattern:Ljava/lang/String;

.field private blacklist mCid:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mParentCid:I

.field private blacklist mScore:I

.field public final blacklist mccMnc:Ljava/lang/String;

.field public final blacklist plmn:Ljava/lang/String;

.field public final blacklist privilegeAccessRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist spn:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V
    .registers 3

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 618
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 639
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    .line 640
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    .line 641
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    .line 642
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    .line 643
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    .line 644
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    .line 645
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    .line 646
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    .line 647
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    .line 648
    iget v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    .line 649
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    .line 650
    iget p1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 618
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 624
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    .line 625
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    .line 626
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    .line 627
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    .line 628
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    .line 629
    iput-object p6, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    .line 630
    iput-object p7, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    .line 631
    iput-object p8, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    .line 632
    iput-object p9, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    .line 633
    iput p10, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    .line 634
    iput-object p11, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    .line 635
    iput p12, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    return-void
.end method

.method private blacklist carrierPrivilegeRulesMatch(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_37

    .line 759
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_37

    .line 762
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 764
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 765
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p0, 0x1

    :cond_37
    :goto_37
    return p0
.end method

.method private blacklist gidMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 754
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private blacklist iccidPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 747
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist imsiPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 729
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 730
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    return v1

    .line 731
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_1b

    return v1

    :cond_1b
    move p0, v1

    .line 734
    :goto_1c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_40

    .line 735
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_3d

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-eq v2, v3, :cond_3d

    .line 736
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3d

    return v1

    :cond_3d
    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_40
    return v0
.end method


# virtual methods
.method public blacklist match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V
    .registers 6

    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    .line 661
    iget-object v3, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smequals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 662
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 665
    :cond_13
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 667
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 668
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 669
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 672
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 674
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 675
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 676
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 679
    :cond_3d
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 681
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 682
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 683
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 686
    :cond_52
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 688
    :cond_58
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    if-eqz v0, :cond_6d

    .line 689
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 690
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 693
    :cond_67
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 695
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_83

    .line 696
    iget-object v3, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smequals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 697
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 700
    :cond_7d
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 702
    :cond_83
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    if-eqz v0, :cond_98

    .line 703
    iget-object v3, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smequals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_92

    .line 704
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 707
    :cond_92
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 710
    :cond_98
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    if-eqz v0, :cond_b5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 711
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->carrierPrivilegeRulesMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 713
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 716
    :cond_af
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 719
    :cond_b5
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    if-eqz v0, :cond_c9

    .line 720
    iget-object p1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smequals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_c4

    .line 721
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 724
    :cond_c4
    iget p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    :cond_c9
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CarrierMatchingRule] - mccmnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi_prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iccid_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " privilege_access_rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " apn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
