.class public Lcom/android/server/ibs/sleepmode/SharePrefUtils;
.super Ljava/lang/Object;
.source "SharePrefUtils.java"


# static fields
.field public static final PREF_SLEEP_MODE:Ljava/lang/String; = "sleep_mode_pref"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    :try_start_0
    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 53
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return p2
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    :try_start_0
    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 19
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return p2
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 6

    :try_start_0
    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 36
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide p0

    :catch_d
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-wide p2
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 46
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 12
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    const-string/jumbo v0, "sleep_mode_pref"

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 29
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
