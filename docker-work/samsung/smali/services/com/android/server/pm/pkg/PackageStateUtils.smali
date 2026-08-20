.class public Lcom/android/server/pm/pkg/PackageStateUtils;
.super Ljava/lang/Object;
.source "PackageStateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEarliestFirstInstallTime(Landroid/util/SparseArray;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_34

    .line 86
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_34

    :cond_b
    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    .line 90
    :goto_12
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2e

    .line 91
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-eqz v9, :cond_2b

    cmp-long v9, v7, v5

    if-gez v9, :cond_2b

    move-wide v5, v7

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2e
    cmp-long p0, v5, v3

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    move-wide v0, v5

    :cond_34
    :goto_34
    return-wide v0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_4
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 71
    :cond_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    .line 75
    :cond_b
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 76
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    .line 77
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v4

    move-object v5, p1

    move-wide v6, p2

    .line 76
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z
    .registers 5

    const-wide/32 v0, 0x100000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_f

    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I
    .registers 9

    .line 41
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_17

    aget v4, p1, v2

    .line 42
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-ne v4, p2, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 46
    :cond_17
    new-array v0, v3, [I

    .line 48
    array-length v2, p1

    move v3, v1

    :goto_1b
    if-ge v1, v2, :cond_30

    aget v4, p1, v1

    .line 49
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-ne v5, p2, :cond_2d

    .line 50
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_30
    return-object v0
.end method
