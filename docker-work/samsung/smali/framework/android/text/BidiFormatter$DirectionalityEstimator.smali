.class public Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final greylist-max-o DIR_TYPE_CACHE:[B

.field private static final greylist-max-o DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private greylist-max-o charIndex:I

.field private final greylist-max-o isHtml:Z

.field private greylist-max-o lastChar:C

.field private final greylist-max-o length:I

.field private final greylist-max-o text:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 597
    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_14

    .line 601
    sget-object v2, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 603
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 653
    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 654
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 655
    return-void
.end method

.method private static greylist-max-o getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .line 826
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v0

    :goto_d
    return v0
.end method

.method public static greylist-max-o getDirectionality(I)B
    .registers 2
    .param p0, "codePoint"    # I

    .line 610
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method private greylist-max-o skipEntityBackward()B
    .registers 5

    .line 967
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 968
    .local v0, "initialCharIndex":I
    :cond_2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3b

    if-lez v1, :cond_1d

    .line 969
    iget-object v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 970
    const/16 v3, 0x26

    if-ne v1, v3, :cond_1b

    .line 971
    const/16 v1, 0xc

    return v1

    .line 973
    :cond_1b
    if-ne v1, v2, :cond_2

    .line 977
    :cond_1d
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 978
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 979
    const/16 v1, 0xd

    return v1
.end method

.method private greylist-max-o skipEntityForward()B
    .registers 4

    .line 952
    :goto_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_17

    goto :goto_0

    .line 953
    :cond_17
    const/16 v0, 0xc

    return v0
.end method

.method private greylist-max-o skipTagBackward()B
    .registers 5

    .line 924
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 925
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3e

    if-lez v1, :cond_3c

    .line 926
    iget-object v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 927
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1b

    .line 929
    const/16 v1, 0xc

    return v1

    .line 931
    :cond_1b
    if-ne v1, v2, :cond_1e

    .line 932
    goto :goto_3c

    .line 934
    :cond_1e
    const/16 v2, 0x22

    if-eq v1, v2, :cond_26

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 936
    :cond_26
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 937
    .local v1, "quote":C
    :goto_28
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_3b

    iget-object v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3b

    goto :goto_28

    .line 938
    .end local v1    # "quote":C
    :cond_3b
    goto :goto_2

    .line 941
    :cond_3c
    :goto_3c
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 942
    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 943
    const/16 v1, 0xd

    return v1
.end method

.method private greylist-max-o skipTagForward()B
    .registers 6

    .line 895
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 896
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_3b

    .line 897
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 898
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1b

    .line 900
    const/16 v1, 0xc

    return v1

    .line 902
    :cond_1b
    const/16 v2, 0x22

    if-eq v1, v2, :cond_23

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 904
    :cond_23
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 905
    .local v1, "quote":C
    :goto_25
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3a

    iget-object v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3a

    goto :goto_25

    .line 906
    .end local v1    # "quote":C
    :cond_3a
    goto :goto_2

    .line 909
    :cond_3b
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 910
    const/16 v1, 0x3c

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 911
    const/16 v1, 0xd

    return v1
.end method


# virtual methods
.method greylist-max-o dirTypeBackward()B
    .registers 4

    .line 869
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 870
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 871
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 872
    .local v0, "codePoint":I
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 873
    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v1

    return v1

    .line 875
    .end local v0    # "codePoint":I
    :cond_28
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 876
    iget-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 877
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4b

    .line 879
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_43

    .line 880
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_4b

    .line 881
    :cond_43
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4b

    .line 882
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    .line 885
    :cond_4b
    :goto_4b
    return v0
.end method

.method greylist-max-o dirTypeForward()B
    .registers 4

    .line 839
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 840
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 841
    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 842
    .local v0, "codePoint":I
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 843
    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v1

    return v1

    .line 845
    .end local v0    # "codePoint":I
    :cond_26
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 846
    iget-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 847
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_49

    .line 849
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_41

    .line 850
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_49

    .line 851
    :cond_41
    const/16 v2, 0x26

    if-ne v1, v2, :cond_49

    .line 852
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    .line 855
    :cond_49
    :goto_49
    return v0
.end method

.method greylist-max-o getEntryDir()I
    .registers 9

    .line 669
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, "embeddingLevel":I
    const/4 v2, 0x0

    .line 672
    .local v2, "embeddingLevelDir":I
    const/4 v3, 0x0

    .line 673
    .local v3, "firstNonEmptyEmbeddingLevel":I
    :goto_6
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_30

    if-nez v3, :cond_30

    .line 674
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    sparse-switch v4, :sswitch_data_54

    .line 708
    move v3, v1

    .line 709
    goto :goto_6

    .line 686
    :sswitch_19
    add-int/lit8 v1, v1, -0x1

    .line 690
    const/4 v2, 0x0

    .line 691
    goto :goto_6

    .line 682
    :sswitch_1d
    add-int/lit8 v1, v1, 0x1

    .line 683
    const/4 v2, 0x1

    .line 684
    goto :goto_6

    .line 677
    :sswitch_21
    add-int/lit8 v1, v1, 0x1

    .line 678
    const/4 v2, -0x1

    .line 679
    goto :goto_6

    .line 693
    :sswitch_25
    goto :goto_6

    .line 702
    :sswitch_26
    if-nez v1, :cond_29

    .line 703
    return v7

    .line 705
    :cond_29
    move v3, v1

    .line 706
    goto :goto_6

    .line 695
    :sswitch_2b
    if-nez v1, :cond_2e

    .line 696
    return v6

    .line 698
    :cond_2e
    move v3, v1

    .line 699
    goto :goto_6

    .line 715
    :cond_30
    if-nez v3, :cond_33

    .line 718
    return v0

    .line 722
    :cond_33
    if-eqz v2, :cond_36

    .line 724
    return v2

    .line 729
    :cond_36
    :goto_36
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_52

    .line 730
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_7a

    goto :goto_51

    .line 746
    :pswitch_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 740
    :pswitch_45
    if-ne v3, v1, :cond_48

    .line 741
    return v7

    .line 743
    :cond_48
    add-int/lit8 v1, v1, -0x1

    .line 744
    goto :goto_51

    .line 733
    :pswitch_4b
    if-ne v3, v1, :cond_4e

    .line 734
    return v6

    .line 736
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    .line 737
    nop

    .line 747
    :goto_51
    goto :goto_36

    .line 751
    :cond_52
    return v0

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_2b
        0x1 -> :sswitch_26
        0x2 -> :sswitch_26
        0x9 -> :sswitch_25
        0xe -> :sswitch_21
        0xf -> :sswitch_21
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0xe
        :pswitch_4b
        :pswitch_4b
        :pswitch_45
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method greylist-max-o getExitDir()I
    .registers 6

    .line 767
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 770
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_6
    :goto_6
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_35

    .line 771
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_38

    .line 809
    if-nez v1, :cond_6

    .line 810
    move v1, v0

    goto :goto_6

    .line 804
    :sswitch_17
    add-int/lit8 v0, v0, 0x1

    .line 805
    goto :goto_6

    .line 798
    :sswitch_1a
    if-ne v1, v0, :cond_1d

    .line 799
    return v3

    .line 801
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 802
    goto :goto_6

    .line 782
    :sswitch_20
    if-ne v1, v0, :cond_23

    .line 783
    return v4

    .line 785
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 786
    goto :goto_6

    .line 807
    :sswitch_26
    goto :goto_6

    .line 789
    :sswitch_27
    if-nez v0, :cond_2a

    .line 790
    return v3

    .line 792
    :cond_2a
    if-nez v1, :cond_6

    .line 793
    move v1, v0

    goto :goto_6

    .line 773
    :sswitch_2e
    if-nez v0, :cond_31

    .line 774
    return v4

    .line 776
    :cond_31
    if-nez v1, :cond_6

    .line 777
    move v1, v0

    goto :goto_6

    .line 815
    :cond_35
    const/4 v2, 0x0

    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_2e
        0x1 -> :sswitch_27
        0x2 -> :sswitch_27
        0x9 -> :sswitch_26
        0xe -> :sswitch_20
        0xf -> :sswitch_20
        0x10 -> :sswitch_1a
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_17
    .end sparse-switch
.end method
