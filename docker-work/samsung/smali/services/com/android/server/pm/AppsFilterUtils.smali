.class public final Lcom/android/server/pm/AppsFilterUtils;
.super Ljava/lang/Object;
.source "AppsFilterUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4

    .line 71
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    .line 72
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 75
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v0, :cond_23

    .line 76
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v1

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 49
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 50
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 51
    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    .line 56
    :cond_26
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesProviders()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3b

    .line 57
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesProviders()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/AppsFilterUtils;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v1

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3

    .line 65
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 66
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 7

    .line 84
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 87
    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_37

    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 91
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0

    :cond_37
    return v1
.end method

.method public static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1f

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 144
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_1c

    .line 147
    :cond_15
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyFilter(Landroid/content/Intent;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static matchesAnyFilter(Landroid/content/Intent;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_20

    .line 158
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 159
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz p2, :cond_1b

    .line 170
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    move-object v8, p0

    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    .line 168
    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result p0

    if-lez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    return v2

    .line 126
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 129
    :cond_18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p2

    if-eqz p2, :cond_23

    return v2

    .line 133
    :cond_23
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-static {p0, p1, v1}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v2

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    const/4 v2, 0x0

    if-ltz v0, :cond_44

    .line 101
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 102
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_41

    .line 105
    :cond_1e
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    goto :goto_41

    .line 108
    :cond_25
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-direct {v4, v3, v5, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    :cond_30
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 111
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    return v1

    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_44
    return v2
.end method

.method public static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 42
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p0

    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
