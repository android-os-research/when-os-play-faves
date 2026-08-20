.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;
.super Landroid/os/Handler;
.source "SemWifiServiceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Landroid/os/Looper;)V
    .registers 3

    .line 336
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const-string v0, "SCPM: descriptor & stream close failure"

    .line 342
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_326

    goto/16 :goto_324

    .line 445
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;

    .line 449
    :try_start_13
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    iget-object v3, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->configuration:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_111

    if-nez v1, :cond_53

    .line 451
    :try_start_1d
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    move-result-object p1

    .line 452
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCPM: null file descriptor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_10d

    if-eqz v1, :cond_52

    .line 489
    :try_start_49
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_52

    .line 491
    :catchall_4d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    :cond_52
    :goto_52
    return-void

    .line 456
    :cond_53
    :try_start_53
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_10d

    .line 457
    :try_start_5c
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->configuration:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_33c

    goto :goto_a5

    :sswitch_6a
    const-string v2, "NSD_CONTROL_L2_NRT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    move v2, v9

    goto :goto_a6

    :sswitch_74
    const-string v2, "NSD_CONTROL_L1_NRT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    move v2, v5

    goto :goto_a6

    :sswitch_7e
    const-string v2, "NSD_CONTROL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    move v2, v8

    goto :goto_a6

    :sswitch_88
    const-string v2, "NSD_CONTROL_L2_RT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    move v2, v10

    goto :goto_a6

    :sswitch_92
    const-string v2, "NSD_CONTROL_L1_RT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    move v2, v6

    goto :goto_a6

    :sswitch_9c
    const-string v7, "NSD_CONTROL_L1_CG"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v2, v4

    :goto_a6
    if-eqz v2, :cond_f5

    if-eq v2, v6, :cond_e6

    if-eq v2, v5, :cond_d7

    if-eq v2, v10, :cond_c8

    if-eq v2, v9, :cond_b9

    if-eq v2, v8, :cond_b3

    goto :goto_103

    .line 479
    :cond_b3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->checkScpmPolicy(Ljava/io/FileInputStream;)V

    goto :goto_103

    .line 475
    :cond_b9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbL2Nrt()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;->reloadPredictor(Ljava/io/FileInputStream;)V

    .line 476
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v2, "SCPM L2 NRT model reloaded"

    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto :goto_103

    .line 471
    :cond_c8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbL2Rt()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->reloadPredictor(Ljava/io/FileInputStream;)V

    .line 472
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v2, "SCPM L2 RT model reloaded"

    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto :goto_103

    .line 467
    :cond_d7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbMsL1()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->reloadPredictorNrt(Ljava/io/FileInputStream;)V

    .line 468
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v2, "SCPM L1 NRT model reloaded"

    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto :goto_103

    .line 463
    :cond_e6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbMsL1()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->reloadPredictorRt(Ljava/io/FileInputStream;)V

    .line 464
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v2, "SCPM L1 RT model reloaded"

    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto :goto_103

    .line 459
    :cond_f5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbMsL1()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->reloadPredictorCg(Ljava/io/FileInputStream;)V

    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v2, "SCPM L1 CG model reloaded"

    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_103
    .catchall {:try_start_5c .. :try_end_103} :catchall_10b

    .line 488
    :goto_103
    :try_start_103
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 489
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_109
    .catchall {:try_start_103 .. :try_end_109} :catchall_139

    goto/16 :goto_324

    :catchall_10b
    move-exception p1

    goto :goto_10f

    :catchall_10d
    move-exception p1

    move-object v3, v4

    :goto_10f
    move-object v4, v1

    goto :goto_113

    :catchall_111
    move-exception p1

    move-object v3, v4

    .line 485
    :goto_113
    :try_start_113
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCPM model reloading failure: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_12d
    .catchall {:try_start_113 .. :try_end_12d} :catchall_140

    if-eqz v3, :cond_132

    .line 488
    :try_start_12f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_132
    if-eqz v4, :cond_324

    .line 489
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_139

    goto/16 :goto_324

    .line 491
    :catchall_139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_324

    :catchall_140
    move-exception p1

    if-eqz v3, :cond_146

    .line 488
    :try_start_143
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_146
    if-eqz v4, :cond_151

    .line 489
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14b
    .catchall {:try_start_143 .. :try_end_14b} :catchall_14c

    goto :goto_151

    .line 491
    :catchall_14c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 493
    :cond_151
    :goto_151
    throw p1

    .line 442
    :pswitch_152
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_324

    .line 439
    :pswitch_161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_324

    .line 414
    :pswitch_170
    :try_start_170
    new-instance p1, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfputmXgbMsL1(Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;)V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_178} :catch_179

    goto :goto_184

    :catch_179
    move-exception p1

    .line 416
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v0, "SemNscXgbMsL1 Model loading error"

    invoke-virtual {p1, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 421
    :goto_184
    :try_start_184
    new-instance p1, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfputmXgbL2Nrt(Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;)V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_18c} :catch_18d

    goto :goto_198

    :catch_18d
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 424
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v0, "SemNscXgbL2Nrt Model loading error"

    invoke-virtual {p1, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 428
    :goto_198
    :try_start_198
    new-instance p1, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfputmXgbL2Rt(Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;)V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a0} :catch_1a1

    goto :goto_1ac

    :catch_1a1
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const-string v0, "SemNscXgbL2Rt Model loading error"

    invoke-virtual {p1, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 434
    :goto_1ac
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbMsL1()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    move-result-object p1

    if-eqz p1, :cond_324

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbL2Nrt()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    move-result-object p1

    if-eqz p1, :cond_324

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$sfgetmXgbL2Rt()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    move-result-object p1

    if-eqz p1, :cond_324

    .line 435
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Z)V

    goto/16 :goto_324

    .line 408
    :pswitch_1c5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstopTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 409
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    goto/16 :goto_324

    .line 401
    :pswitch_1d6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 403
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$munregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 404
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstopTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 405
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    goto/16 :goto_324

    .line 391
    :pswitch_1fa
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minitializeServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 392
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minitializeTrafficTypeDetector(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 393
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minitializeInternalVariables(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 395
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 396
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 397
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 398
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    goto/16 :goto_324

    .line 363
    :pswitch_229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    move-result-object v0

    if-eqz v0, :cond_25c

    .line 364
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->getWakeTimeRatio()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetwakeDurationThresholdPercent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_253

    .line 366
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_25c

    .line 368
    :cond_253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 372
    :cond_25c
    :goto_25c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 373
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    move-result-wide v7

    sub-long/2addr v2, v7

    add-long/2addr v0, v2

    .line 374
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v7, 0x8

    mul-long/2addr v0, v7

    const-wide/32 v7, 0xf4240

    mul-long/2addr v0, v7

    .line 375
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    move-result-wide v7

    sub-long v7, v2, v7

    div-long/2addr v0, v7

    .line 376
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetnsdSuspensionThresholdHigh(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    move-result v4

    int-to-long v7, v4

    cmp-long v4, v0, v7

    if-gtz v4, :cond_2b3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetnsdResults(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)[I

    move-result-object v4

    aget v4, v4, v5

    if-ne v4, v5, :cond_2a8

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetnsdSuspensionThresholdLow(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_2a8

    goto :goto_2b3

    .line 382
    :cond_2a8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    goto :goto_2bb

    .line 379
    :cond_2b3
    :goto_2b3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstopTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 380
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->removeMessages(I)V

    .line 386
    :goto_2bb
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V

    .line 388
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V

    goto :goto_324

    .line 344
    :pswitch_2cf
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->removeMessages(I)V

    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    move-result-object p1

    if-eqz p1, :cond_309

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    move-result p1

    if-eqz p1, :cond_309

    .line 346
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setTrafficData(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minputDataToClassifiers(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mpredictL1ServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mpredictL2ServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mdetermineServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V

    .line 357
    :cond_309
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_324

    .line 358
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p1

    invoke-static {p1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_324
    :goto_324
    return-void

    nop

    :pswitch_data_326
    .packed-switch 0x1
        :pswitch_2cf
        :pswitch_229
        :pswitch_1fa
        :pswitch_1d6
        :pswitch_1c5
        :pswitch_170
        :pswitch_161
        :pswitch_152
        :pswitch_f
    .end packed-switch

    :sswitch_data_33c
    .sparse-switch
        -0x61540124 -> :sswitch_9c
        -0x6153ff46 -> :sswitch_92
        -0x61538ae7 -> :sswitch_88
        -0x1c41c7e3 -> :sswitch_7e
        0x36d40798 -> :sswitch_74
        0x36e21f19 -> :sswitch_6a
    .end sparse-switch
.end method
