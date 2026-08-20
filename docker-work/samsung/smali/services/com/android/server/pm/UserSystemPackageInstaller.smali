.class public Lcom/android/server/pm/UserSystemPackageInstaller;
.super Ljava/lang/Object;
.source "UserSystemPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserSystemPackageInstaller$PackageWhitelistMode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final PACKAGE_WHITELIST_MODE_PROP:Ljava/lang/String; = "persist.debug.user.package_whitelist_mode"

.field public static final TAG:Ljava/lang/String; = "UserSystemPackageInstaller"

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_DEVICE_DEFAULT:I = -0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_DISABLE:I = 0x0

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_ENFORCE:I = 0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IGNORE_OTA:I = 0x10

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST:I = 0x4

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST_SYSTEM:I = 0x8

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_LOG:I = 0x2

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_NONE:I = -0x3e8


# instance fields
.field public final mUm:Lcom/android/server/pm/UserManagerService;

.field public final mUserTypes:[Ljava/lang/String;

.field public final mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B_Xepsb-N8ylYF9SJv85LF4Pnxc(Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$installWhitelistedSystemPackages$1(Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5yebDxPGXmKR4VGzEos-EC4N4g(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$installWhitelistedSystemPackages$0(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GUFD4nTsUvW2BPPuHWBdp1d0RMA(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$getPackagesWhitelistErrors$2(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KK68HRXL3UiPImjAZOE_N1HTv2s(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$getInstallablePackagesForUserType$3(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 168
    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 169
    array-length p1, p1

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1b

    .line 177
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    return-void

    .line 170
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device contains "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user types. However, UserSystemPackageInstaller does not work if there are more than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user types."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;[Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 185
    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 739
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 740
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 742
    :cond_18
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isEnforceMode(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static isIgnoreOtaMode(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isImplicitWhitelistMode(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isImplicitWhitelistSystemMode(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isLogMode(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$getInstallablePackagesForUserType$3(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    .line 544
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 547
    :cond_7
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-static {p4, p0, p1, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 550
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method public static synthetic lambda$getPackagesWhitelistErrors$2(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    .line 401
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 402
    :cond_7
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p3

    .line 403
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 404
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object p3, p0, p1

    const-string p1, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    .line 405
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method public static synthetic lambda$installWhitelistedSystemPackages$0(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 13

    .line 227
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 230
    :cond_7
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 232
    invoke-interface {p5, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-eq v1, v0, :cond_32

    move-object v1, p5

    move v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 233
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 235
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p4, p0, p1, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public static synthetic lambda$installWhitelistedSystemPackages$1(Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 257
    :goto_2
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 258
    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 259
    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    move v4, v0

    :goto_11
    if-ge v4, v3, :cond_6b

    .line 261
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 263
    invoke-virtual {p1, v5}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v7

    .line 264
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v7

    .line 265
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v7

    xor-int/lit8 v8, v6, 0x1

    .line 266
    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setUninstallReason(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CommitDebug"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_51

    const-string v6, "Installed "

    goto :goto_53

    :cond_51
    const-string v6, "Uninstalled "

    :goto_53
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6e
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 4

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_14

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    .line 512
    const-class v0, Lcom/android/server/pm/UserSystemPackageInstaller;

    int-to-long v1, p0

    const-string p0, "USER_TYPE_PACKAGE_WHITELIST_MODE_"

    invoke-static {v0, p0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "DEVICE_DEFAULT"

    return-object p0

    :cond_14
    const-string p0, "NONE"

    return-object p0
.end method

.method public static shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "ZIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    .line 298
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result p0

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0

    :cond_10
    if-nez p3, :cond_1e

    if-eqz p4, :cond_1f

    .line 303
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    return v0
.end method

.method public static shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 574
    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 575
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_f
    if-eqz p3, :cond_17

    .line 576
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 577
    :cond_17
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public static shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 1

    .line 460
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->isOverlayIsStatic()Z

    move-result p0

    return p0
.end method

.method public static showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 820
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_10

    const-string p1, "No "

    .line 823
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    if-eqz p1, :cond_21

    .line 828
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_21
    const/4 p3, 0x0

    :goto_22
    if-ge p3, v0, :cond_30

    .line 832
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    :cond_30
    if-eqz p1, :cond_35

    .line 835
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_35
    return-void
.end method


# virtual methods
.method public final checkWhitelistedSystemPackages(I)V
    .registers 10

    .line 312
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 315
    :cond_d
    sget-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Checking that all system packages are whitelisted."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 319
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ") has "

    const-string v5, "checkWhitelistedSystemPackages(mode="

    if-nez v2, :cond_3f

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has no warnings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 324
    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " warnings:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_61
    if-ge v0, v2, :cond_71

    .line 327
    sget-object v6, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 332
    :cond_71
    :goto_71
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_7e

    return-void

    .line 336
    :cond_7e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object p0

    .line 337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a6

    .line 340
    sget-object p0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has no errors"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_a6
    sget-object v1, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errors:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    :goto_cf
    if-ge v3, v0, :cond_e7

    .line 349
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_df

    .line 351
    sget-object v2, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 353
    :cond_df
    sget-object v2, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e4
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    :cond_e7
    return-void
.end method

.method public determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getBaseTypeBitSets()Ljava/util/Map;

    move-result-object v0

    .line 635
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeWhitelist()Landroid/util/ArrayMap;

    move-result-object v1

    .line 637
    new-instance v2, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    .line 639
    :goto_15
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_3f

    .line 640
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-virtual {p0, v8, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_3c

    .line 643
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 648
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeBlacklist()Landroid/util/ArrayMap;

    move-result-object p1

    .line 649
    :goto_43
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v3, v1, :cond_81

    .line 650
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v4

    .line 652
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_73

    .line 654
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    not-long v4, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_73
    cmp-long v4, v4, v6

    if-eqz v4, :cond_7e

    .line 657
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_81
    const-wide/16 p0, -0x1

    .line 661
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "android"

    invoke-virtual {v2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 14

    .line 747
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    const-string v1, "Whitelisted packages per user type"

    .line 748
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Mode: "

    .line 751
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 753
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1f

    const-string v1, " (enforced)"

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 754
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, " (logged)"

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 755
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, " (implicit)"

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 756
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v2, " (ignore OTAs)"

    :cond_45
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 758
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 760
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Legend"

    .line 761
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 763
    :goto_5b
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7e

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 766
    :cond_7e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 768
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 769
    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_98

    const-string p0, "No packages"

    .line 771
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 775
    :cond_98
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " packages:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    :goto_a4
    const/4 v4, 0x1

    if-ge v3, v2, :cond_e4

    .line 778
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 779
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 780
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move v7, v1

    .line 781
    :goto_c4
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_de

    shl-int v8, v4, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_db

    .line 783
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, " "

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_db
    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    .line 786
    :cond_de
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 788
    :cond_e4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 790
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 791
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V

    .line 792
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    .registers 8

    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_9

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p2

    goto :goto_10

    :cond_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 801
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result p2

    :cond_10
    :goto_10
    if-eqz p4, :cond_14

    and-int/lit8 p2, p2, -0x3

    .line 807
    :cond_14
    sget-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpPackageWhitelistProblems(): using mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object p2

    const-string v0, "errors"

    .line 810
    invoke-static {p1, p3, p2, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    if-eqz p4, :cond_3a

    return-void

    .line 814
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object p0

    const-string/jumbo p2, "warnings"

    .line 815
    invoke-static {p1, p3, p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final getBaseTypeBitSets()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v6, v2

    move-wide v2, v4

    .line 687
    :goto_6
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_3d

    .line 688
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfFull(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1a

    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v0, v9

    .line 691
    :cond_1a
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v2, v9

    .line 694
    :cond_2a
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    shl-int v7, v8, v6

    int-to-long v7, v7

    or-long/2addr v4, v7

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 699
    :cond_3d
    new-instance p0, Landroid/util/ArrayMap;

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 700
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "FULL"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SYSTEM"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "PROFILE"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getDeviceDefaultWhitelistMode()I
    .registers 2

    .line 500
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0131

    .line 501
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final getInstallablePackagesForUserId(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 534
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 537
    :cond_c
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 538
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 539
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 541
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 542
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 543
    new-instance v3, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public final getPackagesWhitelistErrors(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result p1

    if-nez p1, :cond_17

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 393
    :cond_17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object p0

    .line 395
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 400
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final getPackagesWhitelistWarnings()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object p0

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 371
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_37

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "%s is allowlisted but not present."

    .line 374
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 375
    :cond_37
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v6

    if-nez v6, :cond_4b

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "%s is allowlisted and present but not a system package."

    .line 376
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 377
    :cond_4b
    invoke-static {v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "%s is allowlisted unnecessarily since it\'s a static overlay."

    .line 378
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_5f
    return-object v0
.end method

.method public final getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 718
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 720
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_21

    .line 722
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v2, v4

    goto :goto_7

    .line 726
    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2b

    or-long/2addr v2, v5

    goto :goto_7

    .line 731
    :cond_2b
    sget-object v5, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemConfig contained an invalid user type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_42
    return-wide v2
.end method

.method public getUserTypeMask(Ljava/lang/String;)J
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 671
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 p1, 0x1

    shl-int p0, p1, p0

    int-to-long p0, p0

    goto :goto_f

    :cond_d
    const-wide/16 p0, 0x0

    :goto_f
    return-wide p0
.end method

.method public final getWhitelistMode()I
    .registers 3

    const-string/jumbo v0, "persist.debug.user.package_whitelist_mode"

    const/4 v1, -0x1

    .line 490
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_b

    return v0

    .line 495
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result p0

    return p0
.end method

.method public getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v0

    .line 587
    new-instance p1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v2, 0x0

    .line 588
    :goto_10
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 589
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 590
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36

    .line 592
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_39
    return-object p1
.end method

.method public final getWhitelistedSystemPackages()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->checkWhitelistedSystemPackages(I)V

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    .line 204
    invoke-static {v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v3

    if-nez v3, :cond_15

    move v8, v7

    goto :goto_16

    :cond_15
    move v8, v2

    :goto_16
    if-nez v8, :cond_1b

    if-nez p1, :cond_1b

    return v2

    :cond_1b
    if-eqz p1, :cond_24

    .line 208
    invoke-static {v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    .line 213
    :cond_24
    sget-object v1, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reviewing whitelisted packages due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    if-eqz p1, :cond_37

    const-string v5, "[firstBoot]"

    goto :goto_38

    :cond_37
    move-object v5, v4

    .line 214
    :goto_38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_3f

    const-string v4, "[upgrade]"

    :cond_3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 218
    new-instance v10, Landroid/util/SparseArrayMap;

    invoke-direct {v10}, Landroid/util/SparseArrayMap;-><init>()V

    .line 221
    iget-object v1, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    array-length v12, v11

    move v13, v2

    :goto_5f
    if-ge v13, v12, :cond_ca

    aget v14, v11, v13

    .line 222
    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserId(I)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_7a

    .line 226
    new-instance v15, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;

    move-object v1, v15

    move v2, v14

    move/from16 v3, p1

    move v4, v8

    move-object/from16 v5, p3

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;-><init>(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    goto :goto_c7

    .line 239
    :cond_7a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7e
    :goto_7e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 241
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_95

    goto :goto_7e

    .line 245
    :cond_95
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 247
    invoke-interface {v6, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-eq v1, v5, :cond_7e

    move-object v1, v6

    move v2, v5

    move v3, v14

    move/from16 v4, p1

    move/from16 v16, v5

    move v5, v8

    move-object/from16 v17, v6

    move-object/from16 v6, p3

    .line 248
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 250
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v14, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :cond_c7
    :goto_c7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5f

    :cond_ca
    const/4 v0, 0x0

    .line 256
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;

    invoke-direct {v1, v10}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;-><init>(Landroid/util/SparseArrayMap;)V

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManagerInternal;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return v7
.end method

.method public isEnforceMode()Z
    .registers 1

    .line 414
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result p0

    return p0
.end method

.method public isIgnoreOtaMode()Z
    .registers 1

    .line 427
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result p0

    return p0
.end method

.method public isImplicitWhitelistMode()Z
    .registers 1

    .line 442
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result p0

    return p0
.end method

.method public isImplicitWhitelistSystemMode()Z
    .registers 1

    .line 450
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result p0

    return p0
.end method

.method public isLogMode()Z
    .registers 1

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result p0

    return p0
.end method
