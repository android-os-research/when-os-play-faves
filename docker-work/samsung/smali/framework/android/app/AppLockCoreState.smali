.class public Landroid/app/AppLockCoreState;
.super Ljava/lang/Object;
.source "AppLockCoreState.java"


# static fields
.field private static final blacklist APPLOCK_ENABLED:Ljava/lang/String; = "applock_enabled"

.field private static final blacklist APPLOCK_LOCKED_APPS_CLASSS:Ljava/lang/String; = "applock_locked_classes"

.field private static final blacklist APPLOCK_LOCKED_APPS_PACKAGES:Ljava/lang/String; = "applock_locked_packages"

.field private static final blacklist APPLOCK_SHARED_PREF:Ljava/lang/String; = "applock_shared_preference"

.field private static final blacklist APPLOCK_TYPE:Ljava/lang/String; = "applock_type"

.field private static final blacklist SSECURE_HIDDEN_APPS_PACKAGES:Ljava/lang/String; = "ssecure_hidden_apps_packages"

.field private static final blacklist TAG:Ljava/lang/String; = "AppLockCoreState"

.field private static blacklist mPref:Landroid/content/SharedPreferences;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/app/AppLockCoreState;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getApplockLockedAppsClass()Ljava/lang/String;
    .registers 4

    .line 60
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_c

    const-string v2, "applock_locked_classes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    return-object v1
.end method

.method public blacklist getApplockLockedAppsPackage()Ljava/lang/String;
    .registers 4

    .line 55
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_c

    const-string v2, "applock_locked_packages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    return-object v1
.end method

.method public blacklist getApplockType()I
    .registers 4

    .line 65
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "applock_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_b
    return v1
.end method

.method public blacklist getSsecureHiddenAppsPackages()Ljava/lang/String;
    .registers 4

    .line 75
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_d

    const-string/jumbo v2, "ssecure_hidden_apps_packages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    return-object v1
.end method

.method public blacklist initializeSharedPreference()V
    .registers 4

    .line 48
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_f

    .line 49
    iget-object v0, p0, Landroid/app/AppLockCoreState;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "applock_shared_preference"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    .line 51
    :cond_f
    return-void
.end method

.method public blacklist isApplockEnabled()Z
    .registers 4

    .line 70
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "applock_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_b
    return v1
.end method

.method public blacklist setApplockEnabled(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 116
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "applock_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    return-void
.end method

.method public blacklist setApplockLockedAppsClass(Ljava/lang/String;)V
    .registers 4
    .param p1, "classes"    # Ljava/lang/String;

    .line 98
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "applock_locked_classes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    return-void
.end method

.method public blacklist setApplockLockedAppsPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packages"    # Ljava/lang/String;

    .line 89
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "applock_locked_packages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    return-void
.end method

.method public blacklist setApplockType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 107
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "applock_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    return-void
.end method

.method public blacklist setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .registers 4
    .param p1, "packages"    # Ljava/lang/String;

    .line 80
    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_11

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ssecure_hidden_apps_packages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_11
    return-void
.end method
