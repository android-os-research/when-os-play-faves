.class public Lcom/samsung/android/server/util/SafetySystemService;
.super Ljava/lang/Object;
.source "SafetySystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SafetySystemService"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mLock:Ljava/lang/Object;

.field public mSemTelecomManager:Lcom/samsung/android/telecom/SemTelecomManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static get()Lcom/samsung/android/server/util/SafetySystemService;
    .registers 1

    .line 51
    sget-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sInstance:Lcom/samsung/android/server/util/SafetySystemService;

    return-object v0
.end method

.method public static getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 84
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 85
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_15

    const-string v2, "alarm"

    .line 87
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    :cond_15
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mAlarmManager:Landroid/app/AlarmManager;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    .line 91
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 96
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 97
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_15

    const-string v2, "audio"

    .line 99
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mAudioManager:Landroid/media/AudioManager;

    .line 102
    :cond_15
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    .line 103
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 156
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 157
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_15

    const-string v2, "input_method"

    .line 159
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 162
    :cond_15
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    .line 163
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getLauncherApps()Landroid/content/pm/LauncherApps;
    .registers 3

    .line 108
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 109
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v2, :cond_15

    const-string v2, "launcherapps"

    .line 111
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 114
    :cond_15
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    .line 115
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getSemTelecomManager()Lcom/samsung/android/telecom/SemTelecomManager;
    .registers 3

    .line 120
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 121
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mSemTelecomManager:Lcom/samsung/android/telecom/SemTelecomManager;

    if-nez v2, :cond_16

    const-string/jumbo v2, "samsung_telecom"

    .line 123
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/telecom/SemTelecomManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mSemTelecomManager:Lcom/samsung/android/telecom/SemTelecomManager;

    .line 126
    :cond_16
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mSemTelecomManager:Lcom/samsung/android/telecom/SemTelecomManager;

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    .line 127
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 132
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 133
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_16

    const-string/jumbo v2, "phone"

    .line 135
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 138
    :cond_16
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    .line 139
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static getWallpaperManager()Landroid/app/WallpaperManager;
    .registers 3

    .line 144
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 145
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v2, :cond_16

    const-string/jumbo v2, "wallpaper"

    .line 147
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 150
    :cond_16
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mWallpaperManager:Landroid/app/WallpaperManager;

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    .line 151
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 168
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 169
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_16

    const-string/jumbo v2, "window"

    .line 171
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Lcom/samsung/android/server/util/SafetySystemService;->mWindowManager:Landroid/view/WindowManager;

    .line 174
    :cond_16
    iget-object v0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mWindowManager:Landroid/view/WindowManager;

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    .line 175
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static onSystemReady(Landroid/content/Context;)V
    .registers 3

    .line 76
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->get()Lcom/samsung/android/server/util/SafetySystemService;

    move-result-object v0

    .line 77
    iget-object v1, v0, Lcom/samsung/android/server/util/SafetySystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_7
    iput-object p0, v0, Lcom/samsung/android/server/util/SafetySystemService;->mContext:Landroid/content/Context;

    .line 79
    monitor-exit v1

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/util/SafetySystemService;->mContext:Landroid/content/Context;

    if-nez p0, :cond_1c

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " service should be called after system ready"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SafetySystemService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
