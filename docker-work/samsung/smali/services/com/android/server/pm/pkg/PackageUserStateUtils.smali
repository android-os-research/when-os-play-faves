.class public Lcom/android/server/pm/pkg/PackageUserStateUtils;
.super Ljava/lang/Object;
.source "PackageUserStateUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PackageUserStateUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .registers 10

    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v4

    :goto_f
    const-wide/16 v5, 0x2000

    and-long/2addr p1, v5

    cmp-long p1, p1, v2

    if-eqz p1, :cond_18

    move p1, v1

    goto :goto_19

    :cond_18
    move p1, v4

    :goto_19
    if-nez v0, :cond_2b

    .line 93
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 94
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v4

    :cond_2b
    :goto_2b
    return v1
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 11

    .line 108
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z
    .registers 11

    .line 114
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v2

    .line 115
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z
    .registers 13

    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    .line 130
    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_65

    const/4 v5, 0x2

    if-eq v0, v5, :cond_64

    const/4 v5, 0x3

    if-eq v0, v5, :cond_64

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1c

    goto :goto_68

    :cond_1c
    const-wide/32 v5, 0x20000000

    and-long/2addr v5, p4

    cmp-long v0, v5, v2

    if-eqz v0, :cond_5c

    .line 140
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v0

    const-string v5, "auto_disabler"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-eqz p3, :cond_5c

    .line 141
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move p2, v1

    goto :goto_5b

    .line 143
    :cond_4a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    move p2, v4

    :cond_5b
    :goto_5b
    return p2

    :cond_5c
    const-wide/32 v5, 0x8000

    and-long/2addr p4, v5

    cmp-long p4, p4, v2

    if-nez p4, :cond_65

    :cond_64
    return v4

    :cond_65
    if-nez p1, :cond_68

    return v4

    .line 163
    :cond_68
    :goto_68
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6f

    return v1

    .line 165
    :cond_6f
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_76

    return v4

    :cond_76
    return p2
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 13

    .line 42
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z
    .registers 14

    .line 49
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v3

    .line 50
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v4

    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    .line 49
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z
    .registers 20

    move-wide/from16 v6, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_11

    move-object v0, p0

    move v1, v10

    goto :goto_13

    :cond_11
    move-object v0, p0

    move v1, v11

    .line 66
    :goto_13
    invoke-static {p0, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-nez v2, :cond_22

    if-eqz p1, :cond_1d

    if-nez v1, :cond_22

    .line 67
    :cond_1d
    invoke-static {v11, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    :cond_22
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_34

    .line 71
    invoke-static {v11, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    :cond_34
    const-wide/32 v0, 0x100000

    and-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-eqz v0, :cond_43

    if-nez p1, :cond_43

    .line 76
    invoke-static {v11, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    :cond_43
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4f

    if-nez p4, :cond_4f

    move v0, v10

    goto :goto_50

    :cond_4f
    move v0, v11

    :goto_50
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v6

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5c

    if-eqz p4, :cond_5c

    move v1, v10

    goto :goto_5d

    :cond_5c
    move v1, v11

    :goto_5d
    if-nez v0, :cond_63

    if-eqz v1, :cond_62

    goto :goto_63

    :cond_62
    move v10, v11

    .line 84
    :cond_63
    :goto_63
    invoke-static {v10, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0
.end method

.method public static isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)Z
    .registers 3

    .line 174
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    return v0
.end method

.method public static reportIfDebug(ZJ)Z
    .registers 3

    return p0
.end method
