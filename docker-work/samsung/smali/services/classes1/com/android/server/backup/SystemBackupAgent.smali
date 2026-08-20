.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field public static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field public static final APP_LOCALES_HELPER:Ljava/lang/String; = "app_locales"

.field public static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field public static final PEOPLE_HELPER:Ljava/lang/String; = "people"

.field public static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field public static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field public static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field public static final SLICES_HELPER:Ljava/lang/String; = "slices"

.field public static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field public static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field public static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field public static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field public static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field public static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field public static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field public static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field public static final sEligibleForMultiUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/io/File;

    .line 73
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 79
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/io/File;

    .line 81
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    const-string/jumbo v0, "permissions"

    const-string/jumbo v1, "notifications"

    const-string v2, "account_sync_settings"

    const-string v3, "app_locales"

    .line 86
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleForMultiUser:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    return-void
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .registers 4

    .line 132
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleForMultiUser:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 136
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onCreate(Landroid/os/UserHandle;I)V
    .registers 3

    .line 93
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    .line 95
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 97
    new-instance p1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string p2, "account_sync_settings"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 98
    new-instance p1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    const-string/jumbo p2, "preferred_activities"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 99
    new-instance p1, Lcom/android/server/backup/NotificationBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(I)V

    const-string/jumbo p2, "notifications"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 100
    new-instance p1, Lcom/android/server/backup/PermissionBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    const-string/jumbo p2, "permissions"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 101
    new-instance p1, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {p1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo p2, "usage_stats"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 102
    new-instance p1, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {p1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    const-string/jumbo p2, "shortcut_manager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 103
    new-instance p1, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {p1}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    const-string p2, "account_manager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 104
    new-instance p1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {p1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo p2, "slices"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 105
    new-instance p1, Lcom/android/server/backup/PeopleBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    const-string/jumbo p2, "people"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 106
    new-instance p1, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    const-string p2, "app_locales"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 124
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "system_files"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemBackupAgent"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "r"

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const-string/jumbo v5, "wallpaper"

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "wallpaper_info.xml"

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 155
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_50

    .line 157
    :cond_40
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 158
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_50

    :cond_4e
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_50
    move-object v14, v2

    if-nez v14, :cond_74

    .line 165
    :try_start_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unrecognized system file: [ "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    .line 167
    invoke-static/range {v6 .. v14}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    if-eqz v4, :cond_bc

    .line 171
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_89} :catch_a6

    if-eqz v0, :cond_bc

    .line 175
    :try_start_8b
    invoke-interface {v0}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8e} :catch_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_a6

    goto :goto_bc

    :catch_8f
    move-exception v0

    move-object v1, v0

    .line 177
    :try_start_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t restore settings\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a5} :catch_a6

    goto :goto_bc

    :catch_a6
    if-eqz v4, :cond_bc

    .line 184
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 185
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_bc
    :goto_bc
    return-void
.end method
