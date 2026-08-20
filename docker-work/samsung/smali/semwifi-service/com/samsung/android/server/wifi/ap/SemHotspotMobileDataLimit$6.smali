.class Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemHotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    if-eq v0, v1, :cond_48

    .line 133
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default network changed to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHotspotMobileDataLimit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/Network;)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmDefaultNetworkCapabilities(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/NetworkCapabilities;)V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmApData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    :cond_48
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/Network;)V

    .line 143
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmDefaultNetworkCapabilities(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/NetworkCapabilities;)V

    .line 144
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmApData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    return-void
.end method
