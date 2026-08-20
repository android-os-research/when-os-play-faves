.class public Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# static fields
.field public static final VERSION_1:I = 0x1

.field public static final VERSION_2:I = 0x2


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public cofiguratorPkg:[B

.field public cofiguratorSign:[B

.field public csName:[B

.field public defaultLanguage:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pluginSignatureHash:[B

.field public pukMaxLength:I

.field public pukMinLength:I

.field public scpCreationParam:[B

.field public storageType:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 629
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x0

    .line 630
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 631
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 632
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 633
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 634
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 635
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 636
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 637
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 638
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 639
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 640
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 641
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 642
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 643
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 644
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 645
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 646
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 647
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 648
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v0, 0x1

    .line 649
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 650
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    return-void
.end method

.method public constructor <init>(I[BIIIIIIIII[BII[B[BI[B[B[B[BI[B)V
    .registers 26

    move-object v0, p0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 658
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    move-object v1, p2

    .line 659
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    move v1, p3

    .line 660
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    move v1, p4

    .line 661
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    move v1, p5

    .line 662
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    move v1, p6

    .line 663
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    move v1, p7

    .line 664
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    move v1, p8

    .line 665
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    move v1, p9

    .line 666
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    move v1, p10

    .line 667
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    move v1, p11

    .line 668
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    move-object v1, p12

    .line 669
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    move v1, p13

    .line 670
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    move/from16 v1, p14

    .line 671
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    move-object/from16 v1, p15

    .line 672
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    move-object/from16 v1, p16

    .line 673
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    move-object/from16 v1, p18

    .line 674
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v1, p19

    .line 675
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v1, p20

    .line 676
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    move-object/from16 v1, p21

    .line 677
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    move/from16 v1, p22

    .line 678
    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    move-object/from16 v1, p23

    .line 679
    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    return-void
.end method

.method public static getSCPTypeIndex(Ljava/lang/String;)I
    .registers 4

    .line 707
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_27

    .line 709
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_27

    .line 714
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :goto_11
    if-ge v1, v0, :cond_25

    .line 717
    sget-object v2, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    return v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    const/4 p0, -0x1

    return p0

    :cond_27
    :goto_27
    const-string p0, "EFSProperties"

    const-string v0, "SCP empty, set SCP_NONE"

    .line 710
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .registers 4

    .line 683
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-eqz p0, :cond_2e

    .line 685
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2e

    .line 689
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "uicc"

    const-string/jumbo v2, "sim"

    .line 690
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 693
    sget-object v2, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    return v1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    const/16 p0, 0x9

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method
