.class Landroid/net/Uri$StringUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringUri"
.end annotation


# static fields
.field static final greylist-max-o TYPE_ID:I = 0x1


# instance fields
.field private greylist-max-o authority:Landroid/net/Uri$Part;

.field private volatile greylist-max-o cachedFsi:I

.field private volatile greylist-max-o cachedSsi:I

.field private greylist-max-o fragment:Landroid/net/Uri$Part;

.field private greylist-max-o path:Landroid/net/Uri$PathPart;

.field private greylist-max-o query:Landroid/net/Uri$Part;

.field private volatile greylist-max-o scheme:Ljava/lang/String;

.field private greylist-max-o ssp:Landroid/net/Uri$Part;

.field private final greylist-max-o uriString:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriString"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri$AbstractHierarchicalUri-IA;)V

    .line 524
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    .line 534
    iput v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    .line 565
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    .line 503
    if-eqz p1, :cond_12

    .line 507
    iput-object p1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    .line 508
    return-void

    .line 504
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uriString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri$StringUri-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o findFragmentSeparator()I
    .registers 4

    .line 538
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_14

    .line 539
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    goto :goto_16

    .line 540
    :cond_14
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    .line 538
    :goto_16
    return v0
.end method

.method private greylist-max-o findSchemeSeparator()I
    .registers 3

    .line 528
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    .line 529
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iput v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    goto :goto_12

    .line 530
    :cond_10
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    .line 528
    :goto_12
    return v0
.end method

.method private greylist-max-o getAuthorityPart()Landroid/net/Uri$Part;
    .registers 3

    .line 605
    iget-object v0, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    if-nez v0, :cond_15

    .line 606
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    .line 607
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/Uri$StringUri;->parseAuthority(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "encodedAuthority":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    return-object v1

    .line 611
    .end local v0    # "encodedAuthority":Ljava/lang/String;
    :cond_15
    return-object v0
.end method

.method private greylist-max-o getFragmentPart()Landroid/net/Uri$Part;
    .registers 2

    .line 707
    iget-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    if-nez v0, :cond_f

    .line 708
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    goto :goto_10

    :cond_f
    nop

    .line 707
    :goto_10
    return-object v0
.end method

.method private greylist-max-o getPathPart()Landroid/net/Uri$PathPart;
    .registers 2

    .line 625
    iget-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    if-nez v0, :cond_f

    .line 626
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parsePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    goto :goto_10

    .line 627
    :cond_f
    nop

    .line 625
    :goto_10
    return-object v0
.end method

.method private greylist-max-o getQueryPart()Landroid/net/Uri$Part;
    .registers 2

    .line 670
    iget-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    if-nez v0, :cond_f

    .line 671
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    goto :goto_10

    :cond_f
    nop

    .line 670
    :goto_10
    return-object v0
.end method

.method private greylist-max-o getSsp()Landroid/net/Uri$Part;
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    if-nez v0, :cond_e

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseSsp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    :cond_e
    return-object v0
.end method

.method static greylist-max-o parseAuthority(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "ssi"    # I

    .line 737
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 740
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_2f

    add-int/lit8 v1, p1, 0x1

    .line 741
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2f

    add-int/lit8 v1, p1, 0x2

    .line 742
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2f

    .line 747
    add-int/lit8 v1, p1, 0x3

    .line 748
    .local v1, "end":I
    :goto_1c
    if-ge v1, v0, :cond_28

    .line 749
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_32

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 762
    :cond_28
    :sswitch_28
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 764
    .end local v1    # "end":I
    :cond_2f
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_32
    .sparse-switch
        0x23 -> :sswitch_28
        0x2f -> :sswitch_28
        0x3f -> :sswitch_28
        0x5c -> :sswitch_28
    .end sparse-switch
.end method

.method private greylist-max-o parseFragment()Ljava/lang/String;
    .registers 4

    .line 716
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    move-result v0

    .line 717
    .local v0, "fsi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_11

    :cond_9
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1
.end method

.method private greylist-max-o parsePath()Ljava/lang/String;
    .registers 7

    .line 643
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    .line 644
    .local v0, "uriString":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v1

    .line 647
    .local v1, "ssi":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_23

    .line 649
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 650
    .local v2, "schemeOnly":Z
    :goto_14
    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 652
    return-object v3

    .line 656
    :cond_18
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_23

    .line 658
    return-object v3

    .line 664
    .end local v2    # "schemeOnly":Z
    :cond_23
    invoke-static {v0, v1}, Landroid/net/Uri$StringUri;->parsePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static greylist-max-o parsePath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "ssi"    # I

    .line 778
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 782
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_2c

    add-int/lit8 v1, p1, 0x1

    .line 783
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2c

    add-int/lit8 v1, p1, 0x2

    .line 784
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 786
    add-int/lit8 v1, p1, 0x3

    .line 787
    .local v1, "pathStart":I
    :goto_1c
    if-ge v1, v0, :cond_2e

    .line 788
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_40

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 797
    :sswitch_28
    goto :goto_2e

    .line 791
    :sswitch_29
    const-string v2, ""

    return-object v2

    .line 803
    .end local v1    # "pathStart":I
    :cond_2c
    add-int/lit8 v1, p1, 0x1

    .line 807
    .restart local v1    # "pathStart":I
    :cond_2e
    :goto_2e
    move v2, v1

    .line 808
    .local v2, "pathEnd":I
    :goto_2f
    if-ge v2, v0, :cond_3b

    .line 809
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_52

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 817
    :cond_3b
    :sswitch_3b
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_40
    .sparse-switch
        0x23 -> :sswitch_29
        0x2f -> :sswitch_28
        0x3f -> :sswitch_29
        0x5c -> :sswitch_28
    .end sparse-switch

    :sswitch_data_52
    .sparse-switch
        0x23 -> :sswitch_3b
        0x3f -> :sswitch_3b
    .end sparse-switch
.end method

.method private greylist-max-o parseQuery()Ljava/lang/String;
    .registers 5

    .line 681
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v1

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 682
    .local v0, "qsi":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    .line 683
    return-object v1

    .line 686
    :cond_11
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    move-result v3

    .line 688
    .local v3, "fsi":I
    if-ne v3, v2, :cond_20

    .line 689
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 692
    :cond_20
    if-ge v3, v0, :cond_23

    .line 694
    return-object v1

    .line 697
    :cond_23
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o parseScheme()Ljava/lang/String;
    .registers 4

    .line 574
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    .line 575
    .local v0, "ssi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_10

    :cond_9
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private greylist-max-o parseSsp()Ljava/lang/String;
    .registers 5

    .line 593
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    .line 594
    .local v0, "ssi":I
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    move-result v1

    .line 597
    .local v1, "fsi":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 598
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 599
    :cond_14
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 597
    :goto_1c
    return-object v2
.end method

.method static greylist-max-o readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 511
    new-instance v0, Landroid/net/Uri$StringUri;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist buildUpon()Landroid/net/Uri$Builder;
    .registers 3

    .line 821
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 822
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 823
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 824
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 825
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 826
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 827
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 822
    return-object v0

    .line 829
    :cond_34
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 830
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 831
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 832
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 829
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAuthority()Ljava/lang/String;
    .registers 2

    .line 619
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedAuthority()Ljava/lang/String;
    .registers 2

    .line 615
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedFragment()Ljava/lang/String;
    .registers 2

    .line 712
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedPath()Ljava/lang/String;
    .registers 2

    .line 635
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedQuery()Ljava/lang/String;
    .registers 2

    .line 675
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .line 585
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFragment()Ljava/lang/String;
    .registers 2

    .line 721
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPath()Ljava/lang/String;
    .registers 2

    .line 631
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPathSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getQuery()Ljava/lang/String;
    .registers 2

    .line 701
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScheme()Ljava/lang/String;
    .registers 3

    .line 569
    iget-object v0, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 570
    .local v0, "cached":Z
    :goto_9
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    goto :goto_14

    :cond_e
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    :goto_14
    return-object v1
.end method

.method public whitelist getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .line 589
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isHierarchical()Z
    .registers 6

    .line 544
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    .line 546
    .local v0, "ssi":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 548
    return v1

    .line 551
    :cond_9
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_15

    .line 553
    return v4

    .line 557
    :cond_15
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_22

    goto :goto_23

    :cond_22
    move v1, v4

    :goto_23
    return v1
.end method

.method public whitelist isRelative()Z
    .registers 3

    .line 562
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 519
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 521
    return-void
.end method
