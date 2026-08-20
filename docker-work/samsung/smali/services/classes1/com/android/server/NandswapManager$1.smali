.class public Lcom/android/server/NandswapManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 639
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 642
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "received action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NandswapManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 646
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 647
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmNandBigData()Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    move-result-object p0

    if-eqz p0, :cond_147

    .line 648
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmNandBigData()Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->-$$Nest$smuploadBigdataToHQM()V

    goto/16 :goto_147

    :cond_31
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 650
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez p2, :cond_101

    const-string p2, "android.intent.action.REBOOT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    goto/16 :goto_101

    :cond_45
    const-string p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 665
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_147

    .line 666
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "support ramExpandSwitch: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSize(Landroid/content/Context;)I

    move-result p0

    .line 670
    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-ne p0, v1, :cond_81

    const-string/jumbo p0, "ram_expand_size was not set"

    .line 674
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    goto :goto_82

    :cond_81
    move p0, v3

    :goto_82
    if-nez p2, :cond_8b

    const-string/jumbo p0, "ram_expand_size_list was not set"

    .line 679
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    .line 683
    :cond_8b
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    move-result p2

    if-nez p2, :cond_98

    const-string/jumbo p0, "zram backing_dev is not set"

    .line 684
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    :cond_98
    if-ne p0, v2, :cond_b7

    .line 690
    new-instance p0, Ljava/io/File;

    const-string p2, "/data/per_boot/zram_swap"

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_a1} :catch_12d

    .line 694
    :try_start_a1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    div-long/2addr v1, v4
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_ae

    const-wide/16 v4, 0x4

    mul-long/2addr v1, v4

    long-to-int p0, v1

    goto :goto_b4

    :catch_ae
    :try_start_ae
    const-string p0, "error on file length"

    .line 696
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    .line 698
    :goto_b4
    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->-$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V

    :cond_b7
    const-string/jumbo p0, "ro.sys.kernelmemory.gmr.enabled"

    .line 701
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_147

    const-string/jumbo p0, "kgsl"

    const-string/jumbo p1, "ro.sys.kernelmemory.gmr.vendor_plugin"

    const-string p2, ""

    .line 702
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_147

    .line 704
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d5} :catch_12d

    const p0, 0x1f400

    .line 720
    :try_start_d8
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/class/kgsl/kgsl/max_reclaim_limit"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 723
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GMR: Success write max reclaim limit: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_fa} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_fa} :catch_12d

    goto :goto_147

    :catch_fb
    :try_start_fb
    const-string p0, "GMR: Failed to write max recaim limit to /sys/class/kgsl/kgsl/max_reclaim_limit"

    .line 725
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 652
    :cond_101
    :goto_101
    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSize(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_114

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    move-result p0

    if-ne p0, v2, :cond_114

    .line 653
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetDefaultRamExpandSize()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->-$$Nest$smputRamExpandSize(Landroid/content/Context;I)V

    .line 657
    :cond_114
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    move-result p0

    if-eq p0, v1, :cond_129

    .line 658
    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSize(Landroid/content/Context;)I

    move-result p1

    if-eq p0, p1, :cond_129

    .line 659
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smclearClientsBigdataInfo()V

    const-string p0, "Ramplus Option is changed. clear bigdata\'s info."

    .line 660
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 662
    :cond_129
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smsaveClientsBigdataInfoInReboot()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_12c} :catch_12d

    goto :goto_147

    :catch_12d
    move-exception p0

    .line 730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "intent exception msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    :goto_147
    return-void
.end method
