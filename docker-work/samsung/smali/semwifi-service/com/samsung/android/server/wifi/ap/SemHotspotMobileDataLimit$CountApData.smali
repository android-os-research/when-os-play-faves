.class Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;
.super Landroid/os/Handler;
.source "SemHotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountApData"
.end annotation


# instance fields
.field private mBaseRxBytes:J

.field private mBaseTxBytes:J

.field private mBytes:J

.field private mRxBytes:J

.field private mTxBytes:J

.field private mUsedBytes:J

.field private recording:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .registers 5

    .line 328
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    .line 329
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/math/BigDecimal;)V

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 331
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mUsedBytes:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const-string p1, "SemHotspotMobileDataLimit"

    .line 380
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 386
    :try_start_b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mgetTetheringUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)[J

    move-result-object v4

    .line 387
    aget-wide v5, v4, v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_18

    .line 388
    :try_start_13
    aget-wide v0, v4, v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_15} :catch_16

    goto :goto_1f

    :catch_16
    move-exception v4

    goto :goto_1a

    :catch_18
    move-exception v4

    move-wide v5, v0

    :goto_1a
    const-string v7, "getTetheringUsage Exception: "

    .line 390
    invoke-static {p1, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    :goto_1f
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseTxBytes:J

    sub-long v7, v5, v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mTxBytes:J

    .line 393
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseRxBytes:J

    sub-long v9, v0, v9

    iput-wide v9, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mRxBytes:J

    add-long/2addr v7, v9

    .line 394
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mUsedBytes:J

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 395
    new-instance v4, Ljava/math/BigDecimal;

    iget-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    invoke-direct {v4, v7, v8}, Ljava/math/BigDecimal;-><init>(J)V

    .line 396
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$sfgetDBG()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBaseTxBytes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseTxBytes:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mBaseRxBytes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseRxBytes:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mTx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mRx = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mTxBytes = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mTxBytes:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mRxBytes = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mRxBytes:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mBytes = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", usage = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_ff

    .line 399
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V

    const-string v0, "Mobile AP Limited Data reached, turn off Mobile AP"

    .line 400
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 402
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 403
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040f3e

    .line 404
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v5, "CountryISO"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "JP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    const v0, 0x1040f3f

    .line 406
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_f2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 410
    :cond_ff
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mnotifyDataUsageChanged(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/math/BigDecimal;)V

    .line 412
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result p1

    if-nez p1, :cond_126

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->isScheduledNeed()Z

    move-result p1

    if-eqz p1, :cond_126

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_126

    const-wide/16 v0, 0x3e8

    .line 413
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->sendEmptyMessageDelayed(IJ)Z

    :cond_126
    return-void
.end method

.method isScheduledNeed()Z
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmUsageChangeCallbacks(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/util/Map;

    move-result-object p0

    .line 375
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_36

    :cond_34
    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method onStateChanged()V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 336
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$misWifiSharingEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 338
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$misWifiDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v3

    :goto_2d
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged isUpstreamWifi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifiApEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isDataEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClientNum : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHotspotMobileDataLimit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I

    move-result v0

    if-lez v0, :cond_c5

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    if-nez v0, :cond_a8

    .line 346
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    const-wide/16 v0, 0x0

    .line 347
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 348
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mupdateTelePhonyManager(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->updateBaseTxRxBytes()V

    .line 351
    :cond_a8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmUsageChangeCallbacks(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_bd

    goto :goto_c1

    .line 354
    :cond_bd
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->removeMessages(I)V

    goto :goto_d2

    .line 352
    :cond_c1
    :goto_c1
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->sendEmptyMessage(I)Z

    goto :goto_d2

    .line 356
    :cond_c5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 357
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 359
    :cond_cf
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->removeMessages(I)V

    :goto_d2
    return-void
.end method

.method updateBaseTxRxBytes()V
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mgetTetheringUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)[J

    move-result-object v0

    const/4 v1, 0x0

    .line 365
    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseTxBytes:J

    const/4 v1, 0x1

    .line 366
    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseRxBytes:J

    .line 367
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mUsedBytes:J

    return-void
.end method
