.class public Lcom/android/server/pm/dex/ViewCompiler;
.super Ljava/lang/Object;
.source "ViewCompiler.java"


# instance fields
.field public final mInstallLock:Ljava/lang/Object;

.field public final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/pm/Installer;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    return-void
.end method


# virtual methods
.method public compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 8

    .line 42
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/code_cache/compiled_view.dex"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compiling layouts in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_69

    .line 51
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_64

    .line 52
    :try_start_52
    iget-object p0, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    .line 53
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    .line 52
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_61

    .line 56
    :try_start_5d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_69

    return p0

    :catchall_61
    move-exception p0

    .line 54
    :try_start_62
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p0

    .line 56
    :try_start_65
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw p0
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p0

    const-string p1, "PackageManager"

    const-string v0, "Failed to compile layouts"

    .line 59
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
