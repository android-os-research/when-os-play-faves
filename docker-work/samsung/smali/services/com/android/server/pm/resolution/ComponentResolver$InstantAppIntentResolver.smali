.class public final Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        ">;"
    }
.end annotation


# instance fields
.field public final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    .line 1851
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1852
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public filterResults(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1895
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_43

    .line 1897
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1898
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1899
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1900
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_27

    goto :goto_40

    .line 1905
    :cond_27
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v2, :cond_39

    .line 1907
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_40

    goto :goto_43

    .line 1915
    :cond_39
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_43
    :goto_43
    return-void
.end method

.method public getIntentFilter(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Landroid/content/IntentFilter;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1831
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->getIntentFilter(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1831
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .registers 2

    .line 1857
    new-array p0, p1, [Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1831
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;IIJ)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .registers 7

    .line 1870
    iget-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_a

    return-object p3

    .line 1873
    :cond_a
    iget-object p1, p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1874
    invoke-virtual {p2}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->getOrder()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1875
    iget-object p5, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1876
    invoke-virtual {p5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/Pair;

    if-eqz p5, :cond_31

    .line 1878
    iget-object p5, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-lt p5, p6, :cond_31

    return-object p3

    .line 1881
    :cond_31
    iget-object p3, p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1882
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-lez p5, :cond_43

    .line 1884
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance p5, Landroid/util/Pair;

    invoke-direct {p5, p4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    return-object p2
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 1831
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;IIJ)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p0

    return-object p0
.end method
