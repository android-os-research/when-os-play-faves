.class public Lcom/android/server/VpnManagerService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkCallback"
.end annotation


# instance fields
.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mNetwork:Landroid/net/Network;

.field public final synthetic this$0:Lcom/android/server/VpnManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/VpnManagerService;)V
    .registers 2

    .line 1954
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->this$0:Lcom/android/server/VpnManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    .line 1955
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 1956
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/VpnManagerService;Lcom/android/server/VpnManagerService$NetworkCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService$NetworkCallback;-><init>(Lcom/android/server/VpnManagerService;)V

    return-void
.end method


# virtual methods
.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 1

    .line 1983
    iget-object p0, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 1

    .line 1979
    iget-object p0, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 1974
    invoke-static {}, Lcom/android/server/VpnManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailable being called for netId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 6

    .line 1960
    invoke-static {}, Lcom/android/server/VpnManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLinkPropertiesChanged being called for netId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 1962
    iput-object p2, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5

    .line 1967
    invoke-static {}, Lcom/android/server/VpnManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost being called for netId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1968
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 1969
    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method
