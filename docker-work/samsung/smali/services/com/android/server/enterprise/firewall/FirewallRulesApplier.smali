.class public Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.super Ljava/lang/Object;
.source "FirewallRulesApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;
    }
.end annotation


# static fields
.field public static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final TAG:Ljava/lang/String; = "FirewallRulesApplier"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

.field public mIcmpAllowRuleApplies:I

.field public mIsExemptRulesApplied:Z

.field public mNetdService:Landroid/net/INetd;

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public mShouldAddAcceptRuleToInput:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmShouldAddAcceptRuleToInput(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteCmdIptablesV4AndV6(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 78
    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    new-instance p1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;-><init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager-IA;)V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    return-void
.end method

.method public static splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :cond_c
    move v4, v2

    .line 908
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2d

    .line 909
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 910
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v4, v6

    const v6, 0x61a80

    if-le v4, v6, :cond_27

    goto :goto_2d

    .line 913
    :cond_27
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 917
    :cond_2d
    :goto_2d
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    if-ne p1, v4, :cond_34

    const-string v4, "*filter"

    goto :goto_36

    :cond_34
    const-string v4, "*nat"

    :goto_36
    invoke-interface {v1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v4, "COMMIT\n"

    .line 919
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "\n"

    .line 921
    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 923
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_c

    .line 924
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "total number of commands "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirewallRulesApplier"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 322
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 323
    iget v4, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    .line 324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "*"

    .line 325
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 326
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_56

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get uid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirewallRulesApplier"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 332
    :cond_56
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->addChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_9

    .line 335
    :cond_5f
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->-$$Nest$fgetmAppChainsCounter(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_6d

    iget-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    if-eqz v3, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v4

    .line 336
    :goto_6e
    invoke-static {v1, p2, v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainIptablesCommand(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_9

    .line 338
    iput-boolean v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    goto :goto_9

    .line 341
    :cond_7a
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_98

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 v0, 0x2e

    .line 344
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p2

    and-int/2addr v2, p2

    goto :goto_84

    :cond_98
    if-eqz v2, :cond_a6

    .line 347
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "The domain filter on iptables api was successfully enabled."

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    .line 351
    :cond_a6
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "Failed to enable domain filter on iptables api."

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public declared-synchronized addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_b

    .line 934
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIsExemptRulesApplied:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_20

    :cond_b
    if-nez p1, :cond_13

    .line 935
    :try_start_d
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIsExemptRulesApplied:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_9

    if-nez v0, :cond_13

    monitor-exit p0

    return-void

    .line 936
    :cond_13
    :try_start_13
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createExemptRulesCommands(ZLcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p2

    .line 937
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 938
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIsExemptRulesApplied:Z
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_9

    .line 939
    monitor-exit p0

    return-void

    :goto_20
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addOrRemoveIcmpAllowRule(Z)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 949
    :try_start_4
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    if-lt v1, v0, :cond_10

    .line 950
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_42

    :cond_10
    if-nez p1, :cond_1c

    .line 951
    :try_start_12
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_e

    if-le v1, v0, :cond_1c

    .line 952
    monitor-exit p0

    return-void

    :cond_1c
    const/4 v0, 0x4

    .line 954
    :try_start_1d
    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createIcmpAllowRuleCommands(ZI)Ljava/util/List;

    move-result-object v1

    const-string v2, "\n"

    .line 955
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 956
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x6

    .line 957
    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createIcmpAllowRuleCommands(ZI)Ljava/util/List;

    move-result-object p1

    const-string v1, "\n"

    .line 958
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_e

    .line 960
    :cond_40
    monitor-exit p0

    return-void

    :goto_42
    monitor-exit p0

    throw p1
.end method

.method public changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public final checkApplicationRulesInDatabase(ILjava/lang/String;)Z
    .registers 5

    .line 1094
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1095
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "packageName"

    .line 1096
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "DomainFilterTable"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4f

    .line 1099
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4f

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2d

    goto :goto_4f

    .line 1101
    :cond_2d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    const-string/jumbo p2, "whitelist"

    .line 1102
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "blacklist"

    .line 1103
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return p1

    :cond_4d
    const/4 p0, 0x1

    return p0

    :cond_4f
    :goto_4f
    return p1
.end method

.method public declared-synchronized clearIcmpAllowRule()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 967
    :try_start_2
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 969
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
            "Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "FirewallRulesApplier"

    const-string p1, "Command list is null"

    .line 840
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 845
    :cond_b
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_20

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1a

    goto :goto_25

    :cond_1a
    const-string p2, "*nat"

    .line 850
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_25

    :cond_20
    const-string p2, "*filter"

    .line 847
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_25
    const-string p2, "COMMIT\n"

    .line 854
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "\n"

    .line 855
    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final connectNativeNetdService()V
    .registers 2

    :try_start_0
    const-string/jumbo v0, "netd"

    .line 86
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_10

    return-void

    .line 90
    :cond_10
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    const/4 p0, 0x0

    :goto_19
    if-nez p0, :cond_22

    const-string p0, "FirewallRulesApplier"

    const-string v0, "Can\'t connect to NativeNetdService netd"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public createIptablesChains(Ljava/lang/Integer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_10

    .line 730
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_10

    .line 731
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_10
    if-eqz p1, :cond_15

    .line 733
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_15
    :goto_15
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateFilterChains(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 736
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateNatChains(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 738
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public deleteRulesFromAdmin(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 6

    .line 636
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 637
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2}, Lcom/android/server/enterprise/firewall/Firewall;->clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 641
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 642
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    return-void
.end method

.method public final disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 4

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 7

    .line 301
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    const-string v0, "-D"

    .line 308
    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v1

    .line 310
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    .line 309
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    move-result v0

    if-eqz p3, :cond_30

    if-eqz v0, :cond_30

    .line 313
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 315
    :cond_30
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string p3, "The rule was successfully disabled."

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public final enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 12

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    .line 128
    aget-object p0, p0, v0

    return-object p0
.end method

.method public final enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 140
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 141
    array-length v4, v1

    .line 143
    new-array v5, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 144
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    const/4 v12, 0x0

    :goto_25
    const/4 v13, 0x1

    if-ge v12, v4, :cond_f1

    .line 152
    aget-object v14, v1, v12

    if-nez v14, :cond_3b

    .line 153
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Rule is null."

    invoke-direct {v13, v14, v15, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v13, v5, v12

    goto/16 :goto_ed

    :cond_3b
    if-eqz p5, :cond_e7

    .line 164
    invoke-static {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v11

    .line 165
    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_51

    .line 166
    aput-object v11, v5, v12

    goto/16 :goto_ed

    :cond_51
    if-nez p2, :cond_72

    if-eqz p4, :cond_72

    .line 173
    aget-object v11, v1, v12

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v11, v3, v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result v11

    if-eqz v11, :cond_72

    const/16 v11, 0x3e8

    if-eq v3, v11, :cond_72

    .line 175
    new-instance v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "The specified rule is already enabled."

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v11, v5, v12

    goto/16 :goto_ed

    .line 185
    :cond_72
    aget-object v11, v1, v12

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v11

    .line 186
    aget-object v14, v1, v12

    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v14

    .line 187
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v14

    .line 188
    sget-object v15, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v15, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v15, "-A"

    if-eqz v11, :cond_c2

    .line 189
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v11

    if-nez v11, :cond_a0

    .line 190
    new-instance v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "This device does not have IPv6 support for this type of rule."

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v11, v5, v12

    goto :goto_ed

    .line 195
    :cond_a0
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v11, v11, v14

    if-eq v11, v13, :cond_b8

    const/4 v13, 0x2

    if-eq v11, v13, :cond_ae

    goto :goto_e3

    .line 201
    :cond_ae
    aget-object v11, v1, v12

    invoke-static {v11, v2, v15}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e3

    .line 197
    :cond_b8
    aget-object v11, v1, v12

    invoke-static {v11, v2, v15}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e3

    .line 206
    :cond_c2
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v11, v11, v14

    if-eq v11, v13, :cond_da

    const/4 v13, 0x2

    if-eq v11, v13, :cond_d0

    goto :goto_e3

    .line 212
    :cond_d0
    aget-object v11, v1, v12

    invoke-static {v11, v2, v15}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e3

    .line 208
    :cond_da
    aget-object v11, v1, v12

    invoke-static {v11, v2, v15}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    :goto_e3
    invoke-virtual {v10, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_ed

    .line 219
    :cond_e7
    invoke-virtual {v0, v14, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v11

    aput-object v11, v5, v12

    :goto_ed
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_25

    .line 224
    :cond_f1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v11, 0x4

    if-nez v3, :cond_114

    .line 225
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v3

    .line 226
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_102
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_114

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v11, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v13, v6

    goto :goto_102

    .line 230
    :cond_114
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v6, 0x6

    if-nez v3, :cond_137

    .line 231
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v7, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v3

    .line 232
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_125
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_137

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v13, v7

    goto :goto_125

    .line 236
    :cond_137
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_159

    .line 237
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v8, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v3

    .line 238
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_147
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_159

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 239
    invoke-virtual {v0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v13, v7

    goto :goto_147

    .line 242
    :cond_159
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17b

    .line 243
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v9, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v3

    .line 244
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_169
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 245
    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v13, v7

    goto :goto_169

    :cond_17b
    const/4 v11, 0x0

    :goto_17c
    if-ge v11, v4, :cond_1f5

    .line 253
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1f2

    const-string v3, "The rule was successfully enabled."

    if-eqz p4, :cond_1e7

    if-eqz v13, :cond_1d4

    .line 256
    aget-object v6, v1, v11

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 257
    aget-object v6, v1, v11

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 258
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aget-object v7, v1, v11

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v7

    if-eq v6, v7, :cond_1ac

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aget-object v7, v1, v11

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v7

    if-ne v6, v7, :cond_1c8

    :cond_1ac
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    aget-object v7, v1, v11

    .line 259
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 260
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Rule not applied to INPUT chain for Direction.All."

    invoke-direct {v3, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v5, v11

    goto :goto_1f2

    .line 264
    :cond_1c8
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-direct {v6, v7, v8, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v5, v11

    goto :goto_1f2

    .line 270
    :cond_1d4
    aget-object v3, v1, v11

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 271
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Failed to enable rule."

    invoke-direct {v3, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v5, v11

    goto :goto_1f2

    .line 276
    :cond_1e7
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-direct {v6, v7, v8, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v5, v11

    :cond_1f2
    :goto_1f2
    add-int/lit8 v11, v11, 0x1

    goto :goto_17c

    :cond_1f5
    return-object v5
.end method

.method public final executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
            ")Z"
        }
    .end annotation

    .line 798
    invoke-static {p2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x2e

    goto :goto_a

    :cond_9
    const/4 p2, 0x4

    :goto_a
    const-string v0, "\n"

    .line 801
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public flushAllChains(Ljava/lang/Integer;)Z
    .registers 3

    .line 779
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushFilterChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 780
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushNatChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 781
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public flushChain(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Z
    .registers 3

    .line 785
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushChainsCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    .line 786
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result p0

    return p0
.end method

.method public flushDomainChains(Ljava/lang/Integer;Z)Z
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->clearChainsForUserId(Ljava/lang/Integer;)Z

    .line 409
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->-$$Nest$fgetmAppChainsCounter(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 410
    :goto_11
    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFlushBaseChainsCommand(Ljava/lang/Integer;ZZ)Ljava/util/List;

    move-result-object p1

    if-eqz v0, :cond_19

    .line 412
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 413
    :cond_19
    sget-object p2, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    move-result p2

    .line 414
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const-string v1, "\n"

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, p2

    return p0
.end method

.method public getAllAdmins()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "adminUid"

    .line 625
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 626
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "ADMIN"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 628
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 629
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    return-object v0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    return-object v0

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 422
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->connectNativeNetdService()V

    .line 423
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_36

    .line 425
    :try_start_10
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get OemNetd listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirewallRulesApplier"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method public hasIpv6Support(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 4

    .line 770
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 774
    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getTestIpv6Commands(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    .line 775
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDomainFilterOnIptablesSupported()Z
    .registers 4

    const/4 v0, 0x1

    .line 890
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterOnIptablesCheckCommand(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    .line 891
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterOnIptablesCheckCommand(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    return v0
.end method

.method public isIcmpAllowRuleApplied()Z
    .registers 1

    .line 989
    iget p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .registers 14

    .line 669
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 670
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "************ FILTER TABLE ************"

    .line 675
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "filter"

    .line 676
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "\n"

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-static {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "************ NAT TABLE ************"

    .line 679
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "nat"

    .line 680
    invoke-static {v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 681
    invoke-static {p1, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "************ MANGLE TABLE ************"

    .line 683
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "mangle"

    .line 684
    invoke-static {v8}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-static {v4, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 685
    invoke-static {p1, v9}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "************ RAW TABLE ************"

    .line 687
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "raw"

    .line 688
    invoke-static {v10}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-static {v4, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v5, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 689
    invoke-static {p1, v5}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    sget-boolean v5, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    const/4 v11, 0x6

    if-eqz v5, :cond_99

    const-string v5, "=============== IPV6 RULES ==============="

    .line 691
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {p1, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_99
    sget-boolean v1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-eqz v1, :cond_df

    .line 697
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-static {v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-static {p1, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-static {v8}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {p1, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-static {v10}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 707
    invoke-static {p1, p0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_df
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 710
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\n"

    .line 812
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v0

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 817
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_2e
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 820
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4d

    const/4 p1, 0x6

    .line 823
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p0

    and-int/2addr v0, p0

    :cond_4d
    return v0
.end method

.method public declared-synchronized reinsertIcmpAllowRule()V
    .registers 3

    monitor-enter p0

    .line 977
    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    const/4 v1, 0x0

    .line 978
    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    const/4 v1, 0x1

    .line 979
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 980
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 981
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadDomainFilterOnIptablesRules()V
    .registers 6

    .line 606
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 609
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 610
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 611
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 612
    invoke-virtual {p0, v1, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move v1, v3

    goto :goto_9

    :cond_33
    if-eqz v1, :cond_3e

    .line 617
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    :cond_3e
    return-void
.end method

.method public reloadIptablesRules()V
    .registers 11

    .line 570
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1d

    goto :goto_8

    .line 575
    :cond_1d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 576
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v3

    .line 578
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2d
    const/4 v6, 0x1

    if-ge v5, v4, :cond_6c

    aget-object v7, v3, v5

    .line 581
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 582
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 580
    invoke-static {v8, v9}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_4f

    const-string v6, "FirewallRulesApplier"

    const-string/jumbo v7, "reloadIptablesRules() - Package not installed"

    .line 585
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 589
    :cond_4f
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 590
    invoke-virtual {p0, v7, v6, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 593
    :cond_5e
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 594
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 598
    :cond_6c
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 599
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 600
    invoke-virtual {p0, v6, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V

    goto :goto_8

    :cond_7e
    return-void
.end method

.method public removeDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 359
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 362
    iget v4, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->checkApplicationRulesInDatabase(ILjava/lang/String;)Z

    move-result v4

    .line 364
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_30

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 366
    :cond_30
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_3a

    .line 367
    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    goto :goto_43

    .line 368
    :cond_3a
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_43

    .line 369
    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    :cond_43
    :goto_43
    if-nez v4, :cond_4f

    .line 371
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-static {v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->-$$Nest$fgetmAppChainsCounter(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I

    move-result v5

    if-ne v5, v2, :cond_4f

    move v5, v2

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    .line 372
    :goto_50
    invoke-static {v1, p2, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainRemoveIptablesCommand(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v5, :cond_5b

    .line 374
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    :cond_5b
    if-nez v4, :cond_9

    .line 378
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, -0x1

    .line 379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "*"

    .line 380
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 381
    invoke-static {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8e

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get uid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirewallRulesApplier"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 387
    :cond_8e
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    goto/16 :goto_9

    .line 391
    :cond_99
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 p3, 0x2e

    .line 394
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p2

    and-int/2addr v2, p2

    goto :goto_a3

    :cond_b7
    if-eqz v2, :cond_c5

    .line 397
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string p3, "The domain rule was successfuly removed/updated."

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    .line 401
    :cond_c5
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string p3, "Failed to remove domain rule from the iptables."

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public removeIptablesChains(Ljava/lang/Integer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 759
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveFilterChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 760
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveNatChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 761
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized runShellCommand(ILjava/lang/String;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "FirewallRulesApplier"

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runShellCommand - target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    const-string p1, "FirewallRulesApplier"

    const-string p2, "Failed to obtain instance of mOemNetdService"

    .line 867
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_99

    .line 868
    monitor-exit p0

    return v1

    .line 872
    :cond_2a
    :try_start_2a
    invoke-interface {v0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirewallRulesApplier"

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_45

    :cond_43
    move-object v3, p1

    goto :goto_47

    :cond_45
    :goto_45
    const-string v3, "OK"

    :goto_47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_79

    .line 874
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_79

    :cond_5a
    const-string v0, "FirewallRulesApplier"

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run command. Result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ncommand="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_78} :catch_7c
    .catchall {:try_start_2a .. :try_end_78} :catchall_99

    goto :goto_97

    :cond_79
    :goto_79
    const/4 p1, 0x1

    .line 875
    monitor-exit p0

    return p1

    :catch_7c
    move-exception p1

    :try_start_7d
    const-string p2, "FirewallRulesApplier"

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to run cmd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_99

    .line 882
    :goto_97
    monitor-exit p0

    return v1

    :catchall_99
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 859
    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x4

    goto :goto_c

    :cond_b
    const/4 p1, 0x6

    :goto_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    const-string v1, "FirewallRulesApplier"

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runShellCommandWithOutput - target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_44

    if-eqz v1, :cond_42

    .line 447
    :try_start_22
    invoke-interface {v1, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_27
    .catchall {:try_start_22 .. :try_end_26} :catchall_44

    goto :goto_42

    :catch_27
    move-exception p1

    :try_start_28
    const-string p2, "FirewallRulesApplier"

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to run cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_44

    .line 451
    :cond_42
    :goto_42
    monitor-exit p0

    return-object v0

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRulesStatusAfterReboot()V
    .registers 9

    .line 646
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 649
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 653
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 654
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 657
    array-length v4, v3

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    if-eqz v1, :cond_3c

    .line 659
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_41

    .line 661
    :cond_3c
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    :goto_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_44
    return-void
.end method

.method public updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V
    .registers 20

    move-object/from16 v0, p0

    .line 455
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v2, p3

    .line 456
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_18

    .line 457
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    :cond_18
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 462
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->name()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ruleType"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const-string v5, "direction"

    const-string/jumbo v6, "portLocation"

    const-string/jumbo v7, "networkInterface"

    const-string/jumbo v8, "networkInterfaceStr"

    const-string v9, "FirewallRule"

    const-string/jumbo v10, "signature"

    const-string v11, "addressType"

    const-string/jumbo v12, "protocol"

    const-string/jumbo v13, "portNumber"

    const-string/jumbo v14, "packageName"

    const-string/jumbo v15, "ipAddress"

    if-eq v3, v4, :cond_1c1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_144

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6d

    goto/16 :goto_23c

    .line 545
    :cond_6d
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    .line 547
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_94
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    .line 554
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_c2
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_23c

    .line 518
    :cond_c9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    .line 519
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e9

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_e9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 524
    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {v1, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "targetIpAddress"

    .line 528
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "targetPortNumber"

    .line 530
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    .line 532
    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13d

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_13d
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_23c

    .line 494
    :cond_144
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    .line 496
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16b

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_16b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    .line 505
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ba

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1ba
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_23c

    .line 471
    :cond_1c1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    .line 473
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e8

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_1e8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    .line 482
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    .line 481
    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_237

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_237
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    :goto_23c
    return-void
.end method
