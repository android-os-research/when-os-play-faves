.class public Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
.super Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;
.source "PackageManagerBackupController.java"


# static fields
.field public static DEBUG:Z = true

.field public static final KEY_REBOOT_CNT_BY_PACKAGES:Ljava/lang/String; = "reboot_cnt_by_packages"

.field public static final KEY_REBOOT_CNT_BY_PKGS_STATE:Ljava/lang/String; = "reboot_cnt_by_packages_state"

.field public static final PKGS_BACKUP_FILE_NAME:Ljava/lang/String; = "packages-backup.xml"

.field public static final PKGS_FILE_NAME:Ljava/lang/String; = "packages.xml"

.field public static final PKGS_STATE_BACKUP_FILE_NAME:Ljava/lang/String; = "package-restrictions-backup.xml"

.field public static final PKGS_STATE_FILE_NAME:Ljava/lang/String; = "package-restrictions.xml"

.field public static final TAG:Ljava/lang/String; = "PmBackupController"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackagesBackupFile:Ljava/io/File;

.field public final mPackagesFile:Ljava/io/File;

.field public mRebootCntByPackages:I

.field public mRebootCntByPkgsState:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V
    .registers 4

    .line 37
    invoke-direct {p0, p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getPackagesFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getPackagesBackupFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesBackupFile:Ljava/io/File;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "reboot_cnt_by_packages"

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const-string/jumbo p1, "reboot_cnt_by_packages_state"

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    return-void
.end method


# virtual methods
.method public getBackupPackagesFile()Ljava/io/File;
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 132
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "packages.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    .line 137
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file or not exists in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PmBackupController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupPackagesStateFile(I)Ljava/io/File;
    .registers 5

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 144
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    return-object v0

    .line 150
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid dir or not exists in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for user "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PmBackupController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getControllerName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "pm_settings_backup"

    return-object p0
.end method

.method public final getPackagesBackupFile()Ljava/io/File;
    .registers 3

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "packages-backup.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPackagesFile()Ljava/io/File;
    .registers 3

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "packages.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRebootCntByPackageState()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    return p0
.end method

.method public getRebootCntByPackages()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    return p0
.end method

.method public final getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5

    .line 171
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "package-restrictions-backup.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserPackagesStateFile(I)Ljava/io/File;
    .registers 5

    .line 165
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "package-restrictions.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public incRebootCntByPackages()V
    .registers 4

    .line 45
    iget v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const-string/jumbo v2, "reboot_cnt_by_packages"

    .line 46
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public incRebootCntByPkgsState()V
    .registers 4

    .line 50
    iget v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    const-string/jumbo v2, "reboot_cnt_by_packages_state"

    .line 51
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public onSaveFiles(Ljava/io/File;)Z
    .registers 8

    const-string v0, "PmBackupController"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveFiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x0

    if-nez v2, :cond_31

    const-string p0, "PmBackupController"

    const-string p1, "No UserManager registered"

    .line 82
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 85
    :cond_31
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 86
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->savePackagesFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 88
    monitor-exit v4

    return v3

    .line 90
    :cond_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_80

    .line 92
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 94
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 95
    :try_start_54
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->savePackagesStateForUser(Ljava/io/File;I)Z

    .line 96
    monitor-exit v4

    goto :goto_45

    :catchall_5b
    move-exception p0

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5b

    throw p0

    :cond_5e
    const-string p0, "PmBackupController"

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total time: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_80
    move-exception p0

    .line 90
    :try_start_81
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public onSystemReady()V
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->resetRebootCounts()V

    return-void
.end method

.method public resetRebootCounts()V
    .registers 4

    .line 155
    sget-boolean v0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "PmBackupController"

    const-string v1, "Reset reboot counts"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 159
    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    const-string/jumbo v1, "reboot_cnt_by_packages"

    .line 160
    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(Ljava/lang/String;IZ)V

    .line 161
    iget v1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    const-string/jumbo v2, "reboot_cnt_by_packages_state"

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final savePackagesFile(Ljava/io/File;)Z
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_20

    .line 108
    :cond_11
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "packages.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    const-string p0, "PmBackupController"

    const-string p1, "There\'s something wrong, skip copying of the packages file"

    .line 105
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final savePackagesStateForUser(Ljava/io/File;I)Z
    .registers 9

    .line 113
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "PmBackupController"

    if-eqz v2, :cond_57

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_57

    .line 120
    :cond_18
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "users/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to make dirs for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 125
    :cond_4a
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "package-restrictions.xml"

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0

    .line 116
    :cond_57
    :goto_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "There\'s something wrong, skip copying of the packages state file for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
