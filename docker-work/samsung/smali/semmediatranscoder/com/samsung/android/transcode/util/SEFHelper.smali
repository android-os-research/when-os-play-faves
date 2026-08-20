.class public Lcom/samsung/android/transcode/util/SEFHelper;
.super Ljava/lang/Object;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/SEFHelper$Region;,
        Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    }
.end annotation


# static fields
.field public static final SLOW_MOTION_DATA:Ljava/lang/String; = "SlowMotion_Data"

.field public static final SUPER_SLOW_MOTION_DATA:Ljava/lang/String; = "Super_SlowMotion_Data"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mFilepath:Ljava/lang/String;

.field private mRecordingFps:I

.field private mRecordingMode:I

.field private mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation
.end field

.field private mSEFData:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    return-void
.end method

.method private checkValidSEFData(Ljava/lang/String;)Z
    .registers 15
    .param p1, "data"    # Ljava/lang/String;

    .line 670
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 671
    return v0

    .line 673
    :cond_4
    const-string v1, "\\*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "slowDataregion":[Ljava/lang/String;
    array-length v2, v1

    move v3, v0

    :goto_c
    const/4 v4, 0x1

    if-ge v3, v2, :cond_40

    aget-object v5, v1, v3

    .line 675
    .local v5, "s":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, "regionData":[Ljava/lang/String;
    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 677
    .local v7, "startTime":I
    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 678
    .local v4, "endTime":I
    const-string v8, "TranscodeLib"

    if-lt v7, v4, :cond_2d

    .line 679
    const-string v2, "checkValidSEFData : startTime >= endTime"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return v0

    .line 683
    :cond_2d
    if-ltz v7, :cond_3a

    int-to-long v9, v4

    iget-wide v11, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_37

    goto :goto_3a

    .line 674
    .end local v4    # "endTime":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "regionData":[Ljava/lang/String;
    .end local v7    # "startTime":I
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 684
    .restart local v4    # "endTime":I
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "regionData":[Ljava/lang/String;
    .restart local v7    # "startTime":I
    :cond_3a
    :goto_3a
    const-string v2, "checkValidSEFData : startTime < 0  or endTime > mDuration"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return v0

    .line 688
    .end local v4    # "endTime":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "regionData":[Ljava/lang/String;
    .end local v7    # "startTime":I
    :cond_40
    return v4
.end method

.method public static getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .registers 2
    .param p0, "speed"    # I

    .line 101
    packed-switch p0, :pswitch_data_22

    .line 121
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 119
    :pswitch_6
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 117
    :pswitch_9
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 115
    :pswitch_c
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 113
    :pswitch_f
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 111
    :pswitch_12
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 109
    :pswitch_15
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 107
    :pswitch_18
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 105
    :pswitch_1b
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 103
    :pswitch_1e
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F
    .registers 4
    .param p0, "speedType"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    .local v0, "timescale":F
    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$1;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    goto :goto_29

    .line 93
    :pswitch_e
    const/high16 v0, 0x3d000000    # 0.03125f

    .line 94
    goto :goto_29

    .line 90
    :pswitch_11
    const/high16 v0, 0x3d800000    # 0.0625f

    .line 91
    goto :goto_29

    .line 87
    :pswitch_14
    const/high16 v0, 0x3e000000    # 0.125f

    .line 88
    goto :goto_29

    .line 84
    :pswitch_17
    const/high16 v0, 0x3e800000    # 0.25f

    .line 85
    goto :goto_29

    .line 81
    :pswitch_1a
    const/high16 v0, 0x3f000000    # 0.5f

    .line 82
    goto :goto_29

    .line 78
    :pswitch_1d
    const/high16 v0, 0x41000000    # 8.0f

    .line 79
    goto :goto_29

    .line 75
    :pswitch_20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    goto :goto_29

    .line 72
    :pswitch_23
    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    goto :goto_29

    .line 69
    :pswitch_26
    const/high16 v0, 0x40800000    # 4.0f

    .line 70
    nop

    .line 98
    :goto_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private is120fpsSlowMotionVideo()Z
    .registers 3

    .line 645
    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_17

    const/16 v1, 0xf

    if-eq v0, v1, :cond_17

    const/16 v1, 0x15

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static isSEFVideoMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .line 125
    packed-switch p0, :pswitch_data_c

    .line 141
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 139
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/transcode/util/SEFHelper;->supportMTK_SSM()Z

    move-result v0

    return v0

    .line 136
    :pswitch_a
    const/4 v0, 0x1

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private isSlowMotionV2()Z
    .registers 3

    .line 651
    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_19

    const/16 v1, 0xf

    if-eq v0, v1, :cond_19

    const/16 v1, 0xc

    if-eq v0, v1, :cond_19

    const/16 v1, 0x15

    if-eq v0, v1, :cond_19

    const/16 v1, 0x13

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private newslowSEFParserV2(Ljava/lang/String;)Z
    .registers 19
    .param p1, "sefData"    # Ljava/lang/String;

    .line 530
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-nez v2, :cond_25

    .line 532
    const-string v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return v4

    .line 535
    :cond_25
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "slowDataregion":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    array-length v5, v0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_43} :catch_2f8

    const-string v6, "region speed: "

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_fc

    .line 538
    :try_start_50
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "regionData":[Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 540
    .local v11, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 541
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 542
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 543
    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 544
    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v15

    .line 548
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 549
    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 550
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_98

    .line 551
    iput v9, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_ca

    .line 552
    :cond_98
    aget-object v9, v5, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_a3

    .line 553
    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_ca

    .line 554
    :cond_a3
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_ae

    .line 555
    iput v13, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_ca

    .line 557
    :cond_ae
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iput v13, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 560
    :goto_ca
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 561
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 563
    .end local v11    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 564
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 565
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 566
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 567
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    nop

    .end local v5    # "regionData":[Ljava/lang/String;
    goto/16 :goto_253

    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_fc
    array-length v5, v0

    if-ne v5, v14, :cond_23c

    .line 569
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, "regionData1":[Ljava/lang/String;
    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "regionData2":[Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 572
    .local v15, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 573
    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    mul-int/lit8 v7, v16, 0x2

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 574
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 575
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 576
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 579
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v7, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 580
    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 581
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_14d

    .line 582
    iput v9, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_180

    .line 583
    :cond_14d
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v14, :cond_158

    .line 584
    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_180

    .line 585
    :cond_158
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v8, 0x4

    if-ne v15, v8, :cond_164

    .line 586
    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_180

    .line 588
    :cond_164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 591
    :goto_180
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 592
    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    .line 595
    aget-object v8, v5, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 596
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 597
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 598
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 599
    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    .line 602
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 603
    aget-object v8, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 604
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_1d7

    .line 605
    iput v9, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_20b

    .line 606
    :cond_1d7
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_1e3

    .line 607
    const/4 v6, 0x6

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_20b

    .line 608
    :cond_1e3
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1ef

    .line 609
    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_20b

    .line 611
    :cond_1ef
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 614
    :goto_20b
    iget v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 615
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 618
    .end local v7    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 619
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 620
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 621
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 622
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    nop

    .end local v5    # "regionData1":[Ljava/lang/String;
    .end local v11    # "regionData2":[Ljava/lang/String;
    goto :goto_253

    .line 625
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_23c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is not slowDataregion, length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_253
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_253} :catch_2f8

    .line 630
    .end local v0    # "slowDataregion":[Ljava/lang/String;
    :goto_253
    nop

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_255
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2f7

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 635
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionEndTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 639
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_255

    .line 641
    .end local v0    # "i":I
    :cond_2f7
    return v13

    .line 627
    :catch_2f8
    move-exception v0

    .line 628
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return v4
.end method

.method public static supportMTK_SSM()Z
    .registers 3

    .line 662
    const v0, 0x1fc34

    .line 663
    .local v0, "sep41":I
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-le v1, v0, :cond_9

    .line 664
    const/4 v1, 0x1

    return v1

    .line 666
    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MTK_SSM_SM_VIDEO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public checkSEFData(IIJ)Z
    .registers 11
    .param p1, "recordingMode"    # I
    .param p2, "recordingFps"    # I
    .param p3, "duration"    # J

    .line 145
    const/4 v0, 0x1

    .line 146
    .local v0, "ret":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    iput p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 150
    iput p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    .line 151
    iput-wide p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    .line 153
    if-nez v1, :cond_23

    .line 154
    const-string v1, "TranscodeLib"

    const-string v2, "extractSEFData : SEFData == null, createDefaultRegion"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->createDefaultRegion()Z

    move-result v0

    goto :goto_70

    .line 157
    :cond_23
    iget v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6c

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    goto :goto_6c

    .line 160
    :cond_2c
    const/16 v3, 0x8

    if-eq v2, v3, :cond_67

    const/4 v3, 0x7

    if-eq v2, v3, :cond_67

    const/16 v3, 0x9

    if-eq v2, v3, :cond_67

    const/16 v3, 0x16

    if-eq v2, v3, :cond_67

    const/16 v3, 0x12

    if-ne v2, v3, :cond_40

    goto :goto_67

    .line 166
    :cond_40
    const/16 v3, 0xc

    if-eq v2, v3, :cond_62

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4e

    iget v4, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    const/16 v5, 0x78

    if-gt v4, v5, :cond_62

    :cond_4e
    const/16 v4, 0x13

    if-ne v2, v4, :cond_53

    goto :goto_62

    .line 170
    :cond_53
    const/16 v4, 0xd

    if-eq v2, v4, :cond_5d

    const/16 v4, 0xf

    if-eq v2, v4, :cond_5d

    if-ne v2, v3, :cond_70

    .line 173
    :cond_5d
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParserV2(Ljava/lang/String;)Z

    move-result v0

    goto :goto_70

    .line 169
    :cond_62
    :goto_62
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_70

    .line 165
    :cond_67
    :goto_67
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->superslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_70

    .line 159
    :cond_6c
    :goto_6c
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->slowfastSEFParser(Ljava/lang/String;)Z

    move-result v0

    .line 176
    :cond_70
    :goto_70
    if-nez v0, :cond_77

    .line 177
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    :cond_77
    return v0
.end method

.method public createDefaultRegion()Z
    .registers 18

    .line 236
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 239
    .local v2, "me":Landroid/media/MediaExtractor;
    const/4 v3, 0x0

    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_10

    .line 240
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "me":Landroid/media/MediaExtractor;
    .local v0, "me":Landroid/media/MediaExtractor;
    goto :goto_17

    .line 242
    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v2    # "me":Landroid/media/MediaExtractor;
    :cond_10
    iget-object v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    .end local v2    # "me":Landroid/media/MediaExtractor;
    .restart local v0    # "me":Landroid/media/MediaExtractor;
    move-object v2, v0

    .line 244
    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v2    # "me":Landroid/media/MediaExtractor;
    :goto_17
    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 246
    .local v0, "videoTrack":I
    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 247
    .local v4, "inputFormat":Landroid/media/MediaFormat;
    const-string v5, "durationUs"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_19c
    .catchall {:try_start_4 .. :try_end_25} :catchall_19a

    move-wide v4, v5

    .line 252
    .end local v0    # "videoTrack":I
    .local v4, "duration":J
    if-eqz v2, :cond_2b

    .line 253
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 255
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDefaultRegion duration:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TranscodeLib"

    invoke-static {v6, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-gtz v0, :cond_4a

    .line 257
    return v3

    .line 260
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSlowMotionV2()Z

    move-result v0

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x2710

    if-eqz v0, :cond_c6

    .line 261
    const/4 v0, 0x7

    .line 262
    .local v0, "normal_speed":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 264
    mul-long/2addr v4, v10

    .line 267
    :cond_5c
    new-instance v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v14}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 268
    .local v14, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 269
    mul-long v15, v4, v10

    div-long v7, v15, v12

    long-to-int v3, v7

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 270
    iput v0, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 271
    iget v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v3

    iput-object v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 272
    iget-object v3, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 275
    new-instance v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v14, v3

    .line 276
    mul-long/2addr v10, v4

    div-long/2addr v10, v12

    long-to-int v3, v10

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 277
    const-wide/16 v7, 0x8

    mul-long v9, v4, v7

    div-long/2addr v9, v12

    long-to-int v3, v9

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 278
    const/4 v3, 0x5

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 279
    iget v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v3

    iput-object v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 280
    iget-object v3, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_a2
    new-instance v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 284
    .end local v14    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v3, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    const-wide/16 v7, 0x8

    mul-long v8, v4, v7

    div-long/2addr v8, v12

    long-to-int v7, v8

    iput v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 285
    const-wide/16 v7, 0x3e8

    div-long v7, v4, v7

    long-to-int v7, v7

    iput v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 286
    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 287
    iget v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 288
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v0    # "normal_speed":I
    goto :goto_f5

    .line 291
    .end local v3    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_c6
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v3, v0

    .line 292
    .restart local v3    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    mul-long/2addr v10, v4

    div-long/2addr v10, v12

    long-to-int v0, v10

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 293
    const-wide/16 v7, 0x8

    mul-long v8, v4, v7

    div-long/2addr v8, v12

    long-to-int v0, v8

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 294
    iget v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_e2

    .line 295
    const/4 v0, 0x4

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_e8

    .line 296
    :cond_e2
    const/4 v7, 0x2

    if-ne v0, v7, :cond_e8

    .line 297
    const/4 v0, 0x7

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 299
    :cond_e8
    :goto_e8
    iget v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 300
    iget-object v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :goto_f5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f6
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_198

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region List "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionStartTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionEndTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeedType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f6

    .line 311
    .end local v0    # "i":I
    :cond_198
    const/4 v0, 0x1

    return v0

    .line 252
    .end local v3    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .end local v4    # "duration":J
    :catchall_19a
    move-exception v0

    goto :goto_1a7

    .line 248
    :catch_19c
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    :try_start_19d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_19a

    .line 250
    nop

    .line 252
    if-eqz v2, :cond_1a6

    .line 253
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 250
    :cond_1a6
    return v3

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a7
    if-eqz v2, :cond_1ac

    .line 253
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 254
    :cond_1ac
    throw v0
.end method

.method public extractSEFData()Ljava/lang/String;
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 186
    iget-object v3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 188
    const-string v3, "filepath is Wrong"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-object v2

    .line 191
    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 192
    .local v0, "sefFile":Ljava/io/File;
    goto :goto_2d

    .line 193
    .end local v0    # "sefFile":Ljava/io/File;
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 194
    const-string v0, "filepath is NULL"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v2

    .line 197
    :cond_26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v0    # "sefFile":Ljava/io/File;
    :goto_2d
    :try_start_2d
    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 202
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6c

    const/16 v3, 0xc

    if-eq v1, v3, :cond_6c

    const/16 v3, 0x15

    if-eq v1, v3, :cond_6c

    const/16 v3, 0xd

    if-eq v1, v3, :cond_6c

    const/16 v3, 0xf

    if-eq v1, v3, :cond_6c

    const/16 v3, 0x13

    if-ne v1, v3, :cond_50

    goto :goto_6c

    .line 210
    :cond_50
    const/16 v3, 0x8

    if-eq v1, v3, :cond_65

    const/4 v3, 0x7

    if-eq v1, v3, :cond_65

    const/16 v3, 0x9

    if-eq v1, v3, :cond_65

    const/16 v3, 0x16

    if-eq v1, v3, :cond_65

    const/16 v3, 0x12

    if-ne v1, v3, :cond_64

    goto :goto_65

    .line 217
    :cond_64
    return-object v2

    .line 215
    :cond_65
    :goto_65
    const-string v1, "Super_SlowMotion_Data"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "sefByteData":[B
    goto :goto_72

    .line 209
    .end local v1    # "sefByteData":[B
    :cond_6c
    :goto_6c
    const-string v1, "SlowMotion_Data"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    .line 218
    .restart local v1    # "sefByteData":[B
    :goto_72
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 219
    .local v3, "sefString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->checkValidSEFData(Ljava/lang/String;)Z

    move-result v4
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_7b} :catch_81

    if-nez v4, :cond_7e

    .line 220
    return-object v2

    .line 222
    :cond_7e
    return-object v3

    .line 227
    .end local v1    # "sefByteData":[B
    .end local v3    # "sefString":Ljava/lang/String;
    :cond_7f
    nop

    .line 228
    return-object v2

    .line 224
    :catch_81
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    return-object v2
.end method

.method public getEditedDuration(J)J
    .registers 21
    .param p1, "SampleTime"    # J

    .line 692
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 693
    const-string v1, "TranscodeLib"

    const-string v2, "getEditedDuration : use original data"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-wide p1

    .line 697
    :cond_10
    const-wide/16 v1, 0x0

    .line 698
    .local v1, "timedelta":J
    sget-object v3, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 699
    .local v3, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    const/high16 v4, 0x3f800000    # 1.0f

    .line 700
    .local v4, "timescale":F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 701
    const-wide/16 v5, 0x2

    mul-long v5, v5, p1

    .end local p1    # "SampleTime":J
    .local v5, "SampleTime":J
    goto :goto_23

    .line 700
    .end local v5    # "SampleTime":J
    .restart local p1    # "SampleTime":J
    :cond_21
    move-wide/from16 v5, p1

    .line 703
    .end local p1    # "SampleTime":J
    .restart local v5    # "SampleTime":J
    :goto_23
    move-wide v7, v5

    .line 705
    .local v7, "tempSampleTime":J
    iget-object v9, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v9, :cond_101

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_101

    .line 706
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2f
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_fe

    .line 707
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v10, v5, v10

    if-ltz v10, :cond_8e

    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 708
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    cmp-long v10, v5, v10

    if-gez v10, :cond_8e

    .line 709
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 710
    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 711
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 712
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v14, v14

    mul-long/2addr v14, v12

    sub-long v12, v5, v14

    const v14, 0x49742400    # 1000000.0f

    mul-float/2addr v14, v4

    float-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long v7, v10, v12

    .line 714
    goto :goto_fe

    .line 715
    :cond_8e
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    cmp-long v10, v5, v10

    if-ltz v10, :cond_fa

    .line 716
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 717
    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 720
    float-to-double v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_d7

    .line 721
    long-to-double v10, v1

    float-to-double v14, v4

    sub-double/2addr v14, v12

    iget-object v12, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 722
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v13, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    mul-double/2addr v14, v12

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    double-to-long v1, v10

    goto :goto_fa

    .line 725
    :cond_d7
    const-wide v16, 0x408f400000000000L    # 1000.0

    long-to-double v10, v1

    float-to-double v14, v4

    sub-double/2addr v12, v14

    mul-double v12, v12, v16

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 726
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v15, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-long v1, v10

    .line 706
    :cond_fa
    :goto_fa
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2f

    .line 729
    .end local v9    # "i":I
    :cond_fe
    :goto_fe
    add-long v9, v7, v1

    return-wide v9

    .line 731
    :cond_101
    const-wide/16 v9, 0x0

    return-wide v9
.end method

.method public getRegionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    if-eqz p1, :cond_5

    .line 35
    iput-object p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    goto :goto_d

    .line 36
    :cond_5
    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 37
    iput-object p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    .line 43
    :goto_d
    return-void

    .line 40
    :cond_e
    const-string v0, "TranscodeLib"

    const-string v1, "SEFHelper Initialize failed!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input file path cannot be null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSEFRegion(JI)Z
    .registers 13
    .param p1, "TimeUs"    # J
    .param p3, "recordingmode"    # I

    .line 315
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 316
    return v1

    .line 320
    :cond_8
    const/4 v0, 0x0

    .line 321
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 323
    if-eqz v0, :cond_1f

    .line 324
    goto :goto_5a

    .line 326
    :cond_1f
    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    if-eq p3, v2, :cond_35

    const/4 v2, 0x2

    if-ne p3, v2, :cond_28

    goto :goto_35

    .line 329
    :cond_28
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .local v5, "regStartTime":J
    goto :goto_41

    .line 327
    .end local v5    # "regStartTime":J
    :cond_35
    :goto_35
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .line 331
    .restart local v5    # "regStartTime":J
    :goto_41
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v2

    mul-long/2addr v7, v3

    .line 333
    .local v7, "regEndTime":J
    cmp-long v2, p1, v5

    if-ltz v2, :cond_57

    cmp-long v2, p1, v7

    if-gez v2, :cond_57

    .line 334
    const/4 v0, 0x1

    .line 335
    goto :goto_5a

    .line 322
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v1    # "i":I
    .end local v5    # "regStartTime":J
    .end local v7    # "regEndTime":J
    :cond_5a
    :goto_5a
    nop

    .line 343
    return v0

    .line 339
    :cond_5c
    const-string v2, "TranscodeLib"

    const-string v3, "There is no region info."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return v1
.end method

.method public newslowSEFParser(Ljava/lang/String;)Z
    .registers 19
    .param p1, "sefData"    # Ljava/lang/String;

    .line 350
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-nez v2, :cond_25

    .line 352
    const-string v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return v4

    .line 355
    :cond_25
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "slowDataregion":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    array-length v5, v0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_43} :catch_2e2

    const-string v6, "region speed: "

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_f5

    .line 358
    :try_start_50
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "regionData":[Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 360
    .local v11, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 361
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 362
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 363
    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 364
    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v10, :cond_d1

    .line 367
    new-instance v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v10}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v10

    .line 368
    aget-object v10, v5, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 369
    aget-object v10, v5, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 370
    aget-object v10, v5, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_9d

    .line 371
    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_c4

    .line 372
    :cond_9d
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_a8

    .line 373
    iput v7, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_c4

    .line 375
    :cond_a8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 378
    :goto_c4
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 379
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_d1
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 382
    .end local v11    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 383
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 384
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 385
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 386
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    nop

    .end local v5    # "regionData":[Ljava/lang/String;
    goto/16 :goto_23d

    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_f5
    array-length v5, v0

    if-ne v5, v14, :cond_226

    .line 389
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "regionData1":[Ljava/lang/String;
    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 391
    .local v11, "regionData2":[Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 392
    .local v15, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 393
    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 394
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 395
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 396
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_180

    .line 399
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v15, v7

    .line 400
    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 401
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 402
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_14b

    .line 403
    iput v8, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_173

    .line 404
    :cond_14b
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v14, :cond_157

    .line 405
    const/4 v7, 0x6

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_173

    .line 407
    :cond_157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v16, v5, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 411
    :goto_173
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 412
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_180
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 416
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v7, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v8, v5, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 417
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 418
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 419
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 420
    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_203

    .line 423
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    .line 424
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 425
    aget-object v8, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 426
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_1ce

    .line 427
    const/4 v6, 0x5

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1f6

    .line 428
    :cond_1ce
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_1da

    .line 429
    const/4 v6, 0x6

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1f6

    .line 431
    :cond_1da
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 434
    :goto_1f6
    iget v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 435
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_203
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 439
    .end local v7    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 440
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 441
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 442
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 443
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    nop

    .end local v5    # "regionData1":[Ljava/lang/String;
    .end local v11    # "regionData2":[Ljava/lang/String;
    goto :goto_23d

    .line 446
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is not slowDataregion, length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23d
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_23d} :catch_2e2

    .line 451
    .end local v0    # "slowDataregion":[Ljava/lang/String;
    :goto_23d
    nop

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23f
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2e1

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionEndTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_23f

    .line 460
    .end local v0    # "i":I
    :cond_2e1
    return v13

    .line 448
    :catch_2e2
    move-exception v0

    .line 449
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return v4
.end method

.method public slowfastSEFParser(Ljava/lang/String;)Z
    .registers 10
    .param p1, "sefData"    # Ljava/lang/String;

    .line 466
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sefData read slow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-nez p1, :cond_21

    .line 468
    const-string v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return v1

    .line 471
    :cond_21
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "slowDataregion":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7a

    .line 474
    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "regionData":[Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 476
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 477
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 478
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 479
    iget v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 480
    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_76} :catch_7c

    .line 473
    nop

    .end local v4    # "regionData":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 486
    .end local v2    # "slowDataregion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_7a
    nop

    .line 487
    return v5

    .line 483
    :catch_7c
    move-exception v2

    .line 484
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return v1
.end method

.method public superslowSEFParser(Ljava/lang/String;)Z
    .registers 12
    .param p1, "sefData"    # Ljava/lang/String;

    .line 494
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sefData read super : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    if-nez p1, :cond_21

    .line 496
    const-string v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return v1

    .line 499
    :cond_21
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "slowDataregion":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_92

    .line 502
    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "regionData":[Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v7, v4, v6

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 505
    .local v7, "mainData":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v5, :cond_5b

    .line 506
    aget-object v8, v7, v1

    aput-object v8, v4, v6

    .line 510
    :cond_5b
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 511
    .local v8, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 512
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 513
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    .line 514
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 515
    iget v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 516
    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_8e} :catch_94

    .line 501
    nop

    .end local v4    # "regionData":[Ljava/lang/String;
    .end local v7    # "mainData":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 522
    .end local v2    # "slowDataregion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v8    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_92
    nop

    .line 523
    return v5

    .line 519
    :catch_94
    move-exception v2

    .line 520
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return v1
.end method
