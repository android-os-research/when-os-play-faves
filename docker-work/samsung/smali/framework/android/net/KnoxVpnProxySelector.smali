.class public Landroid/net/KnoxVpnProxySelector;
.super Ljava/net/ProxySelector;
.source "KnoxVpnProxySelector.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist PROXY:Ljava/lang/String; = "PROXY "

.field private static final blacklist SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final blacklist TAG:Ljava/lang/String; = "KnoxVpnProxySelector"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/KnoxVpnProxySelector;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 53
    return-void
.end method

.method private blacklist getVpnManagerService()Landroid/net/IVpnManager;
    .registers 2

    .line 56
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseResponse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 3
    .param p0, "type"    # Ljava/net/Proxy$Type;
    .param p1, "hostPortString"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    .line 152
    return-void
.end method

.method public whitelist test-api select(Ljava/net/URI;)Ljava/util/List;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
