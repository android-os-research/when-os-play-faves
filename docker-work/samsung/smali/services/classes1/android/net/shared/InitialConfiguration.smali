.class public Landroid/net/shared/InitialConfiguration;
.super Ljava/lang/Object;
.source "InitialConfiguration.java"


# static fields
.field public static final INET6_ANY:Ljava/net/InetAddress;

.field private static final RFC6177_MIN_PREFIX_LENGTH:I = 0x30

.field private static final RFC7421_PREFIX_LENGTH:I = 0x40


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public final dnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final ipAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1yyUll0OSzpOolMWCZwhmWxAdU4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$not$4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6Dm0xxQjabh3KRcUHYegTxqJe5c(Landroid/net/IpPrefix;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$abrrg5ZeD4L8gkzCRyl5PetilMg(Landroid/net/LinkAddress;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c9N2MqnbjMzPatv9DmSRL0HmMjM(Landroid/net/IpPrefix;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ckHd5yDb09dNJCGIRIxcf8LJ6x0(Landroid/net/LinkAddress;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dBpmJZYxHOn7g6saJbm0sJiMbQg(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f1pX3UaAEU7AJSafGVVYbThltbc(Landroid/net/LinkAddress;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j6zNBSJodSTsS1cvbZoOHEWq3CY(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mq_qD1VmGhzZrsdg9JoSWASotGw(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qX3MXtYCJYMXN7y08JcGTzwAn5g(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "::"

    .line 46
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Landroid/net/shared/InitialConfiguration;->INET6_ANY:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    return-void
.end method

.method public static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 233
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 221
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 222
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    new-instance v0, Landroid/net/shared/InitialConfiguration;

    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration;-><init>()V

    .line 56
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_4
    new-instance v0, Landroid/net/shared/InitialConfiguration;

    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration;-><init>()V

    .line 164
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object p0, p0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda0;-><init>()V

    .line 167
    invoke-static {p0, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p0

    .line 166
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x40

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .registers 4

    .line 181
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 182
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 183
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private static isIPv4(Landroid/net/IpPrefix;)Z
    .registers 1

    .line 200
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method private static isIPv4(Landroid/net/LinkAddress;)Z
    .registers 1

    .line 204
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .registers 2

    .line 208
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    sget-object v0, Landroid/net/shared/InitialConfiguration;->INET6_ANY:Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .registers 2

    .line 212
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .registers 2

    .line 191
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/IpPrefix;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .registers 2

    .line 187
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/LinkAddress;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static synthetic lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .registers 2

    .line 136
    invoke-static {p1, p0}, Landroid/net/shared/InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .registers 2

    .line 80
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .registers 2

    .line 86
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$not$4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 2

    .line 240
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 173
    instance-of v0, p1, Landroid/net/shared/InitialConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 174
    :cond_6
    check-cast p1, Landroid/net/shared/InitialConfiguration;

    .line 175
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p1, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p1, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 176
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object p1, p1, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 177
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)Z"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 128
    :cond_a
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 129
    new-instance v3, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {p1, v3}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_28
    if-eqz p2, :cond_48

    .line 135
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/IpPrefix;

    .line 136
    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;-><init>(Landroid/net/IpPrefix;)V

    invoke-static {p2, v0}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    :cond_48
    const/4 p0, 0x1

    return p0
.end method

.method public isValid()Z
    .registers 7

    .line 74
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 79
    :cond_a
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 80
    iget-object v3, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {v3, v4}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 85
    :cond_2a
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 86
    iget-object v3, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;-><init>(Ljava/net/InetAddress;)V

    invoke-static {v3, v4}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_30

    return v1

    .line 92
    :cond_4a
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5c

    return v1

    .line 97
    :cond_5c
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda7;-><init>()V

    .line 98
    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7b

    return v1

    .line 103
    :cond_7b
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8d

    return v1

    .line 107
    :cond_8d
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-lez p0, :cond_a7

    return v1

    :cond_a7
    const/4 p0, 0x1

    return p0
.end method

.method public toStableParcelable()Landroid/net/InitialConfigurationParcelable;
    .registers 5

    .line 149
    new-instance v0, Landroid/net/InitialConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/InitialConfigurationParcelable;-><init>()V

    .line 150
    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/LinkAddress;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/LinkAddress;

    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    .line 151
    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-array v2, v2, [Landroid/net/IpPrefix;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/IpPrefix;

    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    .line 152
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    new-instance v1, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    const-string v2, ", "

    .line 66
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 67
    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "InitialConfiguration(IPs: {%s}, prefixes: {%s}, DNS: {%s})"

    .line 64
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
