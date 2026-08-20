.class public Lcom/samsung/server/wallpaper/DesktopMode;
.super Ljava/lang/Object;
.source "DesktopMode.java"


# static fields
.field public static final ACTION_WALLPAPER_ENGINE_SHOWN:Ljava/lang/String; = "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

.field public static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_DESKTOP:Ljava/lang/String; = "com.samsung.android.hardware.display.category.DESKTOP"

.field public static final TAG:Ljava/lang/String; = "DesktopMode"

.field public static final WALLPAPER_DESKTOP:Ljava/lang/String; = "wallpaper_desktop_orig"

.field public static final WALLPAPER_DESKTOP_CROP:Ljava/lang/String; = "wallpaper_desktop"

.field public static final WALLPAPER_DESKTOP_INFO:Ljava/lang/String; = "wallpaper_desktop_info.xml"

.field public static final WALLPAPER_DESKTOP_LOCK:Ljava/lang/String; = "wallpaper_desktop_lock_orig"

.field public static final WALLPAPER_DESKTOP_LOCK_CROP:Ljava/lang/String; = "wallpaper_desktop_lock"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public mDesktopMode:I

.field public final mDesktopModeLock:Ljava/lang/Object;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mHandler:Landroid/os/Handler;

.field public mIsDesktopMode:Z

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public mWallpaperBindingFallbackCount:I

.field public mWallpaperBindingFallbackExecuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 58
    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 59
    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    const-string v0, "DesktopMode"

    .line 63
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 67
    iput-object p3, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 69
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->initDesktopMode()V

    return-void
.end method


# virtual methods
.method public getDesktopMode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperBindingFallbackExecuted()Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    return p0
.end method

.method public final getWallpaperDir(I)Ljava/io/File;
    .registers 2

    .line 226
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public increaseWallpaperBindingFallbackCount()V
    .registers 2

    .line 73
    iget v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    return-void
.end method

.method public final initDesktopMode()V
    .registers 2

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public isDesktopDualMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopModeEnabled(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopSingleMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopWallpaperFileExist(I)Z
    .registers 3

    .line 215
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/DesktopMode;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "wallpaper_desktop_orig"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDesktopWallpaperFileExist "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DesktopMode"

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onRefreshWallpaperByUiMode(Z)V
    .registers 5

    const-string v0, "DesktopMode"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefreshWallpaperByUiMode() isDesktopMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_1a
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    if-eqz p1, :cond_33

    .line 177
    const-class p1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    iput p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    goto :goto_47

    .line 182
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 183
    iput v1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    const-string p0, "DesktopMode"

    const-string p1, "No need to refresh phone wallpaper when Dual dex is disabled"

    .line 184
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v0

    return-void

    .line 187
    :cond_45
    iput v1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    :cond_47
    :goto_47
    const-string p1, "DesktopMode"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesktopMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result p1

    if-eqz p1, :cond_74

    const-string p0, "DesktopMode"

    const-string p1, "No need to refresh phone wallpaper when Dual dex is enabled"

    .line 193
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v0

    return-void

    .line 197
    :cond_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_1a .. :try_end_75} :catchall_83

    .line 199
    iget-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentUserId()I

    move-result v0

    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->switchDexWallpaper(IZ)V

    return-void

    :catchall_83
    move-exception p0

    .line 197
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public sendWallpaperEngineShownIntent()V
    .registers 1

    return-void
.end method

.method public setWallpaperBindingFallbackExecuted(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    return-void
.end method
