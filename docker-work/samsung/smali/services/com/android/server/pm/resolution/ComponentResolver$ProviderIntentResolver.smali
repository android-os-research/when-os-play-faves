.class public final Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Lcom/android/server/pm/pkg/component/ParsedProvider;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 1328
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1582
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    .line 1334
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 1582
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    .line 1335
    iget-object p0, p1, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 3

    .line 1324
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method public addProvider(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedProvider;)V
    .registers 9

    .line 1390
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_2c

    .line 1391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Provider "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already defined; ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1395
    :cond_2c
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v0, :cond_76

    .line 1403
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1404
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 1409
    invoke-virtual {v4}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 1410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_6c
    invoke-static {p2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_76
    return-void
.end method

.method public allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1438
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_35

    .line 1439
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1440
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1441
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

    .line 1324
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1544
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1545
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1547
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 1549
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1550
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " filter "

    .line 1551
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1324
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1561
    check-cast p3, Landroid/util/Pair;

    .line 1563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 1565
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 1566
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1567
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 1566
    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-le p4, p0, :cond_3a

    const-string p0, " ("

    .line 1569
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " filters)"

    .line 1571
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1573
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
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1324
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1579
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1324
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

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
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 1458
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1461
    :cond_a
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver;->-$$Nest$smisFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .registers 4

    .line 1324
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

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
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1468
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1324
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1451
    new-array p0, p1, [Landroid/util/Pair;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;IIJ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v6, p4

    move-object/from16 v1, p0

    move-wide/from16 v8, p5

    .line 1475
    iget-object v1, v1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_12

    return-object v10

    .line 1479
    :cond_12
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1480
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1481
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    .line 1484
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    if-eqz v13, :cond_dc

    .line 1485
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 1486
    invoke-static {v13, v7, v8, v9, v6}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_dc

    .line 1491
    :cond_3a
    invoke-interface {v13, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v14

    const-wide/32 v0, 0x1000000

    and-long/2addr v0, v8

    const-wide/16 v15, 0x0

    cmp-long v0, v0, v15

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    move v0, v1

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    const-wide/32 v3, 0x800000

    and-long/2addr v3, v8

    cmp-long v3, v3, v15

    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    if-eqz v0, :cond_66

    .line 1497
    invoke-virtual {v12}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_66

    return-object v10

    :cond_66
    if-nez v1, :cond_6f

    .line 1501
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_6f

    return-object v10

    .line 1506
    :cond_6f
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_7c

    return-object v10

    .line 1510
    :cond_7c
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    move-wide/from16 v1, p5

    move-object v3, v14

    move/from16 v4, p4

    move-object v5, v13

    .line 1509
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_8d

    return-object v10

    .line 1514
    :cond_8d
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    move-object v1, v7

    move-wide/from16 v2, p5

    move-object v4, v14

    move/from16 v6, p4

    move-object v7, v13

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_9f

    return-object v10

    .line 1519
    :cond_9f
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1520
    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    const-wide/16 v2, 0x40

    and-long/2addr v2, v8

    cmp-long v0, v2, v15

    if-eqz v0, :cond_af

    .line 1522
    iput-object v12, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1524
    :cond_af
    invoke-virtual {v12}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->priority:I

    move/from16 v0, p3

    .line 1527
    iput v0, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1528
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1529
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1530
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1531
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1532
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/ResolveInfo;->system:Z

    return-object v1

    :cond_dc
    :goto_dc
    return-object v10
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 1324
    check-cast p2, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;

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

    .line 1351
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

    .line 1354
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

    .line 1341
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

    .line 1345
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
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    .line 1362
    iget-object v2, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    if-nez v1, :cond_16

    .line 1366
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

    .line 1369
    :goto_26
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    .line 1370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :goto_30
    if-ge v7, v2, :cond_66

    .line 1375
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1376
    invoke-interface {v8}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 1377
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_63

    .line 1378
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v10

    move v11, v3

    .line 1379
    :goto_4b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_60

    .line 1380
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v8, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 1382
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

    .line 1385
    invoke-super/range {v0 .. v8}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)V
    .registers 5

    .line 1417
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2b

    .line 1425
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1426
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 1431
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

    .line 1538
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public bridge synthetic updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1324
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
