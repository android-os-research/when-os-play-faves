.class public Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;,
        Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;,
        Lcom/android/server/enterprise/firewall/DomainFilter$Injector;,
        Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    }
.end annotation


# static fields
.field public static final ACTION_CAPTIVE_PORTAL_DETECTED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

.field public static final ADMIN_IN_DATABASE:I = 0x1

.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CAPTIVE_PORTAL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.captiveportallogin"

.field public static final CMD_BUF_SIZE_MAX:I = 0x11170

.field public static final DBG:Z = false

.field public static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field public static final EMPTY_DATABASE:I = 0x0

.field public static final EXTRA_CAPTIVE_PORTAL_URL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

.field public static final INVALID_NETID:I = -0x1

.field public static final MSG_RELEASE_NETWORK:I = 0x0

.field public static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final PORTAL_HOSTS_TOKEN:Ljava/lang/String; = ","

.field public static final REPORT_CACHE_SIZE:I = 0x5

.field public static TAG:Ljava/lang/String; = "DomainFilter"

.field public static mConnectivityService:Landroid/net/ConnectivityManager;


# instance fields
.field public mBootFilterReceiver:Landroid/content/BroadcastReceiver;

.field public mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mContext:Landroid/content/Context;

.field public mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

.field public mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

.field public mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

.field public mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mExceptionListLock:Ljava/lang/Object;

.field public mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field public mInitDaemonCacheThread:Ljava/lang/Thread;

.field public final mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

.field public mIsExceptionListApplied:Z

.field public mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

.field public mNetdService:Landroid/net/INetd;

.field public mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

.field public mNetworkIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkIdListLock:Ljava/lang/Object;

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field public mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

.field public mReportCacheIndex:I

.field public mServer:Ljava/lang/String;

.field public mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field public mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$qid9NYqEtrFg3QvT8dKFC62PsAI(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->lambda$flushNetworkDnsCache$0(Landroid/net/Network;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReportCache(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServer(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddHostToCaptivePortalWhitelist(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->addHostToCaptivePortalWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexemptCaptivePortalHostname(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->exemptCaptivePortalHostname(Landroid/net/Network;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mextractHost(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCaptivePortalCheckUrl(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/net/URL;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getCaptivePortalCheckUrl()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCaptivePortalUid(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getCaptivePortalUid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetConnectivityService(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/ConnectivityManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageFromRunningProcesses(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasAnyRuleInDatabase(Lcom/android/server/enterprise/firewall/DomainFilter;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitDaemonCache(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitUserIdMap(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misIpAddress(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isIpAddress(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpackageAdded(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpackageRemoved(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpackageReplaced(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseNetworkId(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworkId(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveReportInDatabase(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendToCache(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .registers 4

    .line 297
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$Injector;)V
    .registers 14

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-direct {v0}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 167
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 169
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 363
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$5;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 301
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 302
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 304
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 305
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetworkIdInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 306
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DomainFilterHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 308
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetworkManagementHandler(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 309
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getUserIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 310
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getDomainFilterNapCommon()Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 311
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getDnsResolverAdapter()Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    .line 315
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 316
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 317
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 318
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 319
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 323
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_REMOVED"

    .line 324
    invoke-virtual {v9, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_ADDED"

    .line 325
    invoke-virtual {v9, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 330
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 331
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 335
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "captive_portal_server"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    if-nez p1, :cond_f9

    const-string p1, "connectivitycheck.gstatic.com"

    .line 338
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 342
    :cond_f9
    new-instance p1, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 353
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInitDaemonCacheThread:Ljava/lang/Thread;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    .line 356
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerCaptiveNetworkCallback()V

    return-void
.end method

.method private synthetic lambda$flushNetworkDnsCache$0(Landroid/net/Network;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1456
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;->flushNetworkCache(I)V

    return-void
.end method

.method public static makeURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 4

    .line 449
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 451
    :catch_6
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_408

    .line 728
    :try_start_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    goto/16 :goto_408

    .line 736
    :cond_13
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addDomainFilterRules() - rules.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 742
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 743
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_52

    .line 745
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - Another admin already have domain filter rules in the database"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 747
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v0, v3
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_422

    .line 749
    monitor-exit p0

    return-object v0

    .line 752
    :cond_52
    :try_start_52
    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_422

    .line 753
    :try_start_55
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 754
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_405

    .line 755
    :try_start_62
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    new-array v10, v7, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 757
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move v12, v3

    .line 759
    :goto_6e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_398

    .line 760
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    if-nez v13, :cond_9e

    .line 762
    sget-object v13, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v14, "addDomainFilterRules() - Skipping invalid rule - No rule specified"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "No rule was specified."

    invoke-direct {v13, v14, v15, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v13, v10, v12

    :goto_90
    move-object v3, v0

    move/from16 v20, v5

    move/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v18, v9

    move-object/from16 v21, v11

    :goto_9b
    const/4 v7, -0x1

    goto/16 :goto_384

    .line 769
    :cond_9e
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v8

    .line 770
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v14

    .line 771
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    xor-int/2addr v15, v4

    if-nez v15, :cond_e8

    .line 773
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_e8

    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_d3

    .line 774
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_d3

    .line 775
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e8

    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e8

    .line 776
    :cond_d3
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v13, "addDomainFilterRules() - Skipping invalid rule - mandatory parameters missing"

    invoke-static {v8, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "No parameters provided."

    invoke-direct {v8, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v10, v12

    goto :goto_90

    .line 783
    :cond_e8
    invoke-virtual {v1, v13, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->setDomainFilterRulesProperties(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lorg/json/JSONArray;)V

    .line 785
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v4

    aput-object v4, v10, v12

    if-eqz v4, :cond_115

    .line 787
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addDomainFilterRules() - Skipping invalid rule - invalid Application Identity: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v10, v12

    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 791
    :cond_115
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_130

    .line 795
    invoke-virtual {v1, v6, v4, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto :goto_132

    :cond_130
    const/16 v17, 0x1

    :goto_132
    const-string v2, "*"

    .line 798
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13f

    .line 799
    invoke-virtual {v1, v9, v4, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_140

    :cond_13f
    const/4 v2, 0x1

    :goto_140
    if-nez v17, :cond_15a

    if-eqz v2, :cond_15a

    .line 802
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "addDomainFilterRules() - Skipping invalid rule - signature mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Given signature does not match with the application."

    invoke-direct {v2, v3, v4, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v10, v12

    goto/16 :goto_90

    :cond_15a
    if-nez v15, :cond_162

    .line 810
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_16a

    :cond_162
    if-eqz v15, :cond_180

    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDnses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_180

    .line 811
    :cond_16a
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "addDomainFilterRules() - Skipping invalid rule - invalid DNS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Invalid DNS(s) provided"

    invoke-direct {v2, v3, v4, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v10, v12

    goto/16 :goto_90

    .line 818
    :cond_180
    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z

    move-result v17

    if-nez v17, :cond_19c

    .line 819
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "addDomainFilterRules() - Skipping invalid rule - invalid domain"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Invalid domain."

    invoke-direct {v2, v3, v4, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v10, v12

    goto/16 :goto_90

    :cond_19c
    move/from16 v17, v6

    .line 827
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v18, v9

    const-string v9, "adminUid"

    move/from16 v19, v7

    .line 828
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "packageName"

    .line 829
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "signature"

    .line 830
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "adminUid"

    .line 833
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "packageName"

    .line 834
    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DomainFilterTable"

    const/4 v9, 0x0

    .line 836
    invoke-virtual {v4, v7, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 837
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-eqz v4, :cond_1ee

    .line 838
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1ee

    const/4 v9, 0x0

    .line 839
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/ContentValues;

    .line 841
    :cond_1ee
    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    .line 842
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1fc

    .line 843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_200

    :cond_1fc
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v4

    .line 844
    :goto_200
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_20b

    .line 845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_20f

    :cond_20b
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v9

    .line 846
    :goto_20f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_224

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_21c

    goto :goto_224

    :cond_21c
    move/from16 v20, v5

    move-object/from16 v21, v11

    move-object/from16 v22, v13

    goto/16 :goto_2ba

    :cond_224
    :goto_224
    move/from16 v20, v5

    const-string v5, "blacklist"

    .line 849
    invoke-virtual {v1, v7, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v11

    const-string/jumbo v11, "whitelist"

    .line 850
    invoke-virtual {v1, v7, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 854
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 855
    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 859
    invoke-interface {v5, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v22

    if-eqz v22, :cond_24d

    .line 860
    invoke-interface {v11, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v22

    if-nez v22, :cond_24a

    goto :goto_24d

    :cond_24a
    const/16 v22, 0x0

    goto :goto_24f

    :cond_24d
    :goto_24d
    const/16 v22, 0x1

    :goto_24f
    if-nez v22, :cond_26a

    if-nez v15, :cond_26a

    .line 862
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "addDomainFilterRules() - Skipping rule - This rule is already in the database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "The specified rule is already in the database."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v10, v12

    move-object v3, v0

    goto/16 :goto_9b

    :cond_26a
    move-object/from16 v22, v13

    const/4 v0, 0x0

    .line 872
    :goto_26d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_285

    .line 873
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 874
    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_282

    .line 875
    invoke-interface {v11, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_282
    add-int/lit8 v0, v0, 0x1

    goto :goto_26d

    :cond_285
    const/4 v0, 0x0

    .line 880
    :goto_286
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_2a7

    .line 881
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 882
    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29b

    .line 883
    invoke-interface {v5, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 887
    :cond_29b
    invoke-interface {v4, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2a4

    .line 888
    invoke-interface {v4, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_286

    .line 894
    :cond_2a7
    invoke-virtual {v1, v4, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {v1, v9, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "blacklist"

    .line 901
    invoke-virtual {v6, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "whitelist"

    .line 902
    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2ba
    if-eqz v15, :cond_323

    if-eqz v2, :cond_30b

    .line 908
    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2dd

    .line 910
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - Skipping invalid rule - Invalid netID"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v4, "Error occurred applying DNS(s)"

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v10, v12

    move-object/from16 v3, p1

    goto/16 :goto_9b

    :cond_2dd
    const-string/jumbo v4, "networkId"

    .line 916
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_309

    const-string/jumbo v4, "networkId"

    .line 918
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_309

    .line 919
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_30d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v0, v5, :cond_30d

    .line 920
    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v9, 0x0

    invoke-static {v5, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 922
    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_30d

    :cond_309
    const/4 v7, -0x1

    goto :goto_30d

    :cond_30b
    const/4 v7, -0x1

    move v0, v7

    :cond_30d
    :goto_30d
    const-string v4, "dns1"

    .line 926
    invoke-virtual {v6, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dns2"

    .line 927
    invoke-virtual {v6, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "networkId"

    .line 928
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v4, v0

    goto :goto_325

    :cond_323
    const/4 v7, -0x1

    move v4, v7

    .line 931
    :goto_325
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterTable"

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_358

    .line 932
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - Failed to add rule in the database"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Failed to add/update rule in the database."

    invoke-direct {v0, v2, v3, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v10, v12

    if-eqz v15, :cond_355

    .line 938
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 939
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 938
    invoke-static {v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 940
    iget-object v2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_355
    move-object/from16 v3, p1

    goto :goto_384

    :cond_358
    if-eqz v2, :cond_36c

    .line 944
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v13, v22

    invoke-virtual {v1, v3, v13, v0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    goto :goto_36e

    :cond_36c
    move-object/from16 v3, p1

    .line 945
    :goto_36e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionListDelayed()V

    .line 946
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "The rule(s) was successfully added/updated."

    invoke-direct {v0, v2, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v10, v12

    .line 949
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterEnabled(Z)V

    :goto_384
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move-object v0, v3

    move v8, v7

    move/from16 v6, v17

    move-object/from16 v9, v18

    move/from16 v7, v19

    move/from16 v5, v20

    move-object/from16 v11, v21

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_6e

    :cond_398
    move-object v3, v0

    move/from16 v19, v7

    move-object/from16 v21, v11

    .line 952
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_SECURE_NETWORK"

    const-string v4, "addDomainFilterRules"

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 955
    iget v2, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v2, "rules"

    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 962
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_403

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_3db
    move/from16 v4, v19

    if-ge v2, v4, :cond_400

    .line 965
    aget-object v5, v10, v2

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f9

    move-object/from16 v5, p2

    .line 966
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3fb

    :cond_3f9
    move-object/from16 v5, p2

    :goto_3fb
    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v4

    goto :goto_3db

    .line 969
    :cond_400
    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_403
    .catchall {:try_start_62 .. :try_end_403} :catchall_422

    .line 971
    :cond_403
    monitor-exit p0

    return-object v10

    :catchall_405
    move-exception v0

    .line 754
    :try_start_406
    monitor-exit v7
    :try_end_407
    .catchall {:try_start_406 .. :try_end_407} :catchall_405

    :try_start_407
    throw v0

    .line 729
    :cond_408
    :goto_408
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - No rule specified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 731
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "No rule was specified."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3
    :try_end_420
    .catchall {:try_start_407 .. :try_end_420} :catchall_422

    .line 734
    monitor-exit p0

    return-object v0

    :catchall_422
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    monitor-enter p0

    .line 1719
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "addDomainRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_19

    .line 1720
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1724
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    monitor-exit p0

    return-object p1

    .line 1721
    :cond_19
    :goto_19
    :try_start_19
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "The domain filter on iptables api was successfully enabled."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addHostToCaptivePortalWhitelist(Ljava/lang/String;)V
    .registers 10

    .line 2572
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adminRemoved(I)V
    .registers 5

    .line 1559
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminRemoved() - adminUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1562
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1563
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1564
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1566
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V

    return-void
.end method

.method public final checkAdminInDatabase(I)I
    .registers 7

    .line 1538
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1539
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1541
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_24

    .line 1542
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1544
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_24

    return v4

    .line 1549
    :cond_24
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, -0x1

    return p0
.end method

.method public final clearReportForUser(I)V
    .registers 4

    .line 1897
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1898
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1899
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "DomainFilterReportTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method public final concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1466
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    .line 1467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p5, :cond_17

    .line 1470
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    if-eqz p5, :cond_8e

    add-int/2addr v3, p3

    add-int/2addr v3, v0

    const v4, 0x11170

    if-ge v3, v4, :cond_22

    goto :goto_8e

    :cond_22
    const-string v3, ";"

    .line 1478
    invoke-virtual {p5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    .line 1480
    :goto_2c
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_9a

    .line 1481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v6, p3, v0

    .line 1483
    :goto_39
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_7a

    .line 1484
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    if-ge v6, v4, :cond_7a

    .line 1486
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_5f

    .line 1487
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1489
    :cond_5f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 1497
    :cond_7a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1498
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    .line 1501
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2c

    .line 1473
    :cond_8e
    :goto_8e
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1474
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    :cond_9a
    return-void
.end method

.method public final connectNativeNetdService()V
    .registers 2

    .line 2631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetd()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_12

    .line 2633
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "connectNativeNetdService() - netd is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2636
    :cond_12
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    const/4 p0, 0x0

    :goto_18
    if-nez p0, :cond_21

    .line 2639
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "connectNativeNetdService() - Can\'t connect to NativeNetdService netd"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public final createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1623
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ";"

    .line 1625
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_18
    return-object p0
.end method

.method public final createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, ";"

    if-eqz p1, :cond_13

    .line 1615
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 1618
    :cond_b
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1619
    invoke-static {p0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1616
    :cond_13
    :goto_13
    invoke-static {p0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final delayTransaction(I)V
    .registers 3

    int-to-long p0, p1

    .line 1531
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    .line 1533
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "delayTransaction() - failed to delay transaction "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method public declared-synchronized enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 8

    monitor-enter p0

    .line 1631
    :try_start_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1632
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1635
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 1637
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "enableDomainFilterOnIptables() - Another admin already have domain filter rules in the database"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_122

    monitor-exit p0

    return-object p1

    :cond_22
    if-eqz p2, :cond_a5

    .line 1643
    :try_start_24
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->isDomainFilterOnIptablesSupported()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1644
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "DomainFilterOnIptablesApi not supported."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Failed to enable domain filter on iptables api."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_122

    monitor-exit p0

    return-object p1

    .line 1648
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabledAtAll()Z

    move-result v2

    .line 1649
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    .line 1650
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "userId"

    .line 1651
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "status"

    .line 1652
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1653
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {p2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p2, v0, v3

    if-nez p2, :cond_88

    .line 1654
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Failed to change DomainFilterOnIptables status on database."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_40 .. :try_end_86} :catchall_122

    monitor-exit p0

    return-object p1

    :cond_88
    if-nez v2, :cond_93

    .line 1659
    :try_start_8a
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->flushNetworkDnsCache()V

    .line 1660
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    :cond_93
    const/4 p2, 0x0

    .line 1662
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1

    .line 1664
    sget-object p2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "enableDomainFilterOnIptables() - DomainFilterOnIptables Api successfully enabled"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_122

    .line 1665
    monitor-exit p0

    return-object p1

    .line 1671
    :cond_a5
    :try_start_a5
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "adminUid"

    .line 1672
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "userId"

    .line 1673
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-nez p1, :cond_db

    .line 1675
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Failed to change DomainFilterOnIptables status on database."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_a5 .. :try_end_d9} :catchall_122

    monitor-exit p0

    return-object p1

    .line 1680
    :cond_db
    :try_start_db
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "enableDomainFilterOnIptables() - DomainFilterOnIptables successfully disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabledAtAll()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_ee

    .line 1682
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    .line 1684
    :cond_ee
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    move-result p1

    if-nez p1, :cond_10e

    .line 1685
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "flushDomainChains() - Failed to flush domain chains"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Failed to disable domain filter on iptables api."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_db .. :try_end_10c} :catchall_122

    monitor-exit p0

    return-object p1

    .line 1690
    :cond_10e
    :try_start_10e
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "flushDomainChains() - domain rules successfully removed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "The domain filter on iptables api was successfully disabled."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_10e .. :try_end_120} :catchall_122

    monitor-exit p0

    return-object p1

    :catchall_122
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 7

    .line 1738
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "enableDomainFilterReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1740
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1741
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1742
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1743
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1744
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "adminUid"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1746
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportStatus"

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p1

    if-nez p1, :cond_51

    .line 1748
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p1, "enableDomainFilterReport() - Failed to change Domain Filter Report status on database"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "Failed to change Domain Filter report status on database."

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    .line 1753
    :cond_51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_65

    .line 1754
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1755
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_65
    if-nez p2, :cond_7d

    .line 1756
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 1757
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1758
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1759
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    :cond_7d
    :goto_7d
    if-eqz p2, :cond_8d

    .line 1763
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 1764
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p1, "enableDomainFilterReport() - Domain Filter Report successfully enabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_8d
    if-nez p2, :cond_9c

    .line 1765
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    move-result p0

    if-eqz p0, :cond_9c

    .line 1766
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p1, "enableDomainFilterReport() - Domain Filter Report successfully disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_9c
    :goto_9c
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    if-eqz p2, :cond_a7

    const-string p2, "Domain Report successfully enabled."

    goto :goto_a9

    :cond_a7
    const-string p2, "Domain Report successfully disabled."

    .line 1770
    :goto_a9
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public final declared-synchronized executeDomainFilterCommands(ILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    .line 1508
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_4f

    const/4 v0, 0x1

    :goto_b
    const/4 v1, 0x3

    if-gt v0, v1, :cond_46

    .line 1511
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v2, :cond_43

    .line 1514
    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 1516
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->delayTransaction(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_1e} :catch_20
    .catchall {:try_start_e .. :try_end_1e} :catchall_4f

    .line 1517
    monitor-exit p0

    return-void

    .line 1520
    :catch_20
    :try_start_20
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeDomainFilterCommands() - attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1f4

    .line 1522
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->delayTransaction(I)V

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1526
    :cond_46
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "executeDomainFilterCommands() - Transaction failed. "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_20 .. :try_end_4d} :catchall_4f

    .line 1527
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final exemptCaptivePortalHostname(Landroid/net/Network;)V
    .registers 4

    .line 395
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$6;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final extractHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_26

    .line 2581
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_20

    .line 2583
    :catch_9
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractHost() - Invalid url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    :goto_20
    if-eqz v0, :cond_26

    .line 2587
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    :cond_26
    return-object p0
.end method

.method public final flushNetworkDnsCache()V
    .registers 3

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1448
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "flushNetworkDnsCache() - failed to retrieve ConnectivityService instance"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1453
    :cond_e
    :try_start_e
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1455
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 1460
    :catch_1f
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "flushNetworkDnsCache() - Failed to getActiveNetwork"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public final getApplicationUid(Ljava/lang/String;I)I
    .registers 6

    .line 554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 557
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p0

    const/16 v2, 0x80

    .line 558
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 562
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22

    :catchall_14
    move-exception p0

    goto :goto_2e

    :catch_16
    move-exception p0

    .line 560
    :try_start_17
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p2, "getApplicationUid() - exception getting package info "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_14

    .line 562
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_22
    if-eqz p0, :cond_2c

    .line 565
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_29

    goto :goto_2c

    .line 567
    :cond_29
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, -0x1

    return p0

    .line 562
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    throw p0
.end method

.method public final getCaptivePortalCheckUrl()Ljava/net/URL;
    .registers 1

    const-string/jumbo p0, "http://connectivitycheck.gstatic.com/generate_204"

    .line 444
    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public final getCaptivePortalUid()Ljava/lang/String;
    .registers 3

    const-string v0, "com.google.android.captiveportallogin"

    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .registers 2

    .line 360
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public final getConnectivityService()Landroid/net/ConnectivityManager;
    .registers 2

    .line 2265
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 2266
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    .line 2268
    :cond_10
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getDefaulCaptivePortalURL()Ljava/lang/String;
    .registers 3

    .line 2618
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2619
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "captive_portal_server"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, "connectivitycheck.gstatic.com"

    .line 2623
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/generate_204"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .line 1844
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "getDomainFilterReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_7e

    .line 1851
    :cond_27
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1852
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1853
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 p1, 0x0

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 1855
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_43
    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    const-string/jumbo v1, "packageName"

    .line 1856
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_5e

    .line 1857
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_5e
    const-string/jumbo v2, "time"

    .line 1858
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1859
    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;

    if-eqz v2, :cond_6e

    .line 1860
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_70

    :cond_6e
    const-wide/16 v4, 0x0

    :goto_70
    const-string/jumbo v2, "url"

    .line 1861
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, v4, v5, p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 1859
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_7e
    :goto_7e
    return-object v0
.end method

.method public getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1220
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "getDomainFilterRules()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v3, p1

    .line 1223
    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v3, p0

    .line 1229
    iget-object v3, v3, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const/4 v5, 0x0

    .line 1230
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1231
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "packageName"

    .line 1232
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "signature"

    .line 1233
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_51

    .line 1234
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    :cond_51
    const-string v7, "blacklist"

    .line 1235
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "whitelist"

    .line 1236
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1237
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ";"

    if-nez v9, :cond_6f

    .line 1238
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_74

    .line 1240
    :cond_6f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_74
    move-object v13, v7

    .line 1242
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 1243
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_89

    .line 1245
    :cond_84
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_89
    move-object v14, v7

    const-string v7, "dns1"

    .line 1247
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "dns2"

    .line 1248
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1249
    new-instance v12, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v12, v5, v6}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1255
    :cond_a5
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    return-object v1
.end method

.method public final getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 546
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 547
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method public final getNetworkIdInfoIndex(I)I
    .registers 6

    .line 2241
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 2243
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    .line 2244
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 2245
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v3

    if-ne p1, v3, :cond_26

    .line 2246
    monitor-exit v0

    return v2

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2248
    :cond_29
    monitor-exit v0

    return v1

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 2

    .line 2254
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "network_management"

    .line 2255
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2257
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 2260
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 2

    .line 1435
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    return-object v0

    .line 1437
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    .line 1439
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_1c

    .line 1440
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 1443
    :cond_1c
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method public final getPackageFromRunningProcesses(II)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-gez p1, :cond_1b

    .line 2458
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPackageFromRunningProcesses() - Invalid PID provided: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1b
    if-gez p2, :cond_35

    .line 2463
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPackageFromRunningProcesses() - Invalid UID provided: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2469
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2471
    :try_start_39
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    .line 2472
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-eqz v3, :cond_4a

    .line 2474
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_c1

    goto :goto_4b

    :cond_4a
    move-object v3, v0

    .line 2477
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_c0

    .line 2481
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2482
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p1, v3, :cond_54

    .line 2483
    iget-object p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez p1, :cond_69

    goto :goto_c0

    .line 2487
    :cond_69
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_71

    .line 2488
    aget-object p0, p1, v3

    return-object p0

    .line 2493
    :cond_71
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 2495
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 2494
    invoke-static {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "#SelectClause#"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "packageName"

    .line 2497
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    .line 2498
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    .line 2499
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_bb

    .line 2500
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_bb

    .line 2501
    iget-object p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2502
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2503
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2504
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    return-object v0

    .line 2510
    :cond_bb
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0

    :cond_c0
    :goto_c0
    return-object v0

    :catchall_c1
    move-exception p0

    .line 2477
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2478
    throw p0
.end method

.method public final hasAnyRuleInDatabase()Z
    .registers 3

    .line 2561
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DomainFilterTable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 2563
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_1c

    .line 2567
    :cond_12
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "hasAnyRuleInDatabase(): true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 2564
    :cond_1c
    :goto_1c
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "hasAnyRuleInDatabase(): false"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final initDaemonCache()V
    .registers 18

    move-object/from16 v7, p0

    .line 1313
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterTable"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 1316
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto/16 :goto_f9

    .line 1321
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_21
    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "blacklist"

    .line 1322
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "whitelist"

    .line 1323
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "dns1"

    .line 1324
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1326
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_52
    const-string v2, "adminUid"

    .line 1327
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, -0x1

    if-eqz v3, :cond_60

    .line 1328
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_61

    :cond_60
    move v3, v6

    .line 1329
    :goto_61
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string/jumbo v12, "packageName"

    .line 1331
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "*"

    .line 1332
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 1333
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a2

    .line 1335
    :cond_79
    invoke-virtual {v7, v13, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v14

    if-eq v14, v6, :cond_a1

    const-string/jumbo v15, "signature"

    .line 1337
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1338
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9c

    .line 1339
    invoke-virtual {v7, v11, v13, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_93

    goto :goto_9c

    .line 1342
    :cond_93
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache() - app signature mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1340
    :cond_9c
    :goto_9c
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a2

    :cond_a1
    move-object v11, v9

    :goto_a2
    if-eqz v11, :cond_21

    if-eqz v1, :cond_d1

    const-string v14, "dns2"

    .line 1350
    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1351
    invoke-virtual {v7, v1, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_d0

    .line 1353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v14, "networkId"

    invoke-virtual {v0, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1354
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1356
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v2, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v8, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    :cond_d0
    move v6, v1

    .line 1361
    :cond_d1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDomainFilterReportListener()V

    .line 1362
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x0

    .line 1363
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v2, v11

    .line 1362
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1367
    :cond_e7
    iget-object v0, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterEnabled(Z)V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabledAtAll()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1369
    iget-object v0, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    :cond_f8
    return-void

    .line 1317
    :cond_f9
    :goto_f9
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache() - No rules found in db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initDomainFilterReportListener()V
    .registers 5

    .line 1774
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_3e

    .line 1776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1778
    :try_start_11
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1780
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1781
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1782
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_39

    if-eqz v3, :cond_1b

    .line 1788
    :cond_35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1789
    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final initReportCache()V
    .registers 5

    .line 1374
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initReportCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 1376
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 1377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportStatus"

    const/4 v3, 0x0

    .line 1379
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 1380
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_5a

    .line 1384
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v2, "userId"

    .line 1386
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 1387
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_50

    :cond_4f
    const/4 v1, -0x1

    .line 1388
    :goto_50
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final initUserIdMap()V
    .registers 12

    .line 461
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initUserIdMap() - Initializing UserID Mapping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_93

    .line 466
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_93

    const/4 v2, 0x0

    .line 469
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 470
    :try_start_25
    iget-boolean v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    const/4 v5, 0x1

    if-nez v4, :cond_33

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 472
    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    move v2, v5

    .line 474
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_90

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 477
    :try_start_3c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 478
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v7, 0x40

    .line 479
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    .line 480
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v7

    .line 481
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 482
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 483
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 485
    :cond_77
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    .line 488
    :cond_86
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_3c .. :try_end_87} :catchall_8d

    if-eqz v2, :cond_93

    .line 490
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    goto :goto_93

    :catchall_8d
    move-exception p0

    .line 488
    :try_start_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :catchall_90
    move-exception p0

    .line 474
    :try_start_91
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p0

    :cond_93
    :goto_93
    return-void
.end method

.method public isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1697
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1698
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1699
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1700
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "adminUid"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1702
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "DomainFilterOnIptablesApiStatus"

    const-string/jumbo v0, "status"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 1705
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_39

    .line 1708
    :cond_32
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_39
    :goto_39
    const/4 p0, 0x0

    return p0
.end method

.method public final isDomainFilterOnIptablesEnabledAtAll()Z
    .registers 5

    .line 1712
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 1713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method public isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1827
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public final isDomainFilterReportEnabledAsUser(I)Z
    .registers 4

    .line 1831
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "DomainFilterReportStatus"

    const-string/jumbo v1, "status"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 1836
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_2a

    .line 1839
    :cond_23
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public isInitDaemonCacheThreadAlive()Z
    .registers 1

    .line 2645
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInitDaemonCacheThread:Ljava/lang/Thread;

    if-eqz p0, :cond_9

    .line 2646
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isIpAddress(Ljava/lang/String;)Z
    .registers 2

    .line 2595
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 2100
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 2103
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2104
    :try_start_d
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 2105
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz p2, :cond_31

    .line 2106
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_31
    if-nez p2, :cond_3a

    .line 2107
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_13

    :cond_3a
    if-eqz p2, :cond_46

    .line 2109
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2110
    :cond_46
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->increaseCounter()I

    .line 2112
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result p0

    monitor-exit v0

    return p0

    .line 2116
    :cond_4f
    monitor-exit v0

    return v1

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final maybeClearCaptivePortalHosts()V
    .registers 16

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2605
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 11

    .line 1570
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval(adminUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_55

    .line 1575
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 1578
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 1579
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    :cond_55
    return-void
.end method

.method public final onUserAdded(Landroid/content/Intent;)V
    .registers 8

    .line 499
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 500
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_90

    .line 502
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserAdded() - userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_73

    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    .line 509
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 510
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 511
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 511
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 514
    :cond_69
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 516
    :cond_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_2c .. :try_end_74} :catchall_8d

    .line 517
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_77
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-nez v1, :cond_7d

    .line 519
    monitor-exit p1

    return-void

    .line 520
    :cond_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_8a

    if-eqz v0, :cond_90

    .line 521
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_90

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    goto :goto_90

    :catchall_8a
    move-exception p0

    .line 520
    :try_start_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0

    :catchall_8d
    move-exception p0

    .line 516
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :cond_90
    :goto_90
    return-void
.end method

.method public final onUserRemoved(Landroid/content/Intent;)V
    .registers 10

    .line 530
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 531
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_58

    .line 533
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved() - userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_55

    .line 538
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 539
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :catchall_55
    move-exception p0

    .line 537
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0

    :cond_58
    :goto_58
    return-void
.end method

.method public final packageAdded(Landroid/content/Intent;)V
    .registers 14

    .line 575
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    .line 576
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_11d

    if-nez v0, :cond_15

    goto/16 :goto_11d

    .line 582
    :cond_15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v1

    .line 583
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageAdded() - packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_43

    .line 585
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "packageAdded() - Failed to retrieve app info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 589
    :cond_43
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 590
    :try_start_46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 591
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_64

    .line 592
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 593
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 596
    :cond_64
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :goto_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_46 .. :try_end_74} :catchall_11a

    .line 600
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    .line 601
    invoke-static {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#SelectClause#"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "packageName"

    .line 603
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DomainFilterTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_119

    .line 606
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_119

    .line 607
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "signature"

    .line 608
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 609
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bd

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    goto :goto_bd

    .line 629
    :cond_b4
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "packageAdded() - Installed app\'s signature mismatched the one provided by admin."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    :cond_bd
    :goto_bd
    const-string p1, "blacklist"

    .line 610
    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo p1, "whitelist"

    .line 611
    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p1, "dns1"

    .line 612
    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 617
    :cond_e2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    const-string v0, "dns2"

    .line 618
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_105

    const-string/jumbo v0, "networkId"

    .line 621
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    :cond_105
    move v2, p1

    .line 625
    :cond_106
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 626
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, p0

    .line 625
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    :goto_119
    return-void

    :catchall_11a
    move-exception p0

    .line 598
    :try_start_11b
    monitor-exit v3
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw p0

    .line 578
    :cond_11d
    :goto_11d
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "packageAdded() - Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final packageRemoved(Landroid/content/Intent;)V
    .registers 13

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 639
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 640
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 641
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageRemoved() - packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_d5

    if-eqz p1, :cond_d5

    const/4 v2, 0x0

    .line 644
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 645
    :try_start_36
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_57

    .line 646
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 648
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    move-object v6, v2

    .line 651
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_d2

    if-eqz v6, :cond_d5

    .line 654
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 655
    invoke-static {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "#SelectClause#"

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    .line 658
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DomainFilterTable"

    const-string/jumbo v4, "networkId"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d1

    .line 664
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    goto :goto_d1

    .line 668
    :cond_88
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    const-string/jumbo v0, "networkId"

    .line 669
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 670
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9d

    :cond_9c
    move v0, v1

    :goto_9d
    if-eq v0, v1, :cond_bf

    .line 673
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 674
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v3, "networkId"

    .line 676
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 679
    :cond_bf
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 680
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    .line 679
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    :cond_d1
    :goto_d1
    return-void

    :catchall_d2
    move-exception p0

    .line 651
    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0

    :cond_d5
    :goto_d5
    return-void
.end method

.method public final packageReplaced(Landroid/content/Intent;)V
    .registers 13

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 690
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 691
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eq v0, v1, :cond_a6

    if-nez v2, :cond_15

    goto/16 :goto_a6

    .line 699
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 700
    :try_start_18
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 701
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_a3

    if-eqz v4, :cond_9f

    .line 702
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_9f

    .line 708
    :cond_2e
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 709
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v3

    .line 710
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageReplaced() - packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " oldUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newUid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v1, :cond_6d

    .line 712
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p1, "ackageReplaced() - Failed to retrieve app info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 715
    :cond_6d
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_70
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_70 .. :try_end_84} :catchall_9c

    if-eq p1, v3, :cond_9b

    .line 719
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    return-void

    :catchall_9c
    move-exception p0

    .line 717
    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p0

    .line 704
    :cond_9f
    :goto_9f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void

    :catchall_a3
    move-exception p0

    .line 701
    :try_start_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p0

    .line 693
    :cond_a6
    :goto_a6
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "packageReplaced() - Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V
    .registers 6

    .line 1589
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_37

    .line 1590
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    move v2, v1

    .line 1591
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 1592
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 1593
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 1595
    :cond_2e
    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1598
    :cond_34
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 1601
    :cond_37
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6a

    .line 1602
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1603
    :goto_43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 1604
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 1605
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 1607
    :cond_61
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1610
    :cond_67
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    :cond_6a
    return-void
.end method

.method public final declared-synchronized processPackageExceptionList(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2554
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptFromPackages(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 2555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2556
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    goto :goto_b

    .line 2558
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final processPackageExceptionListDelayed()V
    .registers 7

    .line 2522
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processPackageExceptionListDelayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2524
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-eqz v1, :cond_11

    .line 2525
    monitor-exit v0

    return-void

    :cond_11
    const/4 v1, 0x1

    .line 2526
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 2527
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_58

    .line 2528
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_57

    .line 2530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2532
    :try_start_26
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2534
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2535
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2536
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 2537
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_52

    goto :goto_30

    .line 2541
    :cond_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_57

    :catchall_52
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2542
    throw p0

    :cond_57
    :goto_57
    return-void

    :catchall_58
    move-exception p0

    .line 2527
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public final registerCaptiveNetworkCallback()V
    .registers 3

    .line 385
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 387
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final registerDomainFilterListener(Z)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    .line 1795
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    if-nez p1, :cond_6c

    .line 1797
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz p1, :cond_6c

    .line 1799
    new-instance p1, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    invoke-direct {p1, p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener-IA;)V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    .line 1800
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 1801
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p1, "DomainFilterEventListener registered successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_23} :catch_24

    return v0

    :catch_24
    move-exception p0

    .line 1805
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register domainFilterEventListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 1809
    :cond_3c
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    if-eqz p1, :cond_6c

    .line 1811
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz p1, :cond_6c

    .line 1813
    invoke-interface {p1}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    .line 1814
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    .line 1815
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string p1, "DomainFilterEventListener unregistered successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_54} :catch_55
    .catch Landroid/os/ServiceSpecificException; {:try_start_40 .. :try_end_54} :catch_55

    return v0

    :catch_55
    move-exception p0

    .line 1819
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unregister domainFilterEventListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    return p0
.end method

.method public final releaseNetworkId(I)V
    .registers 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_83

    .line 2128
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_83

    .line 2132
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkIdInfoIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_1c

    .line 2134
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "releaseNetworkId() - No network to release"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2138
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 2139
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "releaseNetworkId() - failed to retrieve NetworkManagementService instance"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2143
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 2144
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "releaseNetworkId() - failed to retrieve ConnectivityService instance"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2148
    :cond_3a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2149
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->decreaseCounter()I

    move-result v2

    if-nez v2, :cond_7e

    .line 2151
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_80

    .line 2154
    :try_start_54
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v3, :cond_5b

    .line 2155
    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_66
    .catchall {:try_start_54 .. :try_end_5b} :catchall_64

    .line 2159
    :cond_5b
    :try_start_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2160
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    :goto_60
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_80

    goto :goto_7e

    :catchall_64
    move-exception v3

    goto :goto_75

    :catch_66
    move-exception v3

    .line 2157
    :try_start_67
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "releaseNetworkId() - failed to remove network"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_64

    .line 2159
    :try_start_6f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2160
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    goto :goto_60

    .line 2159
    :goto_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2160
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V

    .line 2161
    throw v3

    .line 2163
    :cond_7e
    :goto_7e
    monitor-exit v0

    return-void

    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_6f .. :try_end_82} :catchall_80

    throw p0

    .line 2129
    :cond_83
    :goto_83
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "releaseNetworkId() - No network to release"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final releaseNetworks(I)V
    .registers 6

    .line 2168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "networkId"

    .line 2170
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    .line 2171
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_57

    .line 2178
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2179
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_42

    .line 2180
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    if-eq v1, v2, :cond_2a

    .line 2182
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2183
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a

    :cond_56
    return-void

    .line 2174
    :cond_57
    :goto_57
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "releaseNetworks() - No rules in database"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 8

    monitor-enter p0

    .line 1965
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDnsForApplication() - START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dns1"

    .line 1966
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns2"

    .line 1967
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1968
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v2

    .line 1969
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_a9

    .line 1971
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    if-nez v3, :cond_29

    if-nez v1, :cond_a9

    :cond_29
    if-eqz v3, :cond_2d

    if-eqz v1, :cond_a9

    :cond_2d
    if-eqz v3, :cond_36

    .line 1972
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_a9

    :cond_36
    const-string/jumbo v0, "networkId"

    .line 1979
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_56

    .line 1980
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_56

    .line 1981
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1982
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1983
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1985
    :cond_56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dns1"

    const/4 v2, 0x0

    .line 1986
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dns2"

    .line 1987
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "networkId"

    .line 1988
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1990
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1991
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "adminUid"

    .line 1992
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "packageName"

    .line 1993
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "DomainFilterTable"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 1995
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeDnsForApplication() -  Database error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "Failed to remove DNS(s) from database."

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_be

    monitor-exit p0

    return-object p1

    .line 2000
    :cond_a7
    monitor-exit p0

    return-object v2

    .line 1973
    :cond_a9
    :goto_a9
    :try_start_a9
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeDnsForApplication() - Invalid parameters!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "DNS(s) provided doesn\'t match DNS(s) in database."

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_a9 .. :try_end_bc} :catchall_be

    monitor-exit p0

    return-object p1

    :catchall_be
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 976
    :try_start_7
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDomainFilterRules() - rules.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1f

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_21

    :cond_1f
    const-string v5, "0"

    :goto_21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4e

    .line 980
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 981
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeDomainFilterRules() - No rule specified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 983
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "No rule was specified."

    invoke-direct {v2, v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v0, v4
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_3b5

    .line 986
    monitor-exit p0

    return-object v0

    .line 989
    :cond_4e
    :try_start_4e
    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 990
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 992
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v7

    if-nez v7, :cond_73

    .line 994
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeDomainFilterRules() - Database is already empty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 996
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rules are already cleared."

    invoke-direct {v2, v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v0, v4

    goto/16 :goto_39b

    :cond_73
    const/4 v8, -0x1

    if-ne v7, v8, :cond_8f

    .line 1000
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeDomainFilterRules() - Another admin is handling domain filter rules in the database"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 1002
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v2, v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v0, v4

    goto/16 :goto_39b

    .line 1005
    :cond_8f
    sget-object v7, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    const/4 v9, 0x0

    if-ne v2, v7, :cond_10f

    new-array v2, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 1008
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 1009
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "adminUid"

    .line 1010
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1011
    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-gtz v3, :cond_c7

    .line 1013
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDomainFilterRules() - Failed to clear rules from the database"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to clear rules from database."

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v2, v4

    goto :goto_103

    .line 1018
    :cond_c7
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rules successfully cleared. Admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v8, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v2, v4

    .line 1022
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1023
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 1024
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "flushDomainChains() - Failed to flush domain chains"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_fc
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "flushDomainChains() - domain rules successfully removed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_103
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, v9, v3, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_39b

    .line 1032
    :cond_10f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 1035
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v4

    .line 1036
    :goto_11b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_36f

    .line 1037
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 1038
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v13

    aput-object v13, v7, v11

    if-eqz v13, :cond_155

    .line 1040
    sget-object v12, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeDomainFilterRules() - Skipping invalid rule - invalid Application Identity"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v11

    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_150
    move/from16 v17, v5

    move v4, v8

    goto/16 :goto_365

    .line 1043
    :cond_155
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1045
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "adminUid"

    .line 1046
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "packageName"

    .line 1047
    invoke-virtual {v14, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "DomainFilterTable"

    invoke-virtual {v3, v13, v9, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_34d

    .line 1051
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_183

    goto/16 :goto_34d

    .line 1060
    :cond_183
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v13, "signature"

    .line 1061
    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1062
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19c

    if-eqz v13, :cond_1aa

    :cond_19c
    if-nez v15, :cond_1a0

    if-nez v13, :cond_1aa

    :cond_1a0
    if-eqz v15, :cond_1c0

    if-eqz v13, :cond_1c0

    .line 1066
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c0

    .line 1067
    :cond_1aa
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "removeDomainFilterRules() - Skipping invalid rule - signature mismatch"

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v14, "Signature does not match with the previous added."

    invoke-direct {v3, v12, v13, v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    goto :goto_150

    .line 1075
    :cond_1c0
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1de

    .line 1076
    invoke-virtual {v1, v12, v5, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v13

    aput-object v13, v7, v11

    if-eqz v13, :cond_1dc

    .line 1079
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "removeDomainFilterRules() - Skipping rule - Failed to remove DNS"

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_150

    :cond_1dc
    const/4 v13, 0x1

    goto :goto_1df

    :cond_1de
    move v13, v4

    :goto_1df
    const-string v15, "blacklist"

    .line 1087
    invoke-virtual {v1, v3, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v9, "whitelist"

    .line 1088
    invoke-virtual {v1, v3, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1092
    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    .line 1093
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v8

    .line 1094
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v4

    if-eqz v8, :cond_208

    move/from16 v17, v5

    .line 1102
    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 1103
    invoke-interface {v5, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v18

    const/16 v16, 0x0

    or-int/lit8 v18, v18, 0x0

    goto :goto_221

    :cond_208
    move/from16 v17, v5

    .line 1108
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-eqz v4, :cond_21b

    move-object/from16 v18, v5

    .line 1111
    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_21d

    :cond_21b
    move-object/from16 v18, v5

    :goto_21d
    move-object/from16 v5, v18

    const/16 v18, 0x1

    :goto_221
    if-eqz v4, :cond_22e

    .line 1118
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 1119
    invoke-interface {v8, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    or-int v4, v18, v4

    goto :goto_241

    .line 1125
    :cond_22e
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    or-int/lit8 v18, v18, 0x1

    if-eqz v8, :cond_23e

    .line 1128
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_23e
    move-object v8, v4

    move/from16 v4, v18

    :goto_241
    if-nez v4, :cond_25d

    if-nez v13, :cond_25d

    .line 1134
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDomainFilterRules() - Skipping rule - Rule is not in the database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "The rule is not in the database."

    invoke-direct {v3, v4, v5, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    :goto_25a
    const/4 v4, -0x1

    goto/16 :goto_365

    :cond_25d
    if-eqz v4, :cond_26b

    const-string v4, ";"

    .line 1141
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    const-string v4, ";"

    .line 1142
    invoke-static {v4, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    :cond_26b
    const-string v4, "dns1"

    .line 1145
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_275

    const/4 v4, 0x1

    goto :goto_276

    :cond_275
    const/4 v4, 0x0

    :goto_276
    const-string v5, ""

    .line 1147
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e9

    const-string v5, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e9

    if-nez v13, :cond_28a

    if-nez v4, :cond_2e9

    .line 1149
    :cond_28a
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterTable"

    invoke-virtual {v4, v5, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-gtz v4, :cond_2aa

    .line 1151
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Failed to remove/update rule from the database."

    invoke-direct {v3, v4, v5, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    goto :goto_25a

    :cond_2aa
    const-string/jumbo v4, "networkId"

    .line 1156
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2d2

    .line 1158
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 1159
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-virtual {v1, v0, v12, v4, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 1160
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "The rule was successfuly removed/updated."

    invoke-direct {v3, v4, v5, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    goto :goto_25a

    .line 1164
    :cond_2d2
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Failed to remove/update rule from the database."

    invoke-direct {v3, v4, v5, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    goto/16 :goto_25a

    .line 1172
    :cond_2e9
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "blacklist"

    .line 1173
    invoke-virtual {v4, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "whitelist"

    .line 1174
    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterTable"

    invoke-virtual {v5, v8, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_31a

    .line 1177
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Failed to remove/update rule from the database."

    invoke-direct {v3, v4, v5, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    goto/16 :goto_25a

    :cond_31a
    if-eqz v13, :cond_324

    const-string/jumbo v4, "networkId"

    .line 1184
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_325

    :cond_324
    const/4 v3, 0x0

    :goto_325
    if-nez v3, :cond_32d

    const/4 v4, -0x1

    .line 1186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_32e

    :cond_32d
    const/4 v4, -0x1

    .line 1187
    :goto_32e
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 1188
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1187
    invoke-virtual {v1, v0, v12, v5, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 1189
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v9, "The rule was successfuly removed/updated."

    invoke-direct {v3, v5, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    goto :goto_365

    :cond_34d
    :goto_34d
    move/from16 v17, v5

    move v4, v8

    .line 1052
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDomainFilterRules() - Skipping rule - This rule is not in the database"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v9, "The rule is not in the database."

    invoke-direct {v3, v5, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v7, v11

    :goto_365
    add-int/lit8 v11, v11, 0x1

    move v8, v4

    move/from16 v5, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_11b

    .line 1195
    :cond_36f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_39a

    .line 1196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_37b
    if-ge v4, v6, :cond_397

    .line 1198
    aget-object v5, v7, v4

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_394

    .line 1199
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_394
    add-int/lit8 v4, v4, 0x1

    goto :goto_37b

    .line 1202
    :cond_397
    invoke-virtual {v1, v0, v3, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    :cond_39a
    move-object v0, v7

    .line 1207
    :goto_39b
    iget-object v2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_39e
    .catchall {:try_start_4e .. :try_end_39e} :catchall_3b5

    .line 1208
    :try_start_39e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v3

    if-nez v3, :cond_3ac

    const/4 v3, 0x0

    .line 1211
    iput-boolean v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 1212
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterEnabled(Z)V

    .line 1214
    :cond_3ac
    monitor-exit v2
    :try_end_3ad
    .catchall {:try_start_39e .. :try_end_3ad} :catchall_3b2

    .line 1215
    :try_start_3ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V
    :try_end_3b0
    .catchall {:try_start_3ad .. :try_end_3b0} :catchall_3b5

    .line 1216
    monitor-exit p0

    return-object v0

    :catchall_3b2
    move-exception v0

    .line 1214
    :try_start_3b3
    monitor-exit v2
    :try_end_3b4
    .catchall {:try_start_3b3 .. :try_end_3b4} :catchall_3b2

    :try_start_3b4
    throw v0
    :try_end_3b5
    .catchall {:try_start_3b4 .. :try_end_3b5} :catchall_3b5

    :catchall_3b5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    monitor-enter p0

    .line 1729
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDomainRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1a

    .line 1730
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 1734
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->removeDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_27

    monitor-exit p0

    return-object p1

    .line 1731
    :cond_1a
    :goto_1a
    :try_start_1a
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "The domain filter on iptables api was successfully disabled."

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, -0x1

    .line 1875
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception p2

    .line 1877
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveReportInDatabase() - Error parsing userId received from daemon."

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p2, v0

    :goto_14
    if-eq p2, v0, :cond_59

    .line 1879
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1881
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "time"

    .line 1882
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "userId"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "packageName"

    .line 1884
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    .line 1885
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "DomainFilterReportTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_59

    .line 1887
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "saveReportInDatabase() - Failed to save domain report in database"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method public final sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1394
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1397
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_a1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_a1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_a1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_33

    goto/16 :goto_a1

    .line 1407
    :cond_33
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length p2, p2

    .line 1408
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1409
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    array-length p3, p3

    add-int/2addr p2, p3

    .line 1411
    :cond_48
    sget-object p3, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_58

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_a0

    .line 1413
    :cond_58
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v4, "BLACKLIST"

    move-object v0, p0

    move v1, p1

    move-object v2, v6

    move v3, p2

    move-object v5, p4

    .line 1414
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_68
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_78

    const-string v4, "WHITELIST"

    move-object v0, p0

    move v1, p1

    move-object v2, v6

    move v3, p2

    move-object v5, p5

    .line 1420
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_78
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a0

    const-string p2, "-1"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a0

    .line 1426
    invoke-virtual {v6, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p2, p1, :cond_92

    const-string p1, "ADD"

    goto :goto_94

    :cond_92
    const-string p1, "REMOVE"

    .line 1428
    :goto_94
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    :cond_a0
    return-void

    .line 1403
    :cond_a1
    :goto_a1
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    return-void
.end method

.method public final setDomainFilterRulesProperties(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lorg/json/JSONArray;)V
    .registers 7

    .line 2651
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 2653
    :cond_7
    :try_start_7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "pN"

    .line 2654
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2655
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    move v0, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v0, v2

    :goto_2c
    const-string v3, "cDNS"

    .line 2656
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2659
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2660
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_47

    const/4 p1, 0x2

    goto :goto_53

    .line 2663
    :cond_47
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_52

    move v1, v2

    :cond_52
    move p1, v1

    :goto_53
    const-string/jumbo v0, "rlTp"

    .line 2667
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2668
    invoke-virtual {p2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_5c} :catch_5d

    goto :goto_78

    :catch_5d
    move-exception p0

    .line 2670
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to put rule in json: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    return-void
.end method

.method public final setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    .line 2012
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    .line 2018
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_17

    .line 2019
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setupNetworkDns() - failed to retrieve NetworkManagementService instance"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2023
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_26

    .line 2024
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setupNetworkDns() - failed to retrieve ConnectivityService instance"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_26
    const/4 v2, 0x1

    move v3, v2

    .line 2034
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 2036
    :try_start_2d
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {v7}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->reserveNetId()I

    move-result v0

    .line 2037
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    .line 2039
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_38} :catch_102
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_c2
    .catchall {:try_start_2d .. :try_end_38} :catchall_c0

    if-nez v7, :cond_3e

    .line 2090
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2043
    :cond_3e
    :try_start_3e
    invoke-interface {v7, v0, v6}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 2044
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    invoke-interface {v7, v0}, Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;->createNetworkCache(I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_9c
    .catch Landroid/os/ServiceSpecificException; {:try_start_3e .. :try_end_46} :catch_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_46} :catch_102
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_c2
    .catchall {:try_start_3e .. :try_end_46} :catchall_c0

    .line 2052
    :try_start_46
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 2053
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 2054
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 2055
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 2058
    :cond_5f
    new-instance v8, Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    invoke-direct {v8, v9, v10}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;)V

    iput-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 2059
    invoke-virtual {v8, v0, v7}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->noteDnsServersForNetwork(ILandroid/net/LinkProperties;)V

    .line 2060
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    invoke-virtual {v7, v0, v2}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->updateDnsUidForNetwork(IZ)V

    const/4 v7, 0x3

    new-array v8, v7, [I

    aput v6, v8, v6

    aput v2, v8, v2

    const/4 v9, 0x2

    aput v7, v8, v9

    .line 2062
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->updateTransportsForNetwork(I[I)V

    .line 2063
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    invoke-virtual {v7}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->flushVmDnsCache()V

    .line 2065
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_89
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_89} :catch_102
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_89} :catch_99
    .catchall {:try_start_46 .. :try_end_89} :catchall_c0

    .line 2066
    :try_start_89
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    new-instance v9, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-direct {v9, v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    monitor-exit v7

    goto/16 :goto_10b

    :catchall_96
    move-exception v8

    monitor-exit v7
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_96

    :try_start_98
    throw v8
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_99} :catch_102
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_99} :catch_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_c0

    :catch_99
    move-exception v6

    move v7, v2

    goto :goto_c6

    :catch_9c
    move-exception v7

    .line 2046
    :try_start_9d
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating private network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_bc
    .catch Ljava/lang/IllegalStateException; {:try_start_9d .. :try_end_bc} :catch_102
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bc} :catch_c2
    .catchall {:try_start_9d .. :try_end_bc} :catchall_c0

    .line 2090
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_c0
    move-exception p0

    goto :goto_112

    :catch_c2
    move-exception v7

    move-object v11, v7

    move v7, v6

    move-object v6, v11

    :goto_c6
    if-eqz v7, :cond_f1

    .line 2078
    :try_start_c8
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupNetworkDns() - Failed to set dns for network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_df
    .catchall {:try_start_c8 .. :try_end_df} :catchall_c0

    .line 2080
    :try_start_df
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v6, :cond_f9

    .line 2081
    invoke-interface {v6, v0}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e6} :catch_e7
    .catchall {:try_start_df .. :try_end_e6} :catchall_c0

    goto :goto_f9

    :catch_e7
    move-exception v6

    .line 2083
    :try_start_e8
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed to remove network"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f9

    .line 2086
    :cond_f1
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed to create new network with id provided."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2088
    :cond_f9
    :goto_f9
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_fe
    .catchall {:try_start_e8 .. :try_end_fe} :catchall_c0

    .line 2090
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10f

    :catch_102
    move-exception v3

    .line 2074
    :try_start_103
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed creating new network."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_103 .. :try_end_10b} :catchall_c0

    .line 2090
    :goto_10b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    :goto_10f
    if-nez v3, :cond_28

    return v0

    :goto_112
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2091
    throw p0
.end method

.method public final updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V
    .registers 16

    .line 1270
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDaemonCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1272
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p3, :cond_25

    .line 1273
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c5

    :cond_25
    if-eqz p2, :cond_c5

    .line 1274
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p3, :cond_37

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p3, :cond_c5

    .line 1276
    :cond_37
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1277
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1278
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_c2

    .line 1279
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    .line 1281
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    .line 1282
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5c
    move-object v6, p1

    goto :goto_74

    .line 1283
    :cond_5e
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 1284
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_73
    move-object v6, v3

    :goto_74
    if-eqz v6, :cond_c5

    .line 1289
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 1291
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, ";"

    .line 1292
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_96

    :cond_89
    const-string p1, ""

    goto :goto_96

    .line 1295
    :cond_8c
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne p1, p3, :cond_98

    const-string p1, "ALL"

    :goto_96
    move-object v8, p1

    goto :goto_99

    :cond_98
    move-object v8, v3

    .line 1298
    :goto_99
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 1300
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ac

    const-string p2, ";"

    .line 1301
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b9

    :cond_ac
    const-string v3, ""

    goto :goto_b9

    .line 1304
    :cond_af
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne p1, p3, :cond_b9

    const-string v3, "ALL"

    :cond_b9
    :goto_b9
    move-object v9, v3

    const/4 v7, 0x0

    move-object v4, p0

    move v5, p3

    move-object v10, p4

    .line 1307
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :catchall_c2
    move-exception p0

    .line 1278
    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p0

    :cond_c5
    :goto_c5
    return-void
.end method

.method public final validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 6

    if-nez p1, :cond_e

    .line 2372
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Invalid AppIdentity object."

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    .line 2376
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2377
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    const-string v0, "*"

    .line 2378
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 2379
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "There is no signature related to all applications."

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    .line 2383
    :cond_2c
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2384
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package name. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final validateDnses(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 2337
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    if-eqz p2, :cond_f

    .line 2338
    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_f
    return v0

    .line 2340
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    if-eqz p2, :cond_1e

    .line 2341
    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1e
    return v0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z
    .registers 4

    .line 2348
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    .line 2349
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_e

    return v0

    .line 2353
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 2354
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2355
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    .line 2360
    :cond_33
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_58

    .line 2361
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2362
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    return v0

    :cond_58
    const/4 p0, 0x1

    return p0
.end method

.method public final validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 2272
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v0, "android"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object p0

    .line 2275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2277
    :try_start_d
    invoke-static {p0, p2, p3}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_17
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2283
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    goto :goto_24

    :catch_17
    move-exception p0

    .line 2280
    :try_start_18
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "validatePkgSignature() - Fail to validate application signature."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 2283
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2284
    throw p0
.end method

.method public final verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 2295
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    return v0

    .line 2298
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    .line 2300
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 2301
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_2c

    .line 2303
    :try_start_1a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 2307
    :cond_2c
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    :goto_42
    monitor-exit v2

    return v0

    :catchall_44
    move-exception p0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    const/4 p0, 0x0

    return p0
.end method
