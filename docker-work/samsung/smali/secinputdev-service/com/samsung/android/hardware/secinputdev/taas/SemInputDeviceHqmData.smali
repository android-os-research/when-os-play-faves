.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
.super Ljava/lang/Object;
.source "SemInputDeviceHqmData.java"


# static fields
.field private static final Case1:I = 0x1

.field private static final Case2:I = 0x2

.field private static final Case3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceHqmData"

.field private static final TSP_CASE1_COUNT:Ljava/lang/String; = "CASA"

.field private static final TSP_CASE2_COUNT:Ljava/lang/String; = "CASB"

.field private static final TSP_CASE3_COUNT:Ljava/lang/String; = "CASC"


# instance fields
.field private mCase1Count:I

.field private mCase2Count:I

.field private mCase3Count:I

.field private mLoggingData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysinputHal:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V
    .registers 9
    .param p1, "hal"    # Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 28
    const-string v0, "SemInputDeviceHqmData"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 23
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 24
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mSysinputHal:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 32
    :try_start_15
    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->readTaas()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_19} :catch_113

    .line 33
    .local v1, "casStr":Ljava/lang/String;
    const-string v2, "CASB"

    const-string v3, "CASA"

    if-eqz v1, :cond_f7

    :try_start_1f
    const-string v4, "NG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_25} :catch_113

    if-eqz v4, :cond_29

    goto/16 :goto_f7

    .line 41
    :cond_29
    :try_start_29
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 42
    .local v4, "stk":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 43
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: mCase1Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCase2Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_66} :catch_ae
    .catch Ljava/util/NoSuchElementException; {:try_start_29 .. :try_end_66} :catch_7c
    .catchall {:try_start_29 .. :try_end_66} :catchall_7a

    .line 50
    .end local v4    # "stk":Ljava/util/StringTokenizer;
    :try_start_66
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_79} :catch_113

    goto :goto_aa

    .line 50
    :catchall_7a
    move-exception v4

    goto :goto_df

    .line 47
    :catch_7c
    move-exception v4

    .line 48
    .local v4, "e":Ljava/util/NoSuchElementException;
    :try_start_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: NoSuchElementException e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_7a

    .line 50
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    :try_start_97
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_aa
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_ad} :catch_113

    goto :goto_dd

    .line 45
    :catch_ae
    move-exception v4

    .line 46
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_af
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: NumberFormatException e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_af .. :try_end_c9} :catchall_7a

    .line 50
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :try_start_c9
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_aa

    .line 52
    :goto_dd
    nop

    .line 56
    .end local v1    # "casStr":Ljava/lang/String;
    goto :goto_133

    .line 50
    .restart local v1    # "casStr":Ljava/lang/String;
    :goto_df
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    nop

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
    .end local p1    # "hal":Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    throw v4

    .line 34
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
    .restart local p1    # "hal":Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    :cond_f7
    :goto_f7
    const-string v4, "readTaas init failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c9 .. :try_end_112} :catch_113

    .line 37
    return-void

    .line 53
    .end local v1    # "casStr":Ljava/lang/String;
    :catch_113
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: IllegalArgumentException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, "init: failed to set initial value"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_133
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    .line 63
    return-void
.end method

.method public get(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public increaseCount(ILjava/lang/String;)V
    .registers 19
    .param p1, "usage"    # I
    .param p2, "buf"    # Ljava/lang/String;

    .line 66
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 67
    .local v2, "ret":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 68
    .local v3, "mNow":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object v5, v0

    .line 69
    .local v5, "mDate":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy/MMdd/HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 70
    .local v6, "mFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "getTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0xa0

    if-le v0, v8, :cond_32

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v9, p2

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .local v0, "TaasLog":Ljava/lang/String;
    goto :goto_37

    .line 75
    .end local v0    # "TaasLog":Ljava/lang/String;
    :cond_32
    move-object/from16 v9, p2

    move-object/from16 v0, p2

    move-object v8, v0

    .line 77
    .local v8, "TaasLog":Ljava/lang/String;
    :goto_37
    const-string v10, " mCase2Count:"

    const-string v11, "increaseCount mCase1Count:"

    const-string v12, " "

    const v0, 0x7fffff9b

    const-string v13, "SemInputDeviceHqmData"

    packed-switch p1, :pswitch_data_1da

    goto/16 :goto_1d9

    .line 118
    :pswitch_47
    iget v10, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    if-lt v10, v0, :cond_4e

    .line 119
    iput v0, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    goto :goto_52

    .line 121
    :cond_4e
    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    .line 123
    :goto_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " C "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "tempStr2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "increaseCount mCase3Count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase3Count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tempStr2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto/16 :goto_1d9

    .line 98
    .end local v0    # "tempStr2":Ljava/lang/String;
    :pswitch_9b
    iget v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    if-lt v14, v0, :cond_a2

    .line 99
    iput v0, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    goto :goto_a6

    .line 101
    :cond_a2
    add-int/lit8 v14, v14, 0x1

    iput v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 104
    :goto_a6
    :try_start_a6
    iget-object v0, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string v14, "CASB"

    iget v15, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_b3} :catch_b4

    .line 107
    goto :goto_cf

    .line 105
    :catch_b4
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "increaseCount2: IllegalArgumentException e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " B "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "tempStr1":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tempStr1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v10, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mSysinputHal:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v10, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->writeTaas(Ljava/lang/String;)I

    move-result v2

    .line 112
    if-gez v2, :cond_1d9

    .line 113
    const-string v10, "writeTaas error case2"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d9

    .line 79
    .end local v0    # "tempStr1":Ljava/lang/String;
    :pswitch_13b
    iget v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    if-lt v14, v0, :cond_142

    .line 80
    iput v0, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    goto :goto_146

    .line 82
    :cond_142
    add-int/lit8 v14, v14, 0x1

    iput v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 85
    :goto_146
    :try_start_146
    iget-object v0, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string v14, "CASA"

    iget v15, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_153
    .catch Ljava/lang/IllegalArgumentException; {:try_start_146 .. :try_end_153} :catch_154

    .line 88
    goto :goto_16f

    .line 86
    :catch_154
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "increaseCount1: IllegalArgumentException e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_16f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " A "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "tempStr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tempStr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v10, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mSysinputHal:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v10, v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->writeTaas(Ljava/lang/String;)I

    move-result v2

    .line 93
    if-gez v2, :cond_1d9

    .line 94
    const-string v10, "writeTaas error case1"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "tempStr":Ljava/lang/String;
    :cond_1d9
    :goto_1d9
    return-void

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_13b
        :pswitch_9b
        :pswitch_47
    .end packed-switch
.end method
