.class public Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferencesManager"
.end annotation


# static fields
.field public static final METRICS_DIR:Ljava/lang/String; = "recovery_system"

.field public static final METRICS_PREFS_FILE:Ljava/lang/String; = "RecoverySystemMetricsPrefs.xml"


# instance fields
.field public final mMetricsPrefsFile:Ljava/io/File;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "recovery_system"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/io/File;

    const-string v3, "RecoverySystemMetricsPrefs.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mMetricsPrefsFile:Ljava/io/File;

    .line 218
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public deletePrefsFile()V
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mMetricsPrefsFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "RecoverySystemService"

    const-string v0, "Failed to delete metrics prefs"

    .line 250
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 3

    .line 228
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 4

    .line 223
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public declared-synchronized incrementIntKey(Ljava/lang/String;I)V
    .registers 3

    monitor-enter p0

    .line 243
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putInt(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 245
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 3

    .line 238
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 4

    .line 233
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
