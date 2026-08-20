.class public Lcom/android/server/pm/UnknownSourceAppManager;
.super Ljava/lang/Object;
.source "UnknownSourceAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UnknownSourceAppManager$Helper;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final GOOGLE_STORE_NAME:Ljava/lang/String; = "com.android.vending"

.field public static final PACKAGE_INSTALLER_NAME:Ljava/lang/String; = "com.google.android.packageinstaller"

.field public static final SAMSUNG_STORE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final TAG:Ljava/lang/String; = "UnknownSourceAppManager"

.field public static final UNKNOWN_SOURCE_PACKAGE_PATH:Ljava/lang/String; = "/data/system/UnknownSourceAppList.xml"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnknownLock"
        }
    .end annotation
.end field

.field public final mUnknownLock:Ljava/lang/Object;

.field public mUnknownSourceAppSet:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnknownLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Smi8oGi_cZoCovFPoC7dFsSipmQ(Ljava/util/function/Function;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/UnknownSourceAppManager;->lambda$pruneUnknownSourcePackages$0(Ljava/util/function/Function;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gx9Wwzo3PBDI-ZLPi7EeNCpVWQk(Lcom/android/server/pm/UnknownSourceAppManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UnknownSourceAppManager;->lambda$writeUnknownPackageXmlAsync$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vXaAwnugERuFWznErBWGoRegjic(Lcom/android/server/pm/UnknownSourceAppManager;Ljava/util/List;Ljava/util/function/Function;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UnknownSourceAppManager;->lambda$buildListFromInstalledPackages$2(Ljava/util/List;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 49
    new-instance v0, Lcom/samsung/android/server/pm/install/PmConfigParser;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PmConfigParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$buildListFromInstalledPackages$2(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 6

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 135
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_21
    iget-object v2, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    goto :goto_4

    :catchall_2a
    move-exception p0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    return-void
.end method

.method public static synthetic lambda$pruneUnknownSourcePackages$0(Ljava/util/function/Function;Ljava/lang/String;)Z
    .registers 2

    .line 90
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$writeUnknownPackageXmlAsync$1()V
    .registers 1

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/UnknownSourceAppManager;->writeUnknownPackageXmlSync()V

    return-void
.end method


# virtual methods
.method public addUnknownSourceApp(Ljava/lang/String;)V
    .registers 5

    const-string v0, "UnknownSourceAppManager"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUnknownSourceApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_19
    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public buildListFromInstalledPackages(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UnknownSourceAppManager;Ljava/util/List;Ljava/util/function/Function;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 p1, 0x5

    .line 143
    :try_start_f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_14} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_22

    :catch_15
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    :catch_1a
    move-exception p1

    const/4 p2, 0x1

    .line 145
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 146
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 150
    :goto_22
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public getUnknownSourcePackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 79
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isUnknownSourcePackage(Ljava/lang/String;)Z
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public loadListFromFile()Z
    .registers 2

    const-string v0, "/data/system/UnknownSourceAppList.xml"

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UnknownSourceAppManager;->loadListFromFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadListFromFile(Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 121
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 123
    iget-object v1, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 124
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public pruneUnknownSourcePackages(Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeUnknownSourceApp(Ljava/lang/String;)V
    .registers 5

    const-string v0, "UnknownSourceAppManager"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUnknownSourceApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 71
    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public writeUnknownPackageXmlAsync()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UnknownSourceAppManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public writeUnknownPackageXmlSync()V
    .registers 2

    const-string v0, "/data/system/UnknownSourceAppList.xml"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UnknownSourceAppManager;->writeUnknownPackageXmlSync(Ljava/lang/String;)V

    return-void
.end method

.method public writeUnknownPackageXmlSync(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "UnknownSourceAppManager"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeUnknownPackageXmlSync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->writePackagesToXml(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method
