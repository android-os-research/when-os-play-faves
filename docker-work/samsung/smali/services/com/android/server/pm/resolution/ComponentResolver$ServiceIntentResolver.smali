.class public final Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Lcom/android/server/pm/pkg/component/ParsedService;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 1589
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1828
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    .line 1595
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 1828
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    .line 1596
    iget-object p0, p1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 3

    .line 1585
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method public addService(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedService;)V
    .registers 8

    .line 1644
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_4c

    .line 1652
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1653
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 1658
    invoke-virtual {v3}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> For Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_42
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_4c
    return-void
.end method

.method public allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1687
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_35

    .line 1688
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1689
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1690
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 p0, 0x0

    return p0

    :cond_32
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_35
    return v0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 1585
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1786
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1787
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 1791
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1792
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, " filter "

    .line 1793
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1795
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_49

    const-string p2, " permission "

    .line 1796
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    .line 1798
    :cond_49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_4c
    return-void
.end method

.method public bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1585
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1808
    check-cast p3, Landroid/util/Pair;

    .line 1810
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1811
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 1812
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 1813
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1814
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 1813
    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-le p4, p0, :cond_3a

    const-string p0, " ("

    .line 1816
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " filters)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    :cond_3a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1585
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1824
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1585
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 1707
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1710
    :cond_a
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver;->-$$Nest$smisFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .registers 4

    .line 1585
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

    move-result p0

    return p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1717
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1585
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1700
    new-array p0, p1, [Landroid/util/Pair;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1585
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;IIJ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1724
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 1726
    :cond_a
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1727
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1728
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    .line 1731
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1730
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 1732
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 1733
    invoke-static {p1, v2, p5, p6, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_bc

    .line 1738
    :cond_2f
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 1739
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    move-wide v3, p5

    move-object v5, v8

    move v6, p4

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p4

    if-nez p4, :cond_42

    return-object v0

    :cond_42
    const-wide/32 v1, 0x1000000

    and-long/2addr v1, p5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_50

    move v1, v2

    goto :goto_51

    :cond_50
    move v1, v5

    :goto_51
    const-wide/32 v6, 0x800000

    and-long/2addr v6, p5

    cmp-long v6, v6, v3

    if-eqz v6, :cond_5a

    goto :goto_5b

    :cond_5a
    move v2, v5

    :goto_5b
    if-eqz v1, :cond_6a

    .line 1749
    invoke-virtual {p2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_6a

    return-object v0

    :cond_6a
    if-nez v2, :cond_73

    .line 1753
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_73

    return-object v0

    .line 1758
    :cond_73
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_80

    return-object v0

    .line 1761
    :cond_80
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1762
    iput-object p4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-wide/16 v0, 0x40

    and-long p4, p5, v0

    cmp-long p4, p4, v3

    if-eqz p4, :cond_91

    .line 1764
    iput-object p2, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1766
    :cond_91
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result p2

    iput p2, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1769
    iput p3, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1770
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result p2

    iput-boolean p2, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1771
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result p2

    iput p2, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1772
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1773
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result p0

    iput p0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1774
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    iput-boolean p0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    return-object p1

    :cond_bc
    :goto_bc
    return-object v0
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 1585
    check-cast p2, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p6

    move-wide v7, p4

    .line 1612
    invoke-super/range {v1 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-eqz p4, :cond_10

    const-wide/32 v0, 0x10000

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    :goto_12
    move-wide v8, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 1606
    invoke-super/range {v2 .. v9}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    .line 1618
    iget-object v2, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    if-nez v1, :cond_16

    .line 1620
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_16
    const-wide/32 v2, 0x10000

    and-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v3

    .line 1623
    :goto_26
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    .line 1624
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :goto_30
    if-ge v7, v2, :cond_66

    .line 1629
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1630
    invoke-interface {v8}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 1631
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_63

    .line 1632
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v10

    move v11, v3

    .line 1633
    :goto_4b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_60

    .line 1634
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v8, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 1636
    :cond_60
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p7

    move-wide/from16 v7, p4

    .line 1639
    invoke-super/range {v0 .. v8}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeService(Lcom/android/server/pm/pkg/component/ParsedService;)V
    .registers 5

    .line 1666
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2b

    .line 1674
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1675
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 1680
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2b
    return-void
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1780
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public bridge synthetic updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1585
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
