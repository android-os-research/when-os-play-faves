.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSessionDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "SemWifiApSessionDataUsage"

    const-string v0, "CONNECTIVITY_ACTION onReceive"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetisMhsActive(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetisCellularUpstream(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 313
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetisCellularUpstream(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setIsCellularUpstream(Z)V

    :cond_29
    return-void
.end method
