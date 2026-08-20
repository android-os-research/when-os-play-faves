.class public Lcom/samsung/server/wallpaper/SubDisplayMode;
.super Ljava/lang/Object;
.source "SubDisplayMode.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final MSG_SWITCH_WALLPAPER_BY_DISPLAY_CHANGED:I = 0x3f2

.field public static final TAG:Ljava/lang/String; = "SubDisplayMode"

.field public static final WALLPAPER_SUB_DISPLAY:Ljava/lang/String; = "wallpaper_sub_display_orig"

.field public static final WALLPAPER_SUB_DISPLAY_CROP:Ljava/lang/String; = "wallpaper_sub_display"

.field public static final WALLPAPER_SUB_DISPLAY_INFO:Ljava/lang/String; = "wallpaper_subdisplay_info.xml"

.field public static final WALLPAPER_SUB_DISPLAY_LOCK:Ljava/lang/String; = "wallpaper_sub_display_lock_orig"

.field public static final WALLPAPER_SUB_DISPLAY_LOCK_CROP:Ljava/lang/String; = "wallpaper_sub_display_lock"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

.field public final mHandler:Landroid/os/Handler;

.field public mIWindowManager:Landroid/view/IWindowManager;

.field public mLidState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 65
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode$1;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/SubDisplayMode$2;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    const-string v0, "SubDisplayMode"

    .line 58
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->initSubDisplayMode()V

    return-void
.end method


# virtual methods
.method public getFolderStateBasedWhich(I)I
    .registers 3

    .line 122
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_5

    return p1

    .line 124
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_c

    return p1

    .line 128
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result p0

    return p0
.end method

.method public getFolderStateBasedWhich(II)I
    .registers 4

    .line 132
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez p0, :cond_5

    return p1

    .line 134
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFolderStateBasedWhich state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubDisplayMode"

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_20

    or-int/lit8 p0, p1, 0x10

    goto :goto_22

    :cond_20
    or-int/lit8 p0, p1, 0x4

    :goto_22
    return p0
.end method

.method public getLidState()I
    .registers 1

    .line 118
    iget p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    return p0
.end method

.method public initSubDisplayMode()V
    .registers 2

    .line 80
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "window"

    .line 82
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mIWindowManager:Landroid/view/IWindowManager;

    .line 84
    :try_start_11
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setFolderState(II)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 146
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 150
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 151
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 152
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setLidState(I)V
    .registers 2

    .line 114
    iput p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    return-void
.end method

.method public updateLidStateFromInputManager()V
    .registers 6

    const-string v0, "SubDisplayMode"

    const/4 v1, -0x1

    :try_start_3
    const-string v2, "input"

    .line 159
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    const-string/jumbo v2, "updateLidStateFromInputManager: inputManagerService is null! Setting lidState to UNKNOWN(ABSENT)"

    .line 161
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_15
    const/16 v4, -0x100

    .line 163
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_22

    if-lez v2, :cond_1f

    move v1, v3

    goto :goto_22

    :cond_1f
    if-nez v2, :cond_22

    const/4 v1, 0x1

    .line 181
    :catch_22
    :cond_22
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLidStateFromInputManager: lidState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setLidState(I)V

    return-void
.end method
