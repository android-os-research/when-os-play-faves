.class public Lcom/android/server/pm/dex/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/DexManager$DexSearchResult;,
        Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;,
        Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static DEX_SEARCH_FOUND_PRIMARY:I = 0x0

.field public static DEX_SEARCH_FOUND_SECONDARY:I = 0x0

.field public static DEX_SEARCH_FOUND_SPLIT:I = 0x0

.field public static DEX_SEARCH_NOT_FOUND:I = 0x0

.field public static final ISOLATED_PROCESS_PACKAGE_SUFFIX:Ljava/lang/String; = "..isolated"

.field public static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB:Ljava/lang/String; = "pm.dexopt.priv-apps-oob"

.field public static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB_LIST:Ljava/lang/String; = "pm.dexopt.priv-apps-oob-list"

.field public static final SYSTEM_SERVER_COMPILER_FILTER:Ljava/lang/String; = "verify"

.field public static final TAG:Ljava/lang/String; = "DexManager"


# instance fields
.field public mBatteryManager:Landroid/os/BatteryManager;

.field public final mContext:Landroid/content/Context;

.field public final mCriticalBatteryLevel:I

.field public final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field public final mInstallLock:Ljava/lang/Object;

.field public final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field public final mPackageCodeLocationsCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageCodeLocationsCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public final mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEX_SEARCH_FOUND_PRIMARY()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEX_SEARCH_FOUND_SECONDARY()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEX_SEARCH_FOUND_SPLIT()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEX_SEARCH_NOT_FOUND()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smputIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "DexManager"

    const/4 v1, 0x3

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    const/4 v0, 0x0

    .line 129
    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v0, 0x1

    .line 130
    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    const/4 v0, 0x2

    .line 131
    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    .line 132
    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/pm/IPackageManager;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 122
    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    .line 142
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 144
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 145
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 146
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 147
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 148
    new-instance p2, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {p2, p3}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 149
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz p1, :cond_4a

    .line 155
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    if-nez p2, :cond_3c

    const-string p2, "DexManager"

    const-string p3, "Power Manager is unavailable at time of Dex Manager start"

    .line 158
    invoke-static {p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    goto :goto_4d

    :cond_4a
    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    :goto_4d
    return-void
.end method

.method public static auditUncompressedDexInApk(Ljava/lang/String;)Z
    .registers 13

    const-string v0, "DexManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 958
    :try_start_4
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_85
    .catchall {:try_start_4 .. :try_end_9} :catchall_83

    .line 960
    :try_start_9
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    .line 962
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 963
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 964
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 965
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2a} :catch_81
    .catchall {:try_start_9 .. :try_end_2a} :catchall_7e

    const-string v7, "APK "

    if-eqz v6, :cond_4e

    .line 967
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has compressed dex code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 967
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    move v4, v1

    goto :goto_e

    .line 969
    :cond_4e
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_e

    .line 971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has unaligned dex code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 971
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_79} :catch_81
    .catchall {:try_start_2e .. :try_end_79} :catchall_7e

    goto :goto_4c

    .line 983
    :cond_7a
    :try_start_7a
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7d

    :catch_7d
    return v4

    :catchall_7e
    move-exception p0

    move-object v2, v3

    goto :goto_9f

    :catch_81
    move-object v2, v3

    goto :goto_85

    :catchall_83
    move-exception p0

    goto :goto_9f

    .line 978
    :catch_85
    :goto_85
    :try_start_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing APK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_83

    if-eqz v2, :cond_9e

    .line 983
    :try_start_9b
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9e

    :catch_9e
    :cond_9e
    return v1

    :goto_9f
    if-eqz v2, :cond_a4

    :try_start_a1
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a4

    .line 986
    :catch_a4
    :cond_a4
    throw p0
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 918
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isPackageSelectedToRunOob(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "pm.dexopt.priv-apps-oob"

    const/4 v1, 0x0

    .line 928
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "pm.dexopt.priv-apps-oob-list"

    const-string v2, "ALL"

    .line 929
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-static {v0, v1, p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/util/Collection;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string p0, "ALL"

    .line 940
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_e

    return v1

    :cond_e
    const-string p0, ","

    .line 943
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    move v2, v0

    :goto_16
    if-ge v2, p1, :cond_24

    aget-object v3, p0, v2

    .line 944
    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    return v0
.end method

.method public static isPlatformPackage(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "android"

    .line 896
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 900
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method


# virtual methods
.method public final areBatteryThermalOrMemoryCritical()Z
    .registers 4

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/pm/dex/DexManager;->getBatteryManager()Landroid/os/BatteryManager;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_17

    const/4 v2, 0x6

    .line 1042
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    if-ne v2, v1, :cond_17

    const/4 v2, 0x4

    .line 1044
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    if-le v0, v2, :cond_21

    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_23

    .line 1047
    invoke-virtual {p0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result p0

    if-lt p0, v1, :cond_23

    :cond_21
    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public final cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 8

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 416
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p4, :cond_23

    .line 418
    array-length p1, p4

    const/4 p2, 0x0

    :goto_17
    if-ge p2, p1, :cond_23

    aget-object p3, p4, p2

    if-eqz p3, :cond_20

    .line 424
    invoke-virtual {p0, p3, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 428
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final cachePackageInfo(Landroid/content/pm/PackageInfo;I)V
    .registers 11

    .line 401
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    .line 402
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 404
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public deleteOptimizedFiles(Lcom/android/server/pm/dex/ArtPackageInfo;)J
    .registers 12

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getCodePaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1066
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getInstructionSets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1068
    :try_start_2f
    iget-object v8, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1069
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getOatDir()Ljava/lang/String;

    move-result-object v9

    .line 1068
    invoke-virtual {v8, v0, v5, v7, v9}, Lcom/android/server/pm/Installer;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7
    :try_end_39
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_39} :catch_3b

    add-long/2addr v2, v7

    goto :goto_23

    :catch_3b
    move-exception v4

    .line 1071
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed deleting oat files for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DexManager"

    invoke-static {v8, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto :goto_23

    :cond_54
    if-eqz v4, :cond_58

    const-wide/16 v2, -0x1

    :cond_58
    return-wide v2
.end method

.method public dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 15

    .line 525
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DexManager"

    if-eqz v0, :cond_13

    const-string p0, "System server jars should be optimized with dexoptSystemServer"

    .line 529
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 533
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v0

    .line 534
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-virtual {p0, v3}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v4

    .line 536
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_43

    .line 537
    sget-boolean p0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz p0, :cond_42

    .line 538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No secondary dex use for package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return v6

    .line 544
    :cond_43
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    move v5, v6

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 545
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 546
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 550
    :try_start_68
    invoke-virtual {p0}, Lcom/android/server/pm/dex/DexManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 551
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v12

    .line 550
    invoke-interface {v9, v3, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_76} :catch_b0

    if-nez v9, :cond_a2

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find package when compiling secondary dex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 560
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v8, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v7

    invoke-virtual {v8, v3, v7}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    goto :goto_50

    .line 566
    :cond_a2
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v9, v8, v7, p1}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v7

    if-eqz v5, :cond_ae

    const/4 v5, -0x1

    if-eq v7, v5, :cond_ae

    goto :goto_4f

    :cond_ae
    move v5, v1

    goto :goto_50

    :catch_b0
    move-exception p0

    .line 553
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_b7
    return v5
.end method

.method public dexoptSystemServer(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 14

    .line 585
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "DexManager"

    if-nez v0, :cond_26

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non system server package used when trying to dexopt system server:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 586
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_26
    const-string/jumbo v0, "verify"

    .line 597
    invoke-virtual {p1, v0}, Lcom/android/server/pm/dex/DexoptOptions;->overrideCompilerFilter(Ljava/lang/String;)Lcom/android/server/pm/dex/DexoptOptions;

    move-result-object p1

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v0

    .line 601
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-virtual {p0, v3}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v4

    .line 603
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4e

    .line 604
    sget-boolean p0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz p0, :cond_4d

    const-string p0, "No dex files recorded for system server"

    .line 605
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return v6

    .line 613
    :cond_4e
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v6

    move v7, v5

    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ef

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 614
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 615
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    new-array v10, v6, [Ljava/lang/String;

    .line 616
    invoke-static {v9, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    new-array v11, v6, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v11}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-nez v10, :cond_ad

    .line 617
    sget-boolean v10, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v10, :cond_9a

    .line 618
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "A dex file previously loaded by System Server does not exist  anymore: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_9a
    iget-object v10, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 622
    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v8

    .line 621
    invoke-virtual {v10, v3, v9, v8}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_ab

    if-eqz v5, :cond_a9

    goto :goto_ab

    :cond_a9
    move v5, v6

    goto :goto_5c

    :cond_ab
    :goto_ab
    const/4 v5, 0x1

    goto :goto_5c

    .line 626
    :cond_ad
    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v10

    if-nez v10, :cond_c4

    .line 627
    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v10

    if-eqz v10, :cond_ba

    goto :goto_c4

    .line 636
    :cond_ba
    invoke-virtual {v0, v9, v8, p1}, Lcom/android/server/pm/PackageDexOptimizer;->dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v8

    if-eq v7, v1, :cond_5c

    if-eqz v8, :cond_5c

    move v7, v8

    goto :goto_5c

    .line 628
    :cond_c4
    :goto_c4
    invoke-virtual {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v8

    if-eqz v8, :cond_ce

    const-string/jumbo v8, "unsupported"

    goto :goto_d1

    :cond_ce
    const-string/jumbo v8, "variable"

    .line 631
    :goto_d1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping dexopt for system server path loaded with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " class loader context: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    :cond_ef
    if-eqz v5, :cond_f6

    .line 649
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    :cond_f6
    return v7
.end method

.method public getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 823
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getBatteryManager()Landroid/os/BatteryManager;
    .registers 3

    .line 1028
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 1029
    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 1032
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method public getCompilationReasonForInstallScenario(I)I
    .registers 4

    .line 996
    invoke-virtual {p0}, Lcom/android/server/pm/dex/DexManager;->areBatteryThermalOrMemoryCritical()Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    if-eq p1, v1, :cond_24

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    if-ne p1, v0, :cond_16

    if-eqz p0, :cond_14

    const/16 p0, 0x8

    return p0

    :cond_14
    const/4 p0, 0x6

    return p0

    .line 1019
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid installation scenario"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    if-eqz p0, :cond_22

    const/4 p0, 0x7

    return p0

    :cond_22
    const/4 p0, 0x5

    return p0

    :cond_24
    const/4 p0, 0x4

    return p0

    :cond_26
    return v0
.end method

.method public final getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .registers 9

    .line 833
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 835
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v1

    .line 836
    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v2, :cond_17

    .line 838
    new-instance p1, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->-$$Nest$fgetmPackageName(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object p1

    .line 844
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 845
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 846
    invoke-virtual {v2, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v3

    .line 847
    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v3, v4, :cond_24

    .line 848
    new-instance p1, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->-$$Nest$fgetmPackageName(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit v0

    return-object p1

    .line 851
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_ac

    .line 861
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 862
    invoke-virtual {p0, p2}, Lcom/android/server/pm/dex/DexManager;->isSystemServerDexPathSupportedForOdex(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 868
    new-instance p1, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const-string p2, "android"

    sget p3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object p1

    :cond_5c
    const-string p1, "DexManager"

    .line 870
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System server loads dex files outside paths supported for odex: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_72
    sget-boolean p1, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz p1, :cond_a3

    .line 880
    :try_start_76
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a3

    const-string p3, "DexManager"

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dex loaded with symlink. dexPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " dexPathReal="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_a3} :catch_a3

    .line 891
    :catch_a3
    :cond_a3
    new-instance p1, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 p2, 0x0

    sget p3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object p1

    :catchall_ac
    move-exception p0

    .line 851
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object p0
.end method

.method public final getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;
    .registers 2

    .line 664
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 665
    new-instance p1, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_10

    .line 666
    :cond_e
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    :goto_10
    return-object p1
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "package"

    .line 173
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 175
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 2

    .line 502
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object p0

    if-nez p0, :cond_d

    .line 503
    new-instance p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    :cond_d
    return-object p0
.end method

.method public hasInfoOnPackage(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 516
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isSystemServerDexPathSupportedForOdex(Ljava/lang/String;)Z
    .registers 6

    .line 313
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "/apex/"

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    move v2, v0

    .line 318
    :goto_14
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 319
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    return v1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2a
    return v0
.end method

.method public load(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 334
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_16

    :catch_4
    move-exception p1

    .line 336
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 337
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    const-string p0, "DexManager"

    const-string v0, "Exception while loading. Starting with a fresh state."

    .line 338
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public final loadInternal(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "DexManager"

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 433
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 439
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 440
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 442
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 449
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v6, v7}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 451
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v6, v7}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 455
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v5, :cond_34

    .line 457
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_34

    .line 463
    :cond_75
    :try_start_75
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_85

    goto :goto_90

    :catch_85
    move-exception p1

    .line 468
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    const-string v2, "Exception while loading package dex usage. Starting with a fresh state."

    .line 469
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :goto_90
    :try_start_90
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_a1

    :catch_96
    move-exception p1

    .line 476
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    const-string p0, "Exception while loading package dynamic code usage. Starting with a fresh state."

    .line 477
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a1
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1d

    :catch_4
    move-exception p0

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while notifying dex load for package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, p4

    if-nez p2, :cond_9

    return-void

    .line 213
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v12, "DexManager"

    if-eqz v2, :cond_17

    const-string v0, "Bad call to notifyDexLoad: class loaders list is empty"

    .line 214
    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_17
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading dex files "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in unsupported ISA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_45
    move-object/from16 v13, p3

    .line 233
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p5, :cond_5c

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..isolated"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5c
    move-object v14, v2

    .line 237
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_65
    :goto_65
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 240
    invoke-virtual {v0, v1, v4, v11}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v3

    .line 242
    sget-boolean v5, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v5, :cond_a5

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " loads from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_a5
    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v6

    sget v7, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v6, v7, :cond_115

    .line 251
    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 253
    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v7

    sget v8, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v7, v8, :cond_c9

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v7

    sget v8, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v7, v8, :cond_c8

    goto :goto_c9

    :cond_c8
    const/4 v6, 0x0

    :cond_c9
    :goto_c9
    move v7, v6

    if-eqz v7, :cond_d9

    if-nez v5, :cond_d9

    .line 256
    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d9

    goto :goto_65

    :cond_d9
    if-nez v7, :cond_e6

    .line 269
    iget-object v5, v0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11, v4, v6, v8}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_e6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 282
    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v9, :cond_65

    .line 285
    invoke-static {v9}, Ldalvik/system/VMRuntime;->isValidClassLoaderContext(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 289
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v8, v14

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 292
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    goto/16 :goto_65

    :cond_115
    if-eqz v5, :cond_65

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find owning package for dex file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    :cond_12d
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 385
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 386
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 388
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

    goto :goto_28

    .line 390
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 391
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 393
    :cond_23
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removeUserPackage(Ljava/lang/String;I)V

    :goto_28
    return-void
.end method

.method public notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    return-void

    .line 350
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "notifyPackageInstalled called with USER_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 362
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 367
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 368
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    :cond_16
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 16

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 677
    sget-boolean p0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz p0, :cond_28

    const-string p0, "DexManager"

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No secondary dex use for package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void

    .line 685
    :cond_29
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_36
    move v2, v1

    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 686
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 687
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    const/4 v5, 0x0

    .line 694
    :try_start_50
    invoke-virtual {p0}, Lcom/android/server/pm/dex/DexManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 695
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v9

    .line 694
    invoke-interface {v6, p1, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5e} :catch_5e

    :catch_5e
    const/4 v12, 0x1

    if-nez v5, :cond_93

    const-string v4, "DexManager"

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find package when compiling secondary dex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 702
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 706
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 705
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_91

    if-eqz v2, :cond_36

    :cond_91
    :goto_91
    move v2, v12

    goto :goto_37

    .line 713
    :cond_93
    invoke-static {p1}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d0

    new-array v5, v1, [Ljava/lang/String;

    .line 714
    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 715
    sget-boolean v5, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v5, :cond_c1

    const-string v5, "DexManager"

    .line 716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A dex file previously loaded by System Server does not exist  anymore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_c1
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 720
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 719
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_91

    if-eqz v2, :cond_36

    goto :goto_91

    .line 726
    :cond_d0
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 728
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v6, :cond_de

    .line 729
    invoke-static {v6, v4}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_de

    move v11, v12

    goto :goto_ea

    .line 731
    :cond_de
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v6, :cond_146

    .line 732
    invoke-static {v6, v4}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_146

    const/4 v6, 0x2

    move v11, v6

    .line 742
    :goto_ea
    iget-object v13, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 744
    :try_start_ed
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    .line 745
    iget-object v6, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object v5, v6

    move-object v6, v4

    move-object v7, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/Installer;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5
    :try_end_107
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ed .. :try_end_107} :catch_10a
    .catchall {:try_start_ed .. :try_end_107} :catchall_108

    goto :goto_12e

    :catchall_108
    move-exception p0

    goto :goto_144

    :catch_10a
    move-exception v5

    :try_start_10b
    const-string v6, "DexManager"

    .line 748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got InstallerException when reconciling dex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 748
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v12

    .line 751
    :goto_12e
    monitor-exit v13
    :try_end_12f
    .catchall {:try_start_10b .. :try_end_12f} :catchall_108

    if-nez v5, :cond_37

    .line 753
    iget-object v5, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 754
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 753
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_91

    if-eqz v2, :cond_141

    goto/16 :goto_91

    :cond_141
    move v12, v1

    goto/16 :goto_91

    .line 751
    :goto_144
    :try_start_144
    monitor-exit v13
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_108

    throw p0

    :cond_146
    const-string v5, "DexManager"

    .line 735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not infer CE/DE storage for path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v5, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 737
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 736
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_91

    if-eqz v2, :cond_36

    goto/16 :goto_91

    :cond_16c
    if-eqz v2, :cond_173

    .line 759
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    :cond_173
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    .line 768
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v13

    .line 770
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v14, 0x0

    if-ne v2, v3, :cond_1d

    .line 771
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v1, "Package not found"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 773
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 774
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v1, "Dex path does not belong to package"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 776
    :cond_31
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_cf

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_43

    goto/16 :goto_cf

    :cond_43
    if-eqz p3, :cond_48

    const-string v2, ".shared.module"

    goto :goto_4c

    .line 785
    :cond_48
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v2

    :goto_4c
    move-object v15, v2

    .line 786
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v9, v10

    move v8, v14

    move/from16 v16, v8

    :goto_59
    if-ge v8, v9, :cond_84

    aget-object v6, v10, v8

    .line 787
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v17, 0x0

    const-string v18, "=VariableClassLoaderContext="

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v19, v8

    move-object v8, v15

    move/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v10

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    or-int v16, v16, v2

    add-int/lit8 v8, v19, 0x1

    move-object/from16 v10, v18

    move/from16 v9, v20

    goto :goto_59

    :cond_84
    if-eqz v16, :cond_8b

    .line 795
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 798
    :cond_8b
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 799
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 802
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 805
    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c6

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to optimize dex module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_c6
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v1, 0x1

    const-string v2, "Dex module registered successfully"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 778
    :cond_cf
    :goto_cf
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v1, "Main apks cannot be registered"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public writePackageDexUsageNow()V
    .registers 2

    .line 908
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeNow()V

    .line 909
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    return-void
.end method
