.class public Lcom/android/server/enterprise/firewall/Firewall;
.super Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;
.source "Firewall.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/Firewall$Injector;
    }
.end annotation


# static fields
.field public static final MAX_TRIES:I = 0x5

.field public static TAG:Ljava/lang/String; = "Firewall"

.field public static mHasIpv6FilterSupport:Z = false

.field public static mHasIpv6NatSupport:Z = false


# instance fields
.field public mAreRulesReloaded:Z

.field public mBootReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field public mInitIpTablesThread:Ljava/lang/Thread;

.field public final mInitializingIpTablesRulesLock:Ljava/lang/Object;

.field public final mInjector:Lcom/android/server/enterprise/firewall/Firewall$Injector;

.field public mIsChainsCreated:Z

.field public final mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAreRulesReloaded(Lcom/android/server/enterprise/firewall/Firewall;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirewallRulesApplier(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitializingIpTablesRulesLock(Lcom/android/server/enterprise/firewall/Firewall;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsChainsCreated(Lcom/android/server/enterprise/firewall/Firewall;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAreRulesReloaded(Lcom/android/server/enterprise/firewall/Firewall;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mblockOrUnblockAll(Lcom/android/server/enterprise/firewall/Firewall;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateChains(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/Firewall;->createChains()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserChains(Lcom/android/server/enterprise/firewall/Firewall;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->handleUserChains(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeIpTables(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserHandle(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->onUserHandle(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpackageAdded(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->packageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpackageRemoved(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->packageRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 205
    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Lcom/android/server/enterprise/firewall/Firewall$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall$Injector;)V
    .registers 9

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/Firewall$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/Firewall$2;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v2, Lcom/android/server/enterprise/firewall/Firewall$3;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/Firewall$3;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->initInjector(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 210
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInjector:Lcom/android/server/enterprise/firewall/Firewall$Injector;

    .line 211
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 213
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 214
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->getDomainFilter()Lcom/android/server/enterprise/firewall/DomainFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 218
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 224
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasIpv6Support(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 229
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 230
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 231
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/Firewall;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 235
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 236
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 240
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 241
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 242
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 4
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

    monitor-enter p0

    .line 1263
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1264
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 9

    monitor-enter p0

    .line 477
    :try_start_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 483
    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-ne v2, v3, :cond_18

    .line 485
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "addRule() - Invalid Firewall Rule"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_127

    .line 486
    monitor-exit p0

    return-object v1

    .line 492
    :cond_18
    :try_start_18
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 493
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 494
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_127

    .line 501
    :try_start_37
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 500
    invoke-static {v1, v4, v5}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_64

    .line 503
    :try_start_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_69

    .line 506
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "addRule() - Signature mismatch"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Given signature does not match with the application."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_4b .. :try_end_62} :catchall_127

    .line 510
    monitor-exit p0

    return-object p1

    :catchall_64
    move-exception p1

    .line 503
    :try_start_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    throw p1

    .line 517
    :cond_69
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    .line 518
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 519
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v1

    .line 520
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    :cond_89
    sget-boolean v2, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-nez v2, :cond_a1

    .line 522
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "addRule() - IPv6 not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "This device does not have IPv6 support for this type of rule."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_65 .. :try_end_9f} :catchall_127

    monitor-exit p0

    return-object p1

    .line 526
    :cond_a1
    :try_start_a1
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    :cond_b1
    sget-boolean v1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-nez v1, :cond_c9

    .line 528
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "addRule() - IPv6 not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "This device does not have IPv6 support for this type of rule."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_a1 .. :try_end_c7} :catchall_127

    monitor-exit p0

    return-object p1

    .line 537
    :cond_c9
    :try_start_c9
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleInDb(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 538
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "addRule() - This rule is already in the database"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "The specified rule is already in the database."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_127

    monitor-exit p0

    return-object p1

    .line 544
    :cond_e5
    :try_start_e5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 545
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 551
    :cond_f0
    invoke-static {p2, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 556
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallRule"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_116

    .line 558
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "addRule() - Failed to add rule in the database"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Failed to add/update rule in the database."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_114
    .catchall {:try_start_e5 .. :try_end_114} :catchall_127

    monitor-exit p0

    return-object p1

    :cond_116
    long-to-int p1, v0

    .line 562
    :try_start_117
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 564
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "The rule(s) was successfully added/updated."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_117 .. :try_end_125} :catchall_127

    monitor-exit p0

    return-object p1

    :catchall_127
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 14

    monitor-enter p0

    .line 570
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 571
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "addRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1d3

    .line 572
    array-length v0, p2

    if-nez v0, :cond_13

    goto/16 :goto_1d3

    .line 576
    :cond_13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 581
    array-length v1, p2

    new-array v1, v1, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 582
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 583
    :goto_22
    array-length v5, p2

    if-ge v4, v5, :cond_48

    .line 584
    aget-object v5, p2, v4

    invoke-virtual {p0, v5, v0}, Lcom/android/server/enterprise/firewall/Firewall;->setRulesProperties(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lorg/json/JSONArray;)V

    .line 585
    aget-object v5, p2, v4

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/firewall/Firewall;->addRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v5

    aput-object v5, v1, v4

    .line 586
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 587
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 591
    :cond_48
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_SECURE_NETWORK"

    const-string v6, "addRules"

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v5, "rules"

    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 607
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move v5, v3

    .line 612
    :goto_81
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_98

    .line 613
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, p2, v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 618
    :cond_98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 622
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v5

    .line 623
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-nez v6, :cond_bb

    .line 624
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 625
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v6, v7, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V

    :cond_bb
    move p1, v3

    :goto_bc
    if-ge p1, v0, :cond_cf

    .line 627
    aget-object v6, v4, p1

    .line 628
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 629
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    :cond_cb
    add-int/lit8 p1, p1, 0x1

    goto :goto_bc

    :cond_ce
    move v7, v3

    :cond_cf
    if-eqz v7, :cond_1d1

    .line 634
    array-length p1, p2

    new-array p1, p1, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move v0, v3

    .line 636
    :goto_d5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_181

    .line 637
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 638
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 639
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v0

    .line 641
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, p1, v4

    goto :goto_17d

    .line 643
    :cond_124
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v0

    .line 645
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, p1, v4

    goto :goto_17d

    .line 648
    :cond_151
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v0

    .line 651
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, p1, v4

    :goto_17d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d5

    .line 656
    :cond_181
    :goto_181
    array-length v0, p2

    if-ge v3, v0, :cond_1cf

    .line 657
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    goto :goto_1cc

    .line 660
    :cond_193
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 661
    aget-object v0, v1, v3

    aput-object v0, p1, v3

    goto :goto_1cc

    .line 663
    :cond_1a6
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add/update rule in the database. / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    .line 665
    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, p1, v3
    :try_end_1cc
    .catchall {:try_start_1 .. :try_end_1cc} :catchall_1d6

    :goto_1cc
    add-int/lit8 v3, v3, 0x1

    goto :goto_181

    .line 668
    :cond_1cf
    monitor-exit p0

    return-object p1

    .line 670
    :cond_1d1
    monitor-exit p0

    return-object v1

    :cond_1d3
    :goto_1d3
    const/4 p1, 0x0

    .line 573
    monitor-exit p0

    return-object p1

    :catchall_1d6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final adminHaveSystemRule(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 12

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    const-string/jumbo v0, "package"

    .line 405
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 404
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 409
    :try_start_17
    array-length v4, p0

    move v5, v3

    :goto_19
    if-ge v5, v4, :cond_45

    aget-object v6, p0, v5

    .line 410
    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 411
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 410
    invoke-interface {v0, v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_42

    const/16 v7, 0x3e8

    .line 412
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 413
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3b} :catch_4b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_49

    if-ne v7, v6, :cond_42

    .line 420
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_45
    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    :catchall_49
    move-exception p0

    goto :goto_55

    :catch_4b
    move-exception p0

    .line 418
    :try_start_4c
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "adminHaveSystemRule() - Remote Exception on get getApplicationInfo"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    goto :goto_45

    :goto_54
    return v3

    .line 420
    :goto_55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    throw p0
.end method

.method public final blockOrUnblockAll(ZI)V
    .registers 7

    .line 303
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockOrUnblockAll(block = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_48

    .line 311
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4f

    .line 313
    :cond_48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_53
    :goto_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_53

    .line 320
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 329
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v2

    .line 330
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 334
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v2

    .line 335
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 340
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_53

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->adminHaveSystemRule(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 342
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 347
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    .line 348
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    goto :goto_53

    :cond_a5
    return-void
.end method

.method public final declared-synchronized clearFirewallRulesFromDb(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5

    monitor-enter p0

    .line 740
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "clearFirewallRulesFromDb()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1e

    .line 742
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "clearFirewallRulesFromDb() - Rule type is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "The specified package name is not installed."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_7a

    monitor-exit p0

    return-object p1

    .line 746
    :cond_1e
    :try_start_1e
    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 752
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    .line 753
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "ruleType"

    .line 754
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "FirewallRule"

    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_57

    .line 757
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "clearFirewallRulesFromDb() - Failed to clear rules from database"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Failed to clear rules from database."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_7a

    monitor-exit p0

    return-object p1

    :cond_57
    if-nez p1, :cond_6d

    .line 761
    :try_start_59
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "clearFirewallRulesFromDb() - Rules already cleared"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "The rules are already cleared."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_7a

    monitor-exit p0

    return-object p1

    .line 766
    :cond_6d
    :try_start_6d
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Rules successfully cleared."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_7a

    monitor-exit p0

    return-object p1

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 694
    :try_start_2
    iget v1, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 696
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v2, :cond_10

    move v0, v4

    goto :goto_22

    .line 698
    :cond_10
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v2, :cond_16

    move v0, v3

    goto :goto_22

    .line 700
    :cond_16
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v2, :cond_1c

    const/4 v0, 0x4

    goto :goto_22

    .line 702
    :cond_1c
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v2, :cond_22

    const/16 v0, 0x8

    :cond_22
    :goto_22
    and-int/2addr p2, v0

    if-eqz p2, :cond_67

    .line 707
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    if-eqz p2, :cond_61

    if-ne v0, v4, :cond_32

    .line 709
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->clearIcmpAllowRule()V

    .line 712
    :cond_32
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushChain(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Z

    move-result p2

    if-nez p2, :cond_52

    .line 713
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p2, "clearRuleByType() - Failed to disable firewall rules"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, " failed to disable. Error: "

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_74

    monitor-exit p0

    return-object p1

    :cond_52
    if-ne v0, v3, :cond_61

    .line 719
    :try_start_54
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->isIcmpAllowRuleApplied()Z

    move-result p2

    if-eqz p2, :cond_61

    .line 720
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reinsertIcmpAllowRule()V

    .line 722
    :cond_61
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->clearFirewallRulesFromDb(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_74

    monitor-exit p0

    return-object p1

    .line 724
    :cond_67
    :try_start_67
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "Clear was not requested for this RuleType."

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_74

    monitor-exit p0

    return-object p1

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 8

    monitor-enter p0

    .line 676
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 677
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "clearRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    const/4 v1, 0x1

    .line 680
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x2

    .line 681
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 682
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v4

    aput-object v4, v0, v2

    .line 683
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p2

    aput-object p2, v0, v1

    .line 684
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-nez p2, :cond_44

    .line 686
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2, v3, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 688
    :cond_44
    monitor-exit p0

    return-object v0

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final createChains()V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    if-nez v1, :cond_34

    .line 432
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->createIptablesChains(Ljava/lang/Integer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_10} :catch_2c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_10} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_36

    goto :goto_34

    :catch_11
    move-exception p0

    .line 440
    :try_start_12
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "createIptablesChains(): IllegalArgumentException was thrown."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :catch_1a
    move-exception p0

    .line 438
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "createIptablesChains(): NullPointerException was thrown."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :catch_23
    move-exception p0

    .line 436
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "createIptablesChains(): IOException was thrown."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :catch_2c
    move-exception p0

    .line 434
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "createIptablesChains(): SecurityException was thrown."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 4

    .line 358
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    const-string p1, "*"

    .line 359
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    .line 362
    new-instance p1, Lcom/samsung/android/knox/AppIdentity;

    const/4 p2, 0x0

    const-string v0, "android"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    :cond_1c
    return-object p0
.end method

.method public final declared-synchronized deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5

    monitor-enter p0

    .line 779
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "deleteFirewallRuleFromDb()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallRule"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    .line 782
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "deleteFirewallRuleFromDb() - Failed to remove rule from database"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Failed to remove/update rule from the database."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_4a

    monitor-exit p0

    return-object p1

    :cond_27
    if-nez p1, :cond_3d

    .line 786
    :try_start_29
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "deleteFirewallRuleFromDb() - Firewall rule not found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "The specified FirewallRule was not found."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_4a

    monitor-exit p0

    return-object p1

    .line 791
    :cond_3d
    :try_start_3d
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "The rule was successfuly removed/updated."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-object p1

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized disableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11

    monitor-enter p0

    .line 959
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "disableFirewall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 961
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    if-eq v2, v0, :cond_28

    .line 968
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "disableFirewall() - FAILED! NOT_AUTHORIZED_ERROR ADMINUID_IS_NOT_THE_OWNER"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_10b

    monitor-exit p0

    return-object p1

    .line 976
    :cond_28
    :try_start_28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "userID"

    .line 978
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallStatus"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-nez v0, :cond_5e

    .line 980
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "disableFirewall() - FAILED! DATABASE_ERROR FAIL_TO_DISABLE_FIREWALL_IN_THE_DATABASE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Fail to disable Firewall in the database."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_28 .. :try_end_5c} :catchall_10b

    monitor-exit p0

    return-object p1

    :cond_5e
    const/16 v0, 0xf

    const/4 v2, 0x0

    .line 985
    :try_start_61
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    if-eqz v0, :cond_f7

    .line 986
    array-length v2, v0

    if-lez v2, :cond_f7

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    array-length v3, v0

    new-array v4, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 990
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains(Ljava/lang/Integer;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_b2

    :goto_7f
    if-ge v4, v3, :cond_9c

    const-string p1, "Rule with Id = "

    .line 992
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    aget-object p1, v0, v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed to disable. Error: "

    .line 994
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Unexpected error"

    .line 995
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 997
    :cond_9c
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "disableFirewall() - Failed to disable Firewall"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 999
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_61 .. :try_end_b0} :catchall_10b

    .line 998
    monitor-exit p0

    return-object p1

    .line 1002
    :cond_b2
    :try_start_b2
    array-length v1, v0

    move v5, v4

    :goto_b4
    if-ge v5, v1, :cond_c2

    aget-object v6, v0, v5

    .line 1003
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v7, v6, v8, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    :cond_c2
    move v1, v4

    :goto_c3
    if-ge v1, v3, :cond_db

    const-string v5, "Rule with Id = "

    .line 1006
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " successfully disabled.\n"

    .line 1008
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c3

    .line 1010
    :cond_db
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_e8

    .line 1011
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, v4, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V

    .line 1013
    :cond_e8
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1014
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_b2 .. :try_end_f5} :catchall_10b

    .line 1013
    monitor-exit p0

    return-object p1

    .line 1016
    :cond_f7
    :try_start_f7
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "disableFirewall() - Firewall successfully disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "The firewall was successfully disabled."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_f7 .. :try_end_109} :catchall_10b

    monitor-exit p0

    return-object p1

    :catchall_10b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized disableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5

    monitor-enter p0

    .line 804
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 805
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "disableFirewallRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    if-nez p2, :cond_11

    const/4 p1, 0x0

    .line 807
    monitor-exit p0

    return-object p1

    .line 809
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1365
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    const-string v0, "Permission Denial: can\'t dump Firewall"

    .line 1367
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1371
    :cond_14
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v3, "adminUid"

    const-string/jumbo v4, "ruleType"

    const-string/jumbo v5, "status"

    const-string v6, "addressType"

    const-string/jumbo v7, "ipAddress"

    const-string/jumbo v8, "portNumber"

    const-string/jumbo v9, "portLocation"

    const-string/jumbo v10, "packageName"

    const-string/jumbo v11, "signature"

    const-string/jumbo v12, "networkInterface"

    const-string/jumbo v13, "targetIpAddress"

    const-string/jumbo v14, "targetPortNumber"

    const-string v15, "direction"

    const-string/jumbo v16, "protocol"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "FirewallRule"

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1389
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v2, "adminUid"

    const-string/jumbo v3, "packageName"

    const-string/jumbo v4, "signature"

    const-string v5, "blacklist"

    const-string/jumbo v6, "whitelist"

    const-string v7, "dns1"

    const-string v8, "dns2"

    const-string/jumbo v9, "networkId"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "DomainFilterTable"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 4

    monitor-enter p0

    .line 1295
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1296
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 4

    monitor-enter p0

    .line 1280
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1281
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized enableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 12

    monitor-enter p0

    .line 875
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "enableFirewall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 877
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    if-eq v2, v0, :cond_2b

    .line 884
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "enableFirewall() - Failed! NOT_AUTHORIZED_ERROR ADMINUID_IS_NOT_THE_OWNER"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_1ae

    monitor-exit p0

    return-object p1

    :cond_2b
    if-ne v2, v3, :cond_67

    .line 893
    :try_start_2d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    .line 894
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "userID"

    .line 895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallStatus"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_67

    .line 897
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "enableFirewall() - Failed! DATABASE_ERROR FAILED_TO_ENABLE_FIREWALL_IN_THE_DATABASE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Failed to enable Firewall in the database."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_2d .. :try_end_65} :catchall_1ae

    monitor-exit p0

    return-object p1

    :cond_67
    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 903
    :try_start_6a
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    if-eqz v0, :cond_19a

    .line 904
    array-length v1, v0

    if-lez v1, :cond_19a

    .line 905
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 912
    :goto_80
    array-length v7, v1

    const/4 v8, 0x1

    if-ge v4, v7, :cond_135

    .line 913
    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 915
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aget-object v9, v1, v4

    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rule with Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Rule not applied to INPUT chain for Direction.All."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    goto :goto_131

    .line 919
    :cond_cb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rule with Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v4

    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " successfully enabled.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_131

    .line 921
    :cond_f5
    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 923
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rule with Id =  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed to enable. Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v4

    .line 925
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 923
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    :cond_131
    :goto_131
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_80

    :cond_135
    if-eqz v5, :cond_14d

    .line 930
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "enableFirewall() - Failed to enable Firewall"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_6a .. :try_end_14b} :catchall_1ae

    monitor-exit p0

    return-object p1

    .line 933
    :cond_14d
    :try_start_14d
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_160

    .line 934
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 935
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v1, v8, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V

    .line 937
    :cond_160
    array-length p1, v0

    :goto_161
    if-ge v3, p1, :cond_173

    aget-object v1, v0, v3

    .line 938
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 939
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    :cond_170
    add-int/lit8 v3, v3, 0x1

    goto :goto_161

    .line 942
    :cond_173
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "enableFirewall() - Firewall successfully enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_18b

    .line 944
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 945
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_189
    .catchall {:try_start_14d .. :try_end_189} :catchall_1ae

    .line 944
    monitor-exit p0

    return-object p1

    .line 947
    :cond_18b
    :try_start_18b
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 948
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_198
    .catchall {:try_start_18b .. :try_end_198} :catchall_1ae

    .line 947
    monitor-exit p0

    return-object p1

    .line 952
    :cond_19a
    :try_start_19a
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "enableFirewall() - Firewall successfully enabled (no rules)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "The firewall was successfully enabled."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1ac
    .catchall {:try_start_19a .. :try_end_1ac} :catchall_1ae

    monitor-exit p0

    return-object p1

    :catchall_1ae
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 3

    monitor-enter p0

    .line 853
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_d

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    monitor-exit p0

    return-object p1

    .line 857
    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized enableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 9

    monitor-enter p0

    .line 821
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 822
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "enableFirewallRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_72

    if-nez p2, :cond_11

    const/4 p1, 0x0

    .line 824
    monitor-exit p0

    return-object p1

    .line 826
    :cond_11
    :try_start_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 827
    :goto_18
    array-length v3, p2

    if-ge v2, v3, :cond_45

    .line 828
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 829
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 828
    invoke-static {v3, v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 830
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    aget-object v4, p2, v2

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_42

    .line 832
    :cond_3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 835
    :cond_45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 836
    :goto_4b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_62

    .line 837
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, p2, v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 839
    :cond_62
    sget-object p2, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "enableFirewallRules()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v0, 0x1

    invoke-virtual {p2, v2, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_70
    .catchall {:try_start_11 .. :try_end_70} :catchall_72

    monitor-exit p0

    return-object p1

    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 8

    .line 376
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v1, "enableOrDisableRuleAsAdmin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3f

    if-eqz p3, :cond_1d

    .line 380
    sget-object v2, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "enableOrDisableRuleAsAdmin() - Block the traffic until applying rules process is finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v2

    goto :goto_2a

    .line 384
    :cond_1d
    sget-object v2, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v3, "enableOrDisableRuleAsAdmin() - Applying rules process is finished. Unblock the traffic"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v2

    :goto_2a
    if-eqz v2, :cond_3c

    .line 388
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-ne v2, v3, :cond_3c

    .line 389
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "enableOrDisableRuleAsAdmin() - success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/Firewall;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1044
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAddressTypePropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 1458
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    return p0

    :cond_13
    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaulCaptivePortalURL()Ljava/lang/String;
    .registers 1

    .line 1406
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 3
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

    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1291
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 3
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

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1276
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 1144
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 1145
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInjector:Lcom/android/server/enterprise/firewall/Firewall$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/Firewall$Injector;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1147
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getFirewallOwner(I)I
    .registers 4

    .line 1028
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1029
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "userID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object p1, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    const-string v1, "FirewallStatus"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_36

    .line 1035
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_36

    :cond_23
    const/4 v0, 0x0

    .line 1038
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    const-string v0, "adminUid"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_36
    :goto_36
    return p1
.end method

.method public final getNetworkInterfacePropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 1470
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    return p0

    :cond_16
    return v1

    :cond_17
    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final getPortLocationPropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 1484
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    return p0

    :cond_16
    return v1

    :cond_17
    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final getProtocolPropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 1498
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_16

    return p0

    :cond_16
    return v0

    :cond_17
    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 8

    .line 1103
    iget p3, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1106
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1c

    .line 1108
    :cond_8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_e

    const/4 v0, 0x2

    goto :goto_1c

    .line 1110
    :cond_e
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_14

    const/4 v0, 0x4

    goto :goto_1c

    .line 1112
    :cond_14
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_1b

    const/16 v0, 0x8

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1120
    :goto_1c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x3e8

    if-eq p3, v2, :cond_2e

    .line 1122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v2, "adminUid"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2e
    if-eqz p4, :cond_36

    const-string/jumbo p3, "status"

    .line 1128
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    and-int/2addr p2, v0

    if-eqz p2, :cond_52

    .line 1132
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "ruleType"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object p2, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    const-string p3, "FirewallRule"

    invoke-virtual {p0, p3, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 1136
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    goto :goto_53

    :cond_52
    const/4 p0, 0x0

    :goto_53
    return-object p0
.end method

.method public final getRuleTypePropertyToLog(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 1512
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_19

    return p0

    :cond_19
    return v0

    :cond_1a
    return v1

    :cond_1b
    return v0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 10

    .line 1052
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1054
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    .line 1055
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v1

    .line 1056
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v2

    .line 1057
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p0, v3, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz v0, :cond_22

    .line 1062
    array-length p2, v0

    add-int/2addr p2, p1

    goto :goto_23

    :cond_22
    move p2, p1

    :goto_23
    if-eqz v1, :cond_27

    .line 1065
    array-length p3, v1

    add-int/2addr p2, p3

    :cond_27
    if-eqz v2, :cond_2b

    .line 1068
    array-length p3, v2

    add-int/2addr p2, p3

    :cond_2b
    if-eqz p0, :cond_2f

    .line 1071
    array-length p3, p0

    add-int/2addr p2, p3

    .line 1074
    :cond_2f
    new-array p2, p2, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    if-eqz v0, :cond_42

    move p3, p1

    move v3, p3

    .line 1077
    :goto_35
    array-length v4, v0

    if-ge p3, v4, :cond_43

    add-int/lit8 v4, v3, 0x1

    .line 1078
    aget-object v5, v0, p3

    aput-object v5, p2, v3

    add-int/lit8 p3, p3, 0x1

    move v3, v4

    goto :goto_35

    :cond_42
    move v3, p1

    :cond_43
    if-eqz v1, :cond_53

    move p3, p1

    .line 1082
    :goto_46
    array-length v0, v1

    if-ge p3, v0, :cond_53

    add-int/lit8 v0, v3, 0x1

    .line 1083
    aget-object v4, v1, p3

    aput-object v4, p2, v3

    add-int/lit8 p3, p3, 0x1

    move v3, v0

    goto :goto_46

    :cond_53
    if-eqz v2, :cond_63

    move p3, p1

    .line 1087
    :goto_56
    array-length v0, v2

    if-ge p3, v0, :cond_63

    add-int/lit8 v0, v3, 0x1

    .line 1088
    aget-object v1, v2, p3

    aput-object v1, p2, v3

    add-int/lit8 p3, p3, 0x1

    move v3, v0

    goto :goto_56

    :cond_63
    if-eqz p0, :cond_72

    .line 1092
    :goto_65
    array-length p3, p0

    if-ge p1, p3, :cond_72

    add-int/lit8 p3, v3, 0x1

    .line 1093
    aget-object v0, p0, p1

    aput-object v0, p2, v3

    add-int/lit8 p1, p1, 0x1

    move v3, p3

    goto :goto_65

    :cond_72
    return-object p2
.end method

.method public final getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 10

    .line 1527
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 1528
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "adminUid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object p1, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    const-string p2, "FirewallRule"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 1535
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "ruleType"

    .line 1541
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_36

    .line 1542
    :cond_4c
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v4

    .line 1543
    sget-object v5, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_75

    const/4 v5, 0x2

    if-eq v4, v5, :cond_71

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6d

    const/4 v5, 0x4

    if-eq v4, v5, :cond_69

    goto :goto_36

    .line 1554
    :cond_69
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1551
    :cond_6d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1548
    :cond_71
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1545
    :cond_75
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1561
    :cond_79
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 1564
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-static {p1, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_97

    move v3, v2

    move v4, v3

    .line 1568
    :goto_8a
    array-length v5, p1

    if-ge v3, v5, :cond_98

    add-int/lit8 v5, v4, 0x1

    .line 1569
    aget-object v6, p1, v3

    aput-object v6, p0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_8a

    :cond_97
    move v4, v2

    .line 1573
    :cond_98
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p1

    if-eqz p1, :cond_ae

    move p2, v2

    .line 1576
    :goto_a1
    array-length v3, p1

    if-ge p2, v3, :cond_ae

    add-int/lit8 v3, v4, 0x1

    .line 1577
    aget-object v5, p1, p2

    aput-object v5, p0, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v3

    goto :goto_a1

    .line 1581
    :cond_ae
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p1

    if-eqz p1, :cond_c4

    move p2, v2

    .line 1585
    :goto_b7
    array-length v0, p1

    if-ge p2, v0, :cond_c4

    add-int/lit8 v0, v4, 0x1

    .line 1586
    aget-object v3, p1, p2

    aput-object v3, p0, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v0

    goto :goto_b7

    .line 1590
    :cond_c4
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 1594
    :goto_cc
    array-length p2, p1

    if-ge v2, p2, :cond_d9

    add-int/lit8 p2, v4, 0x1

    .line 1595
    aget-object v0, p1, v2

    aput-object v0, p0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, p2

    goto :goto_cc

    :cond_d9
    return-object p0
.end method

.method public final handleUserChains(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 449
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 450
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->removeIptablesChains(Ljava/lang/Integer;)Z

    .line 451
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    goto/16 :goto_9b

    :cond_18
    const-string v1, "android.intent.action.USER_ADDED"

    .line 452
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 453
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->createIptablesChains(Ljava/lang/Integer;)Z
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_25} :catch_7f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_25} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_25} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_25} :catch_28
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_9b

    :catchall_26
    move-exception p0

    goto :goto_9d

    :catch_28
    move-exception p0

    .line 464
    :try_start_29
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUserChains(): IllegalArgumentException was thrown."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catch_45
    move-exception p0

    .line 461
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUserChains(): NullPointerException was thrown."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catch_62
    move-exception p0

    .line 459
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUserChains(): IOException was thrown."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catch_7f
    move-exception p0

    .line 456
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUserChains(): SecurityException was thrown."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_9b
    :goto_9b
    monitor-exit v0

    return-void

    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_29 .. :try_end_9e} :catchall_26

    throw p0
.end method

.method public final initializeIpTables()V
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/firewall/Firewall$5;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitIpTablesThread:Ljava/lang/Thread;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1301
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1285
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1286
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 863
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 864
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 865
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "userID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object p1, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    const-string v1, "FirewallStatus"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 871
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0
.end method

.method public isInitIpTablesThreadAlive()Z
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitIpTablesThread:Ljava/lang/Thread;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .registers 2

    .line 1158
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1159
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 4

    .line 1306
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAdminAdded(uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5

    .line 1312
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminRemoved(uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    if-eqz p0, :cond_23

    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->adminRemoved(I)V

    :cond_23
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 5

    .line 1320
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerCreation(containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ownerUid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 5

    .line 1327
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerRemoved(containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ownerUid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5

    .line 1334
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval(uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1336
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1337
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v1

    if-ne v1, p1, :cond_34

    const/4 v1, 0x0

    .line 1341
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    .line 1342
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->deleteRulesFromAdmin(Lcom/samsung/android/knox/ContextInfo;)V

    .line 1344
    :cond_34
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    if-eqz p0, :cond_3b

    .line 1345
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onPreAdminRemoval(I)V

    :cond_3b
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 5

    .line 1351
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreContainerRemoval(containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ownerUid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUserHandle(Landroid/content/Intent;)V
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/firewall/Firewall$4;-><init>(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final packageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 1602
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    .line 1603
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_d5

    if-nez v0, :cond_15

    goto/16 :goto_d5

    :cond_15
    const/4 v1, 0x0

    .line 1612
    invoke-static {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v2

    .line 1614
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "packageName"

    .line 1615
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "#SelectClause#"

    .line 1616
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adminUid"

    .line 1618
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 1620
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "FirewallRule"

    invoke-virtual {v6, v7, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1623
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_44

    return-void

    .line 1624
    :cond_44
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageAdded() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has firewall rules to enable"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1627
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_77

    goto :goto_64

    .line 1629
    :cond_77
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1630
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/enterprise/firewall/Firewall;->getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v4

    const-string v6, "android"

    .line 1631
    invoke-static {p1, v6, v1, p2}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v6

    .line 1632
    array-length v7, v4

    move v8, v1

    :goto_90
    if-ge v8, v7, :cond_64

    aget-object v9, v4, v8

    .line 1634
    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    .line 1636
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b1

    .line 1638
    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1637
    invoke-static {v6, v11, v10, p2}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_b1

    goto :goto_d1

    .line 1642
    :cond_b1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v10

    if-eqz v10, :cond_d1

    .line 1645
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-eq v10, v11, :cond_c3

    goto :goto_d1

    .line 1647
    :cond_c3
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v10, v9, v11, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 1648
    sget-object v9, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v10, "enableRuleAsAdmin() - success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    :goto_d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_90

    :cond_d4
    return-void

    .line 1606
    :cond_d5
    :goto_d5
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "packageAdded() - Received invalid user id orpackage name, can\'t retrieve application info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final packageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    .line 1654
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    .line 1655
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "android.intent.extra.UID"

    .line 1656
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq v1, v2, :cond_dd

    if-nez v0, :cond_1b

    goto/16 :goto_dd

    :cond_1b
    const/4 v2, 0x0

    .line 1664
    invoke-static {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    .line 1667
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "packageName"

    .line 1668
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "#SelectClause#"

    .line 1669
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "adminUid"

    .line 1671
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    .line 1673
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "FirewallRule"

    invoke-virtual {v7, v8, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1676
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4a

    return-void

    .line 1680
    :cond_4a
    sget-object v4, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageRemoved() - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has firewall rules to disable"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6a
    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1683
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_7d

    goto :goto_6a

    .line 1685
    :cond_7d
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1686
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v0}, Lcom/android/server/enterprise/firewall/Firewall;->getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v5

    const-string v7, "android"

    .line 1687
    invoke-static {p1, v7, v2, v1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v7

    .line 1689
    array-length v8, v5

    move v9, v2

    :goto_96
    if-ge v9, v8, :cond_6a

    aget-object v10, v5, v9

    .line 1691
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 1693
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b7

    .line 1695
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1694
    invoke-static {v7, v12, v11, v1}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_b7

    goto :goto_d9

    .line 1698
    :cond_b7
    invoke-virtual {v10, p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPackageUid(I)V

    .line 1699
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v11, v10, v6, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v11

    if-eqz v11, :cond_d9

    .line 1702
    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-eq v11, v12, :cond_cb

    goto :goto_d9

    .line 1704
    :cond_cb
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v11, v10, v12, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 1705
    sget-object v10, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v11, "disableIpTablesRule() - success"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    :goto_d9
    add-int/lit8 v9, v9, 0x1

    goto :goto_96

    :cond_dc
    return-void

    .line 1659
    :cond_dd
    :goto_dd
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "packageRemoved() - Received invalid user id orpackage name, can\'t retrieve application info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 4
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

    monitor-enter p0

    .line 1269
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1270
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 8

    monitor-enter p0

    .line 1209
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeRule()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1215
    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-ne v1, v2, :cond_21

    .line 1217
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeRule() - Invalid Firewall Rule"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_9a

    .line 1218
    monitor-exit p0

    return-object v0

    .line 1224
    :cond_21
    :try_start_21
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1225
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1226
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 1230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_9a

    .line 1233
    :try_start_40
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 1232
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_6e

    .line 1235
    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_73

    .line 1239
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeRule() - Signature mismatch"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Given signature does not match with the application."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_9a

    .line 1243
    monitor-exit p0

    return-object p1

    :catchall_6e
    move-exception p1

    .line 1235
    :try_start_6f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1236
    throw p1

    .line 1247
    :cond_73
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1248
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeRule() - Failed to remove rule. The rule must be disabled."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "Disable the rule before remove it."

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_6f .. :try_end_8e} :catchall_9a

    monitor-exit p0

    return-object p1

    .line 1258
    :cond_90
    :try_start_90
    invoke-static {p2, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_9a

    monitor-exit p0

    return-object p1

    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 15

    monitor-enter p0

    .line 1164
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1165
    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_1a

    .line 1167
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeRules() - No rule specified"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_c5

    .line 1168
    monitor-exit p0

    return-object v0

    .line 1170
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1

    .line 1172
    array-length v3, p2

    new-array v3, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move v4, v2

    .line 1173
    :goto_25
    array-length v5, p2

    if-ge v4, v5, :cond_97

    .line 1174
    aget-object v5, v1, v4

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1175
    aget-object v5, p2, v4

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 1177
    :cond_3f
    aget-object v5, p2, v4

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/firewall/Firewall;->removeRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v5

    if-eqz v5, :cond_92

    .line 1178
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_92

    .line 1179
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    aget-object v10, v1, v4

    if-nez v10, :cond_67

    const-string v10, ""

    goto :goto_7e

    :cond_67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_7e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v3, v4

    goto :goto_94

    .line 1183
    :cond_92
    aput-object v5, v3, v4

    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1187
    :cond_97
    array-length v1, p2

    move v4, v2

    :goto_99
    if-ge v4, v1, :cond_ab

    aget-object v5, p2, v4

    .line 1188
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1189
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    :cond_ab
    const/4 p2, 0x2

    .line 1193
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p2

    .line 1194
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_c3

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result p2

    if-nez p2, :cond_c3

    .line 1196
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {p2, v2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V
    :try_end_c3
    .catchall {:try_start_1a .. :try_end_c3} :catchall_c5

    .line 1198
    :cond_c3
    monitor-exit p0

    return-object v3

    :catchall_c5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setRulesProperties(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lorg/json/JSONArray;)V
    .registers 8

    const-string v0, "Failed to put parameter in json: "

    if-nez p1, :cond_5

    return-void

    .line 1435
    :cond_5
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "pN"

    .line 1436
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adrTp"

    .line 1437
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/Firewall;->getAddressTypePropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "netIt"

    .line 1438
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/Firewall;->getNetworkInterfacePropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_33} :catch_95

    :try_start_33
    const-string/jumbo v2, "ptLc"

    .line 1440
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/Firewall;->getPortLocationPropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_33 .. :try_end_41} :catch_42
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_41} :catch_95

    goto :goto_5b

    :catch_42
    move-exception v2

    .line 1442
    :try_start_43
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    const-string/jumbo v2, "prt"

    .line 1444
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/Firewall;->getProtocolPropertyToLog(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_69} :catch_95

    :try_start_69
    const-string/jumbo v2, "rlTp"

    .line 1446
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleTypePropertyToLog(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_77
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_69 .. :try_end_77} :catch_78
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_77} :catch_95

    goto :goto_91

    :catch_78
    move-exception p0

    .line 1448
    :try_start_79
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :goto_91
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_94} :catch_95

    goto :goto_b0

    :catch_95
    move-exception p0

    .line 1452
    sget-object p1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

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

    :goto_b0
    return-void
.end method

.method public shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1412
    :cond_4
    array-length v0, p1

    move v1, p0

    :goto_6
    if-ge v1, v0, :cond_3f

    aget-object v2, p1, v1

    .line 1413
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1414
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 1415
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 1416
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3f
    :goto_3f
    return p0
.end method

.method public shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .registers 3

    if-eqz p1, :cond_34

    .line 1425
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 1426
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 2

    .line 1358
    sget-object p0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "systemReady()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
