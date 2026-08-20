.class Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_190

    goto :goto_3f

    :sswitch_14
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_3f

    :cond_1d
    move v5, v1

    goto :goto_3f

    :sswitch_1f
    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_3f

    :cond_28
    move v5, v2

    goto :goto_3f

    :sswitch_2a
    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_3f

    :cond_33
    move v5, v3

    goto :goto_3f

    :sswitch_35
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v5, v4

    :goto_3f
    const/4 p1, 0x5

    const-string v0, "SemWifiApConfigStore"

    packed-switch v5, :pswitch_data_1a2

    .line 523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown action "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18e

    .line 512
    :pswitch_5f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmIsShutdownIntentReceived(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Z)V

    .line 513
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mgetTimeStamp(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : ACTION_SHUTDOWN Intent received\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mdumpToLogFile(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;Z)V

    .line 514
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    const-string p1, "ACTION_SHUTDOWN Intent received"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    goto/16 :goto_18e

    .line 517
    :pswitch_89
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;I)V

    .line 518
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 519
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    move-result-object p0

    const-wide/16 p1, 0x7530

    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_18e

    :pswitch_a3
    const-string p1, "SETTINGS_NETWORK_RESET is rcvd"

    .line 508
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "softap_modified"

    const-string p2, "1"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18e

    :pswitch_b7
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    .line 480
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_18e

    .line 482
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_18e

    .line 483
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;)V

    .line 484
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_18e

    const-wide/16 v7, 0x190

    .line 486
    :try_start_df
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_e8

    :catch_e3
    const-string p2, "Thread sleep fail"

    .line 488
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_e8
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p2

    .line 491
    array-length v5, p2

    if-lez v5, :cond_189

    .line 492
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    aget-object p2, p2, v4

    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;)V

    .line 493
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_17b

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v5, 0xc

    if-ne p2, v5, :cond_17b

    .line 494
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v8, v3

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v8, v2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v8, v1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 496
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v8, v6

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v8, p1

    .line 494
    invoke-static {v0, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;)V

    .line 499
    :cond_17b
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->writeWifiMacInfo(Ljava/lang/String;)V

    goto :goto_18e

    :cond_189
    const-string p0, "JDM mac length less than one:"

    .line 501
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    :goto_18e
    return-void

    nop

    :sswitch_data_190
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_35
        -0x1ff1c7b7 -> :sswitch_2a
        0x1d496f78 -> :sswitch_1f
        0x741706da -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_a3
        :pswitch_89
        :pswitch_5f
    .end packed-switch
.end method
