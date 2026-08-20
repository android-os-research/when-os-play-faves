.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;
    }
.end annotation


# instance fields
.field private final blacklist kPreviewSizeBound:Landroid/util/Size;

.field private blacklist mCameraId:I

.field private blacklist mCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplaySize:Landroid/util/Size;

.field private blacklist mHwLevel:I

.field private blacklist mIsHiddenPhysicalCamera:Z

.field private blacklist mIsPreviewStabilizationSupported:Z

.field private blacklist mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private blacklist mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method public constructor blacklist <init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;Z)V
    .registers 11
    .param p1, "cameraId"    # I
    .param p2, "hwLevel"    # I
    .param p3, "displaySize"    # Landroid/util/Size;
    .param p5, "sm"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p6, "smMaxResolution"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p7, "previewStabilization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Z)V"
        }
    .end annotation

    .line 1313
    .local p4, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x440

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    .line 1314
    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    .line 1315
    iput-object p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    .line 1316
    iput-object p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    .line 1317
    iput-object p5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1318
    iput-object p6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1319
    iput p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    .line 1320
    nop

    .line 1321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    .line 1322
    iput-boolean p7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    .line 1323
    return-void
.end method

.method private blacklist createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 27
    .param p1, "combTemplate"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .param p2, "substitutedFormat"    # I

    .line 1643
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1645
    .local v3, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1646
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-eq v0, v4, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move v4, v0

    .line 1647
    .local v4, "isReprocess":Z
    const/16 v0, 0x20

    if-eqz v4, :cond_7b

    .line 1648
    const/4 v7, -0x1

    .line 1649
    .local v7, "format":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1650
    .local v8, "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    iget-object v9, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v10, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v9, v10, :cond_3c

    .line 1651
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    .line 1652
    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1651
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    const/16 v7, 0x22

    goto :goto_63

    .line 1655
    :cond_3c
    iget-object v9, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v10, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v9, v10, :cond_52

    .line 1656
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1657
    invoke-virtual {v9, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1656
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    const/16 v7, 0x20

    goto :goto_63

    .line 1661
    :cond_52
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x23

    .line 1662
    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1661
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    const/16 v7, 0x23

    .line 1666
    :goto_63
    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, v15

    move-object v10, v8

    move v11, v7

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v13, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    .end local v7    # "format":I
    .end local v8    # "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    :cond_7b
    nop

    .line 1674
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v7

    .line 1675
    .local v7, "availableDefaultNonRawSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v7, :cond_8b

    .line 1676
    const-string v0, "MandatoryStreamCombination"

    const-string v5, "Available size enumeration failed"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/4 v0, 0x0

    return-object v0

    .line 1679
    :cond_8b
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1680
    invoke-virtual {v8, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    .line 1681
    .local v8, "defaultRawSizes":[Landroid/util/Size;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    .local v9, "availableDefaultRawSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz v8, :cond_a3

    .line 1683
    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1684
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1686
    :cond_a3
    iget-object v10, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_a7
    if-ge v12, v11, :cond_157

    aget-object v13, v10, v12

    .line 1688
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1689
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 1690
    .local v15, "formatChosen":I
    iget-object v5, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v5, v6, :cond_ba

    const/4 v5, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v5, 0x0

    .line 1693
    .local v5, "isUltraHighResolution":Z
    :goto_bb
    if-eqz v5, :cond_c0

    .line 1694
    iget-object v6, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    goto :goto_c2

    :cond_c0
    iget-object v6, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1695
    .local v6, "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_c2
    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v1, :cond_ca

    const/4 v0, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    move v1, v0

    .line 1697
    .local v1, "isMaximumSize":Z
    if-eqz p2, :cond_d2

    if-eqz v1, :cond_d2

    .line 1698
    move/from16 v15, p2

    .line 1701
    :cond_d2
    if-eqz v5, :cond_e4

    .line 1702
    invoke-virtual {v6, v15}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    goto :goto_105

    .line 1704
    :cond_e4
    const/16 v0, 0x20

    if-ne v15, v0, :cond_ee

    .line 1706
    move-object v14, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    goto :goto_105

    .line 1708
    :cond_ee
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v22, v6

    .end local v6    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v22, "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v23, v8

    .end local v8    # "defaultRawSizes":[Landroid/util/Size;
    .local v23, "defaultRawSizes":[Landroid/util/Size;
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1711
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/util/List;

    .line 1716
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    :goto_105
    :try_start_105
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move/from16 v18, v15

    move/from16 v19, v1

    move/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V
    :try_end_116
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_116} :catch_123

    .line 1723
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1724
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "isMaximumSize":Z
    .end local v5    # "isUltraHighResolution":Z
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v15    # "formatChosen":I
    .end local v22    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x20

    move-object/from16 v1, p0

    move-object/from16 v8, v23

    goto :goto_a7

    .line 1718
    .restart local v1    # "isMaximumSize":Z
    .restart local v5    # "isUltraHighResolution":Z
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v15    # "formatChosen":I
    .restart local v22    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :catch_123
    move-exception v0

    .line 1719
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No available sizes found for format: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size threshold: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " combination: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1722
    .local v6, "cause":Ljava/lang/String;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1727
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "isMaximumSize":Z
    .end local v5    # "isUltraHighResolution":Z
    .end local v6    # "cause":Ljava/lang/String;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v15    # "formatChosen":I
    .end local v22    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v23    # "defaultRawSizes":[Landroid/util/Size;
    .restart local v8    # "defaultRawSizes":[Landroid/util/Size;
    :cond_157
    move-object/from16 v23, v8

    .end local v8    # "defaultRawSizes":[Landroid/util/Size;
    .restart local v23    # "defaultRawSizes":[Landroid/util/Size;
    const/4 v0, 0x0

    .line 1728
    .local v0, "formatString":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_1aa

    .line 1736
    const-string v0, "YUV"

    move-object v1, v0

    goto :goto_168

    .line 1733
    :sswitch_161
    const-string v0, "JPEG"

    .line 1734
    move-object v1, v0

    goto :goto_168

    .line 1730
    :sswitch_165
    const-string v0, "RAW_SENSOR"

    .line 1731
    move-object v1, v0

    .line 1741
    .end local v0    # "formatString":Ljava/lang/String;
    .local v1, "formatString":Ljava/lang/String;
    :goto_168
    :try_start_168
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " still-capture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_18c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_168 .. :try_end_18c} :catch_18e

    .line 1748
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1749
    return-object v0

    .line 1744
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :catch_18e
    move-exception v0

    .line 1745
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No stream information for mandatory combination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1747
    .local v5, "cause":Ljava/lang/String;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_data_1aa
    .sparse-switch
        0x20 -> :sswitch_165
        0x100 -> :sswitch_161
    .end sparse-switch
.end method

.method private blacklist enumerateAvailableSizes()Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 1980
    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_11e

    .line 1986
    .local v1, "formats":[I
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 1987
    .local v2, "recordingMaxSize":Landroid/util/Size;
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 1988
    .local v4, "previewMaxSize":Landroid/util/Size;
    new-instance v5, Landroid/util/Size;

    const/16 v6, 0x280

    const/16 v7, 0x1e0

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 1989
    .local v5, "vgaSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x500

    const/16 v8, 0x2d0

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 1990
    .local v6, "s720pSize":Landroid/util/Size;
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x780

    const/16 v9, 0x5a0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 1993
    .local v7, "s1440pSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v8

    if-nez v8, :cond_3e

    iget-boolean v8, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    if-eqz v8, :cond_39

    goto :goto_3e

    .line 1996
    :cond_39
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxRecordingSize()Landroid/util/Size;

    move-result-object v2

    goto :goto_42

    .line 1994
    :cond_3e
    :goto_3e
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxCameraRecordingSize()Landroid/util/Size;

    move-result-object v2

    .line 1998
    :goto_42
    const/4 v8, 0x0

    const-string v9, "MandatoryStreamCombination"

    if-nez v2, :cond_4d

    .line 1999
    const-string v3, "Failed to find maximum recording size!"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    return-object v8

    .line 2003
    :cond_4d
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2004
    .local v10, "allSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Landroid/util/Size;>;"
    array-length v11, v1

    move v12, v3

    :goto_54
    if-ge v12, v11, :cond_6d

    aget v13, v1, v12

    .line 2005
    .local v13, "format":I
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 2006
    .local v14, "intFormat":Ljava/lang/Integer;
    iget-object v15, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v15, v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v15

    .line 2007
    .local v15, "sizes":[Landroid/util/Size;
    if-nez v15, :cond_67

    .line 2008
    new-array v15, v3, [Landroid/util/Size;

    .line 2010
    :cond_67
    invoke-virtual {v10, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    .end local v13    # "format":I
    .end local v14    # "intFormat":Ljava/lang/Integer;
    .end local v15    # "sizes":[Landroid/util/Size;
    add-int/lit8 v12, v12, 0x1

    goto :goto_54

    .line 2013
    :cond_6d
    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x22

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 2014
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/util/Size;

    iget-object v12, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    .line 2013
    invoke-static {v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v11

    .line 2015
    .local v11, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v11, :cond_116

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8c

    move-object/from16 v16, v1

    goto/16 :goto_118

    .line 2019
    :cond_8c
    invoke-static {v11, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 2021
    .local v8, "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v4

    .line 2023
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2026
    .local v9, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    array-length v12, v1

    :goto_9a
    if-ge v3, v12, :cond_115

    aget v13, v1, v3

    .line 2027
    .restart local v13    # "format":I
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 2028
    .restart local v14    # "intFormat":Ljava/lang/Integer;
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/util/Size;

    .line 2029
    .restart local v15    # "sizes":[Landroid/util/Size;
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v16, v1

    .end local v1    # "formats":[I
    .local v16, "formats":[I
    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2031
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v17, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2034
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2037
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2040
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2043
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2046
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v7}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "format":I
    .end local v14    # "intFormat":Ljava/lang/Integer;
    .end local v15    # "sizes":[Landroid/util/Size;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_9a

    .line 2049
    .end local v16    # "formats":[I
    .restart local v1    # "formats":[I
    :cond_115
    return-object v9

    .line 2015
    .end local v8    # "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v9    # "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    :cond_116
    move-object/from16 v16, v1

    .line 2016
    .end local v1    # "formats":[I
    .restart local v16    # "formats":[I
    :goto_118
    const-string v0, "No preview sizes within preview size bound!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    return-object v8

    :array_11e
    .array-data 4
        0x22
        0x23
        0x100
        0x36
    .end array-data
.end method

.method private blacklist fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)V"
        }
    .end annotation

    .line 1756
    .local p1, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    .local p2, "chosenTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1757
    .local v1, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    const/4 v2, 0x0

    .line 1758
    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1760
    .local v2, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mSubstituteYUV:Z

    if-eqz v3, :cond_2e

    .line 1762
    const/16 v3, 0x20

    .line 1763
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1765
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    const/16 v3, 0x100

    .line 1767
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1769
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    .end local v1    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v2    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_2e
    goto :goto_4

    .line 1772
    :cond_2f
    return-void
.end method

.method private blacklist generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1871
    .local p1, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "MandatoryStreamCombination"

    if-eqz v0, :cond_11

    .line 1872
    const-string v0, "No available stream templates!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-object v2

    .line 1876
    :cond_11
    nop

    .line 1877
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v4

    .line 1878
    .local v4, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v4, :cond_1e

    .line 1879
    const-string v0, "Available size enumeration failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-object v2

    .line 1884
    :cond_1e
    iget-object v0, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 1885
    .local v6, "rawSizes":[Landroid/util/Size;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1886
    .local v7, "availableRawSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz v6, :cond_39

    .line 1887
    array-length v0, v6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1888
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1891
    :cond_39
    new-instance v0, Landroid/util/Size;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 1892
    .local v0, "maxPrivateInputSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 1893
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v9, v0

    goto :goto_54

    .line 1892
    :cond_53
    move-object v9, v0

    .line 1897
    .end local v0    # "maxPrivateInputSize":Landroid/util/Size;
    .local v9, "maxPrivateInputSize":Landroid/util/Size;
    :goto_54
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 1898
    .local v0, "maxYUVInputSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1899
    iget-object v10, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v11, 0x23

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v10, v0

    goto :goto_6e

    .line 1898
    :cond_6d
    move-object v10, v0

    .line 1905
    .end local v0    # "maxYUVInputSize":Landroid/util/Size;
    .local v10, "maxYUVInputSize":Landroid/util/Size;
    :goto_6e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1907
    .local v11, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1908
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1909
    .local v12, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    .local v13, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1912
    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v8, 0x1

    if-eq v14, v15, :cond_9f

    move v14, v8

    goto :goto_a0

    :cond_9f
    const/4 v14, 0x0

    .line 1913
    .local v14, "isReprocessable":Z
    :goto_a0
    if-eqz v14, :cond_c8

    .line 1917
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1919
    .local v15, "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v2, v5, :cond_b3

    .line 1920
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    const/16 v2, 0x22

    .local v2, "format":I
    goto :goto_b8

    .line 1924
    .end local v2    # "format":I
    :cond_b3
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    const/16 v2, 0x23

    .line 1927
    .restart local v2    # "format":I
    :goto_b8
    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v5, v15, v2, v8, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZ)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v5, v15, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    .end local v2    # "format":I
    .end local v15    # "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    :cond_c8
    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v5, v2

    const/4 v15, 0x0

    :goto_cc
    if-ge v15, v5, :cond_14d

    aget-object v8, v2, v15

    .line 1934
    .local v8, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/16 v16, 0x0

    .line 1935
    .local v16, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v17, v0

    iget v0, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e1

    .line 1936
    move-object v0, v7

    move-object v1, v0

    move-object/from16 v18, v2

    move/from16 v19, v5

    .end local v16    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    goto :goto_f9

    .line 1939
    .end local v0    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v16    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_e1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v19, v5

    iget v5, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1941
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1945
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v16    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_f9
    iget-object v0, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v2, :cond_101

    const/4 v0, 0x1

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    :goto_102
    move v2, v0

    .line 1948
    .local v2, "isMaximumSize":Z
    :try_start_103
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v5, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_10a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_103 .. :try_end_10a} :catch_11a

    .line 1955
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1956
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "isMaximumSize":Z
    .end local v8    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto :goto_cc

    .line 1950
    .restart local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v2    # "isMaximumSize":Z
    .restart local v8    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    :catch_11a
    move-exception v0

    .line 1951
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No available sizes found for format: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v15, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " size threshold: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " combination: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/4 v3, 0x0

    return-object v3

    .line 1961
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "isMaximumSize":Z
    .end local v8    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    :cond_14d
    move-object/from16 v17, v0

    :try_start_14f
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v13, v1, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_156
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14f .. :try_end_156} :catch_164

    .line 1967
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1969
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v14    # "isReprocessable":Z
    move-object/from16 v0, v17

    const/4 v2, 0x0

    const/16 v5, 0x20

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_7f

    .line 1963
    .restart local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .restart local v14    # "isReprocessable":Z
    :catch_164
    move-exception v0

    .line 1964
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/4 v1, 0x0

    return-object v1

    .line 1972
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v14    # "isReprocessable":Z
    :cond_17f
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .param p1, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2333
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;-><init>()V

    .line 2334
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2335
    .local v1, "sortedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2336
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2337
    if-nez p1, :cond_15

    .line 2338
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2341
    :cond_15
    return-object v1
.end method

.method private blacklist getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;
    .registers 27
    .param p1, "chosenStreamCombinations"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .param p2, "s10Bit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1329
    move-object/from16 v1, p1

    .line 1330
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v2

    .line 1331
    .local v2, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    const/4 v3, 0x0

    const-string v4, "MandatoryStreamCombination"

    if-nez v2, :cond_11

    .line 1332
    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-object v3

    .line 1336
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1337
    .local v5, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1338
    array-length v0, v1

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v0, :cond_126

    aget-object v8, v1, v7

    .line 1339
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1341
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v11, :cond_f4

    aget-object v13, v10, v12

    .line 1342
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/4 v14, 0x0

    .line 1344
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v15, Landroid/util/Pair;

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v16, v0

    iget v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v15, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v15

    .line 1345
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1346
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p2, :cond_84

    iget v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v14, 0x36

    if-ne v6, v14, :cond_84

    .line 1349
    new-instance v6, Landroid/util/Pair;

    iget-object v14, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v17, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v17, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    const/16 v0, 0x23

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v6, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v6

    .line 1351
    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v6, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1352
    .local v6, "sdrYuvSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_82

    .line 1353
    const-string v7, "The supported 10-bit YUV sizes are different from the supported 8-bit YUV sizes!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/4 v4, 0x0

    return-object v4

    .line 1352
    :cond_82
    move-object v6, v0

    goto :goto_88

    .line 1346
    .end local v6    # "sdrYuvSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    :cond_84
    move-object/from16 v17, v0

    .line 1360
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    move-object/from16 v6, v17

    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    :goto_88
    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v14, :cond_91

    const/16 v20, 0x1

    goto :goto_93

    :cond_91
    const/16 v20, 0x0

    .line 1363
    .local v20, "isMaximumSize":Z
    :goto_93
    :try_start_93
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v14, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1366
    if-eqz p2, :cond_a9

    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x100

    if-eq v15, v1, :cond_a6

    const/16 v23, 0x1

    goto :goto_ab

    :cond_a6
    const/16 v23, 0x0

    goto :goto_ab

    .line 1367
    :cond_a9
    const/16 v23, 0x0

    :goto_ab
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-direct/range {v17 .. v23}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZ)V
    :try_end_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_b4} :catch_c1

    .line 1373
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1374
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_30

    .line 1368
    .restart local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v20    # "isMaximumSize":Z
    :catch_c1
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available sizes found for format: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " size threshold: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " combination: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v1, 0x0

    return-object v1

    .line 1379
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    :cond_f4
    move/from16 v16, v0

    :try_start_f6
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f6 .. :try_end_fe} :catch_10b

    .line 1385
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1387
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_1d

    .line 1381
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_10b
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No stream information for mandatory combination: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v1, 0x0

    return-object v1

    .line 1390
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :cond_126
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMaxCameraRecordingSize()Landroid/util/Size;
    .registers 14

    .line 2267
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2269
    .local v0, "FULLHD":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 2271
    .local v1, "videoSizeArr":[Landroid/util/Size;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_37

    aget-object v6, v1, v5

    .line 2273
    .local v6, "sz":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_34

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_34

    .line 2274
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2272
    .end local v6    # "sz":Landroid/util/Size;
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 2277
    :cond_37
    invoke-static {v2, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 2278
    .local v3, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "MandatoryStreamCombination"

    if-eqz v5, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 2279
    .local v5, "sz":Landroid/util/Size;
    iget-object v7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v8, Landroid/media/MediaRecorder;

    invoke-virtual {v7, v8, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v7

    .line 2282
    .local v7, "minFrameDuration":J
    long-to-double v9, v7

    const-wide v11, 0x417faefbf5cb44e4L    # 3.3222591362126246E7

    cmpl-double v9, v9, v11

    if-lez v9, :cond_82

    .line 2283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External camera "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " has max video size:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    return-object v5

    .line 2286
    .end local v5    # "sz":Landroid/util/Size;
    .end local v7    # "minFrameDuration":J
    :cond_82
    goto :goto_3f

    .line 2287
    :cond_83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support any 30fps video output"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    return-object v0
.end method

.method private blacklist getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 2292
    .local p1, "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p1, :cond_2c

    .line 2293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 2294
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_2b

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    .line 2295
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_2b

    .line 2296
    return-object v1

    .line 2298
    .end local v1    # "size":Landroid/util/Size;
    :cond_2b
    goto :goto_6

    .line 2301
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maximum preview size search failed with display size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryStreamCombination"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    return-object v0
.end method

.method private blacklist getMaxRecordingSize()Landroid/util/Size;
    .registers 9

    .line 2236
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-eqz v0, :cond_11

    .line 2237
    goto :goto_4e

    .line 2238
    :cond_11
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2239
    move v1, v7

    goto :goto_4e

    .line 2240
    :cond_1b
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2241
    move v1, v6

    goto :goto_4e

    .line 2242
    :cond_25
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2243
    move v1, v5

    goto :goto_4e

    .line 2244
    :cond_2f
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2245
    move v1, v4

    goto :goto_4e

    .line 2246
    :cond_39
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2247
    move v1, v3

    goto :goto_4e

    .line 2248
    :cond_43
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2249
    move v1, v2

    goto :goto_4e

    .line 2250
    :cond_4d
    const/4 v1, -0x1

    :goto_4e
    move v0, v1

    .line 2252
    .local v0, "quality":I
    if-gez v0, :cond_53

    .line 2253
    const/4 v1, 0x0

    return-object v1

    .line 2256
    :cond_53
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 2257
    .local v1, "maxProfile":Landroid/media/CamcorderProfile;
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public static varargs blacklist getMaxSize([Landroid/util/Size;)Landroid/util/Size;
    .registers 8
    .param p0, "sizes"    # [Landroid/util/Size;

    .line 2090
    if-eqz p0, :cond_26

    array-length v0, p0

    if-eqz v0, :cond_26

    .line 2094
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 2095
    .local v1, "sz":Landroid/util/Size;
    array-length v2, p0

    :goto_9
    if-ge v0, v2, :cond_25

    aget-object v3, p0, v0

    .line 2096
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_22

    .line 2097
    move-object v1, v3

    .line 2095
    .end local v3    # "size":Landroid/util/Size;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2101
    :cond_25
    return-object v1

    .line 2091
    .end local v1    # "sz":Landroid/util/Size;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .registers 5
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .line 2072
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 2075
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_19

    .line 2076
    return-object p0

    .line 2078
    :cond_19
    return-object p1

    .line 2073
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;
    .registers 8
    .param p0, "sizes"    # [Landroid/util/Size;
    .param p1, "bound"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 2060
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_22

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_22

    .line 2061
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    .end local v3    # "size":Landroid/util/Size;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2065
    :cond_25
    return-object v0
.end method

.method private blacklist is10BitOutputSupported()Z
    .registers 2

    .line 2201
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .registers 4
    .param p1, "capability"    # I

    .line 2186
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isColorOutputSupported()Z
    .registers 2

    .line 2193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isExternalCamera()Z
    .registers 3

    .line 2137
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isHardwareLevelAtLeast(I)Z
    .registers 9
    .param p1, "level"    # I

    .line 2109
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    .line 2116
    .local v0, "sortedHwLevels":[I
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_c

    .line 2117
    return v2

    .line 2120
    :cond_c
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_1e

    aget v5, v0, v4

    .line 2121
    .local v5, "sortedlevel":I
    if-ne v5, p1, :cond_16

    .line 2122
    return v2

    .line 2123
    :cond_16
    iget v6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    if-ne v5, v6, :cond_1b

    .line 2124
    return v3

    .line 2120
    .end local v5    # "sortedlevel":I
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2128
    :cond_1e
    return v3

    nop

    :array_20
    .array-data 4
        0x2
        0x4
        0x0
        0x1
        0x3
    .end array-data
.end method

.method private blacklist isHardwareLevelAtLeastFull()Z
    .registers 2

    .line 2165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLegacy()Z
    .registers 2

    .line 2146
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLevel3()Z
    .registers 2

    .line 2174
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLimited()Z
    .registers 2

    .line 2156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isPrivateReprocessingSupported()Z
    .registers 2

    .line 2209
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isRemosaicReprocessingSupported()Z
    .registers 2

    .line 2225
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isYUVReprocessingSupported()Z
    .registers 2

    .line 2217
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getAvailableMandatory10BitStreamCombinations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1430
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgets10BitOutputStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1431
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->is10BitOutputSupported()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1432
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not able to output 10-bit!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v1, 0x0

    return-object v1

    .line 1435
    :cond_13
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1521
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1522
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1523
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not backward compatible, depth streams are mandatory!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentDepthOnlyStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    move-object v1, v0

    goto :goto_18

    .line 1522
    :cond_17
    move-object v1, v0

    .line 1526
    .end local v0    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    :goto_18
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v2, v0

    .line 1527
    .local v2, "sizeVGAp":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    move-object v3, v0

    .line 1528
    .local v3, "size720p":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x5a0

    invoke-direct {v0, v4, v5}, Landroid/util/Size;-><init>(II)V

    move-object v4, v0

    .line 1530
    .local v4, "size1440p":Landroid/util/Size;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1532
    .local v5, "availableConcurrentStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1534
    array-length v0, v1

    const/4 v7, 0x0

    :goto_42
    if-ge v7, v0, :cond_11c

    aget-object v8, v1, v7

    .line 1535
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1538
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_55
    if-ge v12, v11, :cond_e2

    aget-object v13, v10, v12

    .line 1540
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v15, 0x0

    .line 1542
    .local v15, "formatSize":Landroid/util/Size;
    sget-object v16, Landroid/hardware/camera2/params/MandatoryStreamCombination$1;->$SwitchMap$android$hardware$camera2$params$MandatoryStreamCombination$SizeThreshold:[I

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->ordinal()I

    move-result v6

    aget v6, v16, v6

    packed-switch v6, :pswitch_data_122

    .line 1550
    move-object v6, v3

    .end local v15    # "formatSize":Landroid/util/Size;
    .local v6, "formatSize":Landroid/util/Size;
    goto :goto_72

    .line 1547
    .end local v6    # "formatSize":Landroid/util/Size;
    .restart local v15    # "formatSize":Landroid/util/Size;
    :pswitch_6e
    move-object v6, v2

    .line 1548
    .end local v15    # "formatSize":Landroid/util/Size;
    .restart local v6    # "formatSize":Landroid/util/Size;
    goto :goto_72

    .line 1544
    .end local v6    # "formatSize":Landroid/util/Size;
    .restart local v15    # "formatSize":Landroid/util/Size;
    :pswitch_70
    move-object v6, v4

    .line 1545
    .end local v15    # "formatSize":Landroid/util/Size;
    .restart local v6    # "formatSize":Landroid/util/Size;
    nop

    .line 1552
    :goto_72
    move-object/from16 v15, p0

    move/from16 v16, v0

    iget-object v0, v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v17, v1

    .end local v1    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .local v17, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 1554
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 1553
    invoke-static {v6, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 1555
    .local v1, "sizeChosen":Landroid/util/Size;
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    :try_start_8b
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_8d} :catch_aa

    move-object/from16 v18, v1

    .end local v1    # "sizeChosen":Landroid/util/Size;
    .local v18, "sizeChosen":Landroid/util/Size;
    :try_start_8f
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_91} :catch_a6

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .local v19, "sizeVGAp":Landroid/util/Size;
    :try_start_94
    invoke-direct {v0, v14, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_97} :catch_a4

    .line 1564
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1565
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v6    # "formatSize":Landroid/util/Size;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v18    # "sizeChosen":Landroid/util/Size;
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_55

    .line 1559
    .restart local v6    # "formatSize":Landroid/util/Size;
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v18    # "sizeChosen":Landroid/util/Size;
    :catch_a4
    move-exception v0

    goto :goto_af

    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :catch_a6
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    goto :goto_af

    .end local v18    # "sizeChosen":Landroid/util/Size;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .restart local v1    # "sizeChosen":Landroid/util/Size;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :catch_aa
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1560
    .end local v1    # "sizeChosen":Landroid/util/Size;
    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "sizeChosen":Landroid/util/Size;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    :goto_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No available sizes found for format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1563
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1570
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "formatSize":Landroid/util/Size;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v18    # "sizeChosen":Landroid/util/Size;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :cond_e2
    move-object/from16 v15, p0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    .end local v1    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .restart local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    :try_start_ea
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_f2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_f2} :catch_100

    .line 1576
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1577
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto/16 :goto_42

    .line 1572
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_100
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1575
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1579
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :cond_11c
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6e
    .end packed-switch
.end method

.method public blacklist getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1594
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1595
    const-string v0, "MandatoryStreamCombination"

    const-string v1, "Device is not backward compatible!, no mandatory maximum res streams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v0, 0x0

    return-object v0

    .line 1599
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v0, "chosenStreamCombinationTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    .line 1603
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1602
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .local v1, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isRemosaicReprocessingSupported()Z

    move-result v2

    .line 1609
    .local v2, "addRemosaicReprocessing":Z
    const/4 v3, 0x0

    .line 1610
    .local v3, "remosaicSize":I
    iget-object v4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x23

    .line 1611
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 1612
    .local v4, "maxResYUVInputSizes":[Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v6, 0x22

    .line 1613
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 1615
    .local v5, "maxResPRIVInputSizes":[Landroid/util/Size;
    if-eqz v2, :cond_4c

    .line 1616
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1617
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1618
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1617
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1621
    :cond_4c
    if-eqz v4, :cond_62

    array-length v6, v4

    if-eqz v6, :cond_62

    .line 1622
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1623
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1624
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1623
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1627
    :cond_62
    if-eqz v5, :cond_78

    array-length v6, v5

    if-eqz v6, :cond_78

    .line 1628
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1629
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1630
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1629
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1633
    :cond_78
    nop

    .line 1634
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    .line 1633
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1635
    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1638
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public blacklist getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1406
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsPreviewStabilizedStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1409
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    if-nez v1, :cond_11

    .line 1410
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device does not support preview stabilization"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v1, 0x0

    return-object v1

    .line 1414
    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamCombinations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1783
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MandatoryStreamCombination"

    if-nez v0, :cond_f

    .line 1784
    const-string v0, "Device is not backward compatible!"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-object v1

    .line 1788
    :cond_f
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    if-gez v0, :cond_1f

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1789
    const-string v0, "Invalid camera id"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    return-object v1

    .line 1793
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v0, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLegacy()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1796
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLegacyCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1800
    :cond_35
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLimited()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1801
    :cond_41
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1803
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1804
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1807
    :cond_5d
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1808
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1813
    :cond_6e
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1815
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsBurstCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1818
    :cond_80
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastFull()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1819
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1821
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1822
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1825
    :cond_a2
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1826
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1831
    :cond_b3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1833
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRawCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1835
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1836
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1839
    :cond_d6
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1840
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1845
    :cond_e7
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLevel3()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1846
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3Combinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1848
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1849
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3PrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1852
    :cond_109
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1853
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3YUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1858
    :cond_11a
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1451
    const/16 v0, 0x13

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 1453
    return-object v2

    .line 1456
    :cond_c
    nop

    .line 1457
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v3

    .line 1458
    .local v3, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    const-string v4, "MandatoryStreamCombination"

    if-nez v3, :cond_1b

    .line 1459
    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-object v2

    .line 1463
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1464
    .local v5, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1465
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    array-length v6, v0

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v6, :cond_f9

    aget-object v9, v0, v8

    .line 1466
    .local v9, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .local v10, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v11, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1470
    iget-object v11, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_42
    if-ge v13, v12, :cond_c7

    aget-object v14, v11, v13

    .line 1471
    .local v14, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/4 v15, 0x0

    .line 1473
    .local v15, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v7, Landroid/util/Pair;

    iget-object v2, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/Integer;

    iget v1, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v7, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v7

    .line 1475
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 1478
    .end local v15    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v0, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v7, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v7, :cond_69

    const/4 v0, 0x1

    move/from16 v20, v0

    goto :goto_6b

    :cond_69
    const/16 v20, 0x0

    .line 1481
    .local v20, "isMaximumSize":Z
    :goto_6b
    :try_start_6b
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v7, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v15, v11

    move/from16 v26, v12

    iget-wide v11, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mStreamUseCase:J

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v7

    move-wide/from16 v24, v11

    invoke-direct/range {v17 .. v25}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZJ)V
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_85} :catch_94

    .line 1489
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1490
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v11, v15

    move-object/from16 v0, v16

    move/from16 v12, v26

    const/4 v2, 0x0

    goto :goto_42

    .line 1484
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v20    # "isMaximumSize":Z
    :catch_94
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available sizes found for format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size threshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " combination: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/4 v4, 0x0

    return-object v4

    .line 1495
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v20    # "isMaximumSize":Z
    :cond_c7
    move-object/from16 v16, v0

    :try_start_c9
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v10, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c9 .. :try_end_d1} :catch_de

    .line 1501
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1503
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v9    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v10    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_2f

    .line 1497
    .restart local v9    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v10    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_de
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const/4 v1, 0x0

    return-object v1

    .line 1506
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v10    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :cond_f9
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
