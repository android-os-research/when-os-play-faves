.class public Lcom/samsung/android/server/pm/PmSharedPreferences;
.super Ljava/lang/Object;
.source "PmSharedPreferences.java"


# static fields
.field public static final PREF_PM_SETTINGS_XML_NAME:Ljava/lang/String; = "samsung_pm_settings.xml"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/pm/PmSharedPreferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    .line 17
    const-class v0, Lcom/samsung/android/server/pm/PmSharedPreferences;

    monitor-enter v0

    .line 18
    :try_start_3
    new-instance v1, Ljava/io/File;

    .line 19
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "samsung_pm_settings.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 22
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .line 27
    const-class v0, Lcom/samsung/android/server/pm/PmSharedPreferences;

    monitor-enter v0

    .line 28
    :try_start_3
    new-instance v1, Ljava/io/File;

    .line 29
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "samsung_pm_settings.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method
