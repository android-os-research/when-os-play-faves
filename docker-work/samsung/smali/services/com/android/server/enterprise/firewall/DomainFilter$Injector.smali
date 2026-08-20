.class Lcom/android/server/enterprise/firewall/DomainFilter$Injector;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mCtx:Landroid/content/Context;

.field public mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .registers 3

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    return-object p0
.end method

.method public getDnsResolverAdapter()Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;
    .registers 1

    .line 292
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDomainFilterNapCommon()Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    move-result-object p0

    return-object p0
.end method

.method public getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 245
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object p0
.end method

.method public getNetd()Landroid/net/INetd;
    .registers 3

    const-string/jumbo p0, "netd"

    .line 266
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 265
    invoke-static {p0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object p0

    if-nez p0, :cond_16

    .line 268
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WARNING: returning null INetd instance."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-object p0
.end method

.method public getNetworkIdInfoArray()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getNetworkManagementHandler(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;
    .registers 3

    .line 257
    new-instance p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)V

    return-object p0
.end method

.method public getOemNetd()Lcom/android/internal/net/IOemNetd;
    .registers 4

    .line 274
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetd()Landroid/net/INetd;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 278
    :try_start_6
    invoke-interface {p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 281
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOemNetdService() - failed to retrieve getOemNetdService instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_28
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WARNING: returning null IOemNetd instance."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserIdMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 261
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
