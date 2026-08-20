.class public Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirewallIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
        "Lcom/android/server/firewall/IntentFirewall$Rule;",
        ">;"
    }
.end annotation


# instance fields
.field public final mRulesByComponent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "[",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 511
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 558
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 554
    const-class v1, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-static {v1, v0, p2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 555
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)Z"
        }
    .end annotation

    .line 515
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->-$$Nest$fgetrule(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 511
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getIntentFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Landroid/content/IntentFilter;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 511
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->getIntentFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 511
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .registers 2

    .line 525
    new-array p0, p1, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;IIJ)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 7

    .line 531
    invoke-static {p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->-$$Nest$fgetrule(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 511
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newResult(Lcom/android/server/pm/Computer;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;IIJ)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    return-object p0
.end method

.method public queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    .line 546
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    if-eqz p0, :cond_11

    .line 548
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    return-void
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
