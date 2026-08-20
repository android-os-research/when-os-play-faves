.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiTransportLayerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 597
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_158

    goto :goto_32

    :sswitch_12
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    move v3, v1

    goto :goto_32

    :sswitch_28
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    const p1, 0x400080

    const-string v0, "SemWifiTransportLayerMonitor"

    packed-switch v3, :pswitch_data_166

    goto/16 :goto_156

    .line 600
    :pswitch_3c
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "ACTION_PACKAGE_ADDED - MATCH ANY USER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_156

    .line 602
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_156

    .line 605
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_156

    .line 609
    :try_start_59
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 611
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    move-result p0

    .line 613
    invoke-static {v4, v5, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetUserIdBasedUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)I

    move-result p0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 612
    invoke-virtual {v4, v1, p0, v2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_156

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ACTION_PACKAGE_ADDED - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_9a} :catch_9c

    goto/16 :goto_156

    :catch_9c
    move-exception p0

    .line 616
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_156

    .line 623
    :pswitch_a2
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_ad

    const-string p1, "ACTION_PACKAGE_REMOVED - MATCH ANY USER"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    const-string p1, "android.intent.extra.REPLACING"

    .line 624
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 626
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_156

    const-string p0, "ACTION_PACKAGE_REMOVED - remove app before replace"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 629
    :cond_c2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_156

    .line 630
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_156

    .line 632
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.UID"

    .line 633
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_156

    .line 635
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/4 v3, 0x4

    .line 636
    invoke-virtual {p0, v3, p2, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 635
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_156

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_PACKAGE_REMOVED - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 643
    :pswitch_10d
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_118

    const-string v1, "ACTION_PACKAGE_REPLACED - MATCH ANY USER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_118
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_156

    .line 645
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_156

    .line 648
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_156

    .line 652
    :try_start_12a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 654
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/4 v1, 0x3

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_156

    const-string p0, "ACTION_PACKAGE_REPLACED - updated"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12a .. :try_end_151} :catch_152

    goto :goto_156

    :catch_152
    move-exception p0

    .line 658
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_156
    :goto_156
    return-void

    nop

    :sswitch_data_158
    .sparse-switch
        -0x304ed112 -> :sswitch_28
        0x1f50b9c2 -> :sswitch_1d
        0x5c1076e2 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_10d
        :pswitch_a2
        :pswitch_3c
    .end packed-switch
.end method
