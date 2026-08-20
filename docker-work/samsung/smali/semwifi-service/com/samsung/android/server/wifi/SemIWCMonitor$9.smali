.class Lcom/samsung/android/server/wifi/SemIWCMonitor$9;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$9;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 591
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 592
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkCallback.onAvailable(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 611
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_2e

    const/16 p0, 0x10

    .line 612
    invoke-virtual {p2, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkCallback.onCapabilitiesChanged() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " valid: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    .line 597
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NetworkCallback.onLinkPropertiesChanged() "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 604
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 605
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkCallback.onLost() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method
