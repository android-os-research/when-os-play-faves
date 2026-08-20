.class public Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection available."

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleSuplConnectionAvailable(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    const-string p1, "GnssNetworkConnectivityHandler"

    const-string v0, "SUPL network connection lost."

    .line 497
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleReleaseSuplConnection(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    return-void
.end method

.method public onUnavailable()V
    .registers 3

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection request timed out."

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleReleaseSuplConnection(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    return-void
.end method
