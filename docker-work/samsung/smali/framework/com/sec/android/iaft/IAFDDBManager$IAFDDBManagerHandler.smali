.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;
.super Landroid/os/Handler;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAFDDBManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 424
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 425
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 429
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_d

    .line 430
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V

    goto/16 :goto_111

    .line 431
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_1a

    .line 432
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitARDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V

    goto/16 :goto_111

    .line 433
    :cond_1a
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1388

    const/16 v3, 0x19

    const/4 v4, 0x0

    const/16 v5, 0xfc

    const/16 v6, 0xfd

    const/4 v7, 0x1

    if-eq v0, v5, :cond_bc

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_2e

    goto/16 :goto_bc

    .line 461
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 463
    :try_start_36
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 464
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v5, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v8

    invoke-direct {v5, v0, v8}, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V

    invoke-static {v0, v5}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;)V

    .line 465
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v8}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0, v7}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_66} :catch_67

    .line 476
    goto :goto_ae

    .line 467
    :catch_67
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v5, v4}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    .line 470
    sget v4, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v4, v7

    sput v4, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 471
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v4

    if-eqz v4, :cond_ad

    sget v4, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    if-ge v4, v3, :cond_ad

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDBInitReTryCnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IAFDDBManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v4

    const/16 v5, 0xfe

    invoke-virtual {v4, v5}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    :cond_ad
    return-void

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_111

    .line 434
    :cond_bc
    :goto_bc
    sget-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    if-eqz v0, :cond_c1

    .line 436
    return-void

    .line 438
    :cond_c1
    sput-boolean v7, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 440
    :try_start_c3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_cd

    .line 441
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitIAFDDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V

    goto :goto_105

    .line 443
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    sget-object v5, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-static {v0, v7, v5, v8}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitDBByURIOrFile(Lcom/sec/android/iaft/IAFDDBManager;ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    .line 444
    .local v0, "iafddataTmp":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    if-eqz v0, :cond_e1

    .line 445
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIfadDBData(Lcom/sec/android/iaft/IAFDDBManager;)[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v1

    aput-object v0, v1, v7

    goto :goto_105

    .line 447
    :cond_e1
    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v5, v7

    sput v5, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 448
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v5

    if-eqz v5, :cond_105

    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    if-ge v5, v3, :cond_105

    .line 450
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5, v1, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 455
    .end local v0    # "iafddataTmp":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    :cond_105
    :goto_105
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$msyncDBType(Lcom/sec/android/iaft/IAFDDBManager;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_10a} :catch_10b

    .line 458
    goto :goto_10f

    .line 456
    :catch_10b
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10f
    sput-boolean v4, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 481
    :goto_111
    return-void
.end method
