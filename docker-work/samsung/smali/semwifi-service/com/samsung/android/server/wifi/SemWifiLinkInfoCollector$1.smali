.class Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiLinkInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 155
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.wifi.LATENCYMODE"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "Enable"

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x2

    if-lez p1, :cond_21

    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    const/4 p1, 0x5

    invoke-static {p0, v1, p1, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$msendInternalMessage(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;IIILjava/lang/Object;)V

    goto :goto_27

    .line 161
    :cond_21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    const/4 p1, 0x6

    invoke-static {p0, v1, p1, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$msendInternalMessage(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;IIILjava/lang/Object;)V

    :cond_27
    :goto_27
    return-void
.end method
