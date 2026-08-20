.class public Lcom/android/server/backup/utils/BackupManagerMonitorUtils;
.super Ljava/lang/Object;
.source "BackupManagerMonitorUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 7

    if-eqz p0, :cond_3a

    .line 57
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.backup.extra.LOG_EVENT_ID"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    .line 59
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_2a

    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 61
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 63
    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 66
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p2

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2a
    if-eqz p4, :cond_2f

    .line 69
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    :cond_2f
    invoke-interface {p0, v0}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    const-string p0, "BackupManagerService"

    const-string p1, "backup manager monitor went away"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;
    .registers 4

    if-nez p0, :cond_7

    .line 110
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 112
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    if-nez p0, :cond_7

    .line 93
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 95
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 3

    if-nez p0, :cond_7

    .line 127
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 129
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
