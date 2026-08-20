.class public final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageManagerHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    }
.end annotation


# static fields
.field public static final TAB1:Ljava/lang/String; = "    "


# instance fields
.field public final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mInitializedUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$ayZO13uRzYuo0ByCOVWJQW0wwMw(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->lambda$initializeForUser$0(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddPackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 1606
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    .line 1609
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    .line 1610
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1611
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method private synthetic lambda$initializeForUser$0(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    .line 1626
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method


# virtual methods
.method public final addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 6

    .line 1677
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    if-nez v1, :cond_21

    .line 1680
    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers-IA;)V

    .line 1681
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 1683
    :cond_21
    invoke-static {v1, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fputmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 1685
    :goto_24
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1686
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_35
    move-exception p0

    .line 1687
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 4

    .line 1665
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1667
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Android package for \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' could not be found; continuing as if package was never added"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "OverlayManager"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 1671
    :cond_2a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public doesTargetDefineOverlayable(Ljava/lang/String;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1787
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 p1, 0x0

    .line 1794
    :try_start_7
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p1

    .line 1795
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 1799
    :try_start_13
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_16

    :catchall_16
    return p0

    :catchall_17
    move-exception p0

    if-eqz p1, :cond_1d

    :try_start_1a
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1d

    .line 1803
    :catchall_1d
    :cond_1d
    throw p0

    .line 1789
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to get target package"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 9

    .line 1834
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    const-string v1, "AndroidPackage cache"

    .line 1835
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->isVerbose()Z

    move-result p2

    if-nez p2, :cond_2f

    .line 1838
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " package(s)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    monitor-exit v0

    return-void

    .line 1842
    :cond_2f
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_3e

    const-string p0, "    <empty>"

    .line 1843
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    monitor-exit v0

    return-void

    :cond_3e
    const/4 p2, 0x0

    .line 1847
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_45
    if-ge p2, v1, :cond_8c

    .line 1848
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1849
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " users="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ", "

    .line 1851
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_45

    .line 1853
    :cond_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1808
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .registers 5

    .line 1812
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1815
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 1816
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1818
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 1878
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigSignaturePackage()Ljava/lang/String;
    .registers 3

    .line 1754
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    .line 1757
    array-length v0, p0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    goto :goto_10

    :cond_e
    aget-object p0, p0, v1

    :goto_10
    return-object p0
.end method

.method public getNamedActors()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1735
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1765
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 p1, 0x0

    .line 1772
    :try_start_7
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p1

    .line 1773
    invoke-virtual {p1, p2}, Landroid/content/res/ApkAssets;->getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 1777
    :try_start_13
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_16

    :catchall_16
    return-object p0

    :catchall_17
    move-exception p0

    if-eqz p1, :cond_1d

    :try_start_1a
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1d

    .line 1781
    :catchall_1d
    :cond_1d
    throw p0

    .line 1767
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to get target package"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 8

    .line 1644
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1645
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    if-eqz v1, :cond_21

    .line 1646
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1647
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_53

    return-object p0

    :cond_21
    const/4 v1, 0x0

    .line 1650
    :try_start_22
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_32
    .catchall {:try_start_22 .. :try_end_28} :catchall_53

    if-nez v2, :cond_2c

    .line 1651
    :try_start_2a
    monitor-exit v0

    return-object v1

    .line 1658
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catch_32
    move-exception p0

    const-string v2, "OverlayManager"

    .line 1654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check availability of package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for user "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    monitor-exit v0

    return-object v1

    :catchall_53
    move-exception p0

    .line 1659
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2a .. :try_end_55} :catchall_53

    throw p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 1867
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 2

    .line 1825
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public initializeForUser(I)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1623
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1624
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1625
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 1629
    :cond_22
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    .line 1630
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    :goto_2e
    if-ge v2, v3, :cond_58

    .line 1631
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    .line 1632
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1633
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1636
    :cond_58
    monitor-exit v0

    return-object v1

    :catchall_5a
    move-exception p0

    .line 1637
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .registers 3

    .line 1729
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3

    .line 1714
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 1724
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3

    .line 1720
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;",
            ")V"
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V

    return-void
.end method

.method public final removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V
    .registers 5

    .line 1704
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1705
    :try_start_3
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1706
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 1707
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->-$$Nest$fgetmPackage(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final removePackageUser(Ljava/lang/String;I)V
    .registers 5

    .line 1693
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1694
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    if-nez p1, :cond_f

    .line 1696
    monitor-exit v0

    return-void

    .line 1698
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V

    .line 1699
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    const/4 p3, 0x0

    .line 1744
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    if-nez p0, :cond_a

    const/4 p3, 0x1

    :catch_a
    :cond_a
    return p3
.end method
