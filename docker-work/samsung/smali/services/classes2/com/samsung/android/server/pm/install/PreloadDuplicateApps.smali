.class public Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;
.super Ljava/lang/Object;
.source "PreloadDuplicateApps.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "PreloadDuplicateApps"


# instance fields
.field public final mDuplicateDataPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mSystemPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$r_Jib3QBtpZO1yhhh4q4wDWwzsI(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->lambda$addSystemPackagesTo$0(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    return-void
.end method

.method public static synthetic lambda$addSystemPackagesTo$0(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add system package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") to expectingBetter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadDuplicateApps"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addDuplicatePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "PreloadDuplicateApps"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add duplicate package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_31
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public addSystemPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "PreloadDuplicateApps"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add system package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_31
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public addSystemPackagesTo(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 77
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public clearPackages()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 84
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public hasDuplicatePackage(Ljava/lang/String;)Z
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public installDuplicatePackages(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 90
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public isDuplicatePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;ZI)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    .line 26
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2a

    :cond_c
    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_11

    return p0

    .line 32
    :cond_11
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p4

    if-eqz p4, :cond_2a

    if-nez p3, :cond_2a

    .line 33
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide p3

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-lez p1, :cond_2a

    const/4 p0, 0x1

    :cond_2a
    :goto_2a
    return p0
.end method
