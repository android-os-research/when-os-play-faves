.class public Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_ACTION_SET_MODE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_MODE"

.field public static final DEBUG_ACTION_SET_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_SURFACE"

.field public static final DEBUG_EXTRA_MODE_ON:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_MODE_ON"

.field public static final DEBUG_EXTRA_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_SURFACE"

.field public static final DEFAULT_VIRTUAL_DISPLAY_DPI:I = 0x140

.field public static final DEFAULT_VIRTUAL_DISPLAY_HEIGHT:I = 0x708

.field public static final DEFAULT_VIRTUAL_DISPLAY_WIDTH:I = 0x578

.field public static final DISPLAY_NAME:Ljava/lang/String; = "VR 2D Display"

.field public static final MIN_VR_DISPLAY_DPI:I = 0x1

.field public static final MIN_VR_DISPLAY_HEIGHT:I = 0x1

.field public static final MIN_VR_DISPLAY_WIDTH:I = 0x1

.field public static final STOP_VIRTUAL_DISPLAY_DELAY_MILLIS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "Vr2dDisplay"

.field public static final UNIQUE_DISPLAY_ID:Ljava/lang/String; = "277f1a09-b88d-4d1e-8716-796f114d080b"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mBootsToVr:Z

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mImageReader:Landroid/media/ImageReader;

.field public mIsPersistentVrModeEnabled:Z

.field public mIsVirtualDisplayAllowed:Z

.field public mIsVrModeOverrideEnabled:Z

.field public mStopVDRunnable:Ljava/lang/Runnable;

.field public mSurface:Landroid/view/Surface;

.field public final mVdLock:Ljava/lang/Object;

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mVirtualDisplayDpi:I

.field public mVirtualDisplayHeight:I

.field public mVirtualDisplayWidth:I

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsPersistentVrModeEnabled(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVdLock(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsPersistentVrModeEnabled(Lcom/android/server/vr/Vr2dDisplay;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSurfaceLocked(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldRunVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstopImageReader(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopImageReader()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplayId(Lcom/android/server/vr/Vr2dDisplay;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 106
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 107
    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 108
    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 109
    iput-object p4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    const/16 p1, 0x578

    .line 110
    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    const/16 p1, 0x708

    .line 111
    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/16 p1, 0x140

    .line 112
    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    return-void
.end method


# virtual methods
.method public getVirtualDisplayId()I
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p0, :cond_11

    .line 263
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    .line 267
    monitor-exit v0

    return p0

    .line 269
    :cond_11
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVrModeListener()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V

    .line 121
    iput-boolean p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-eqz p2, :cond_d

    .line 125
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    :cond_d
    return-void
.end method

.method public final setSurfaceLocked(Landroid/view/Surface;)V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_3c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 369
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting the new surface from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_33

    .line 371
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 373
    :cond_33
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3a

    .line 374
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 376
    :cond_3a
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    :cond_3c
    return-void
.end method

.method public setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 11

    .line 207
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    .line 215
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v5, :cond_46

    if-lt v2, v5, :cond_46

    if-ge v3, v5, :cond_18

    goto :goto_46

    :cond_18
    const-string v6, "Vr2dDisplay"

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting width/height/dpi to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 225
    iput v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 226
    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    move v1, v5

    goto :goto_6d

    :cond_46
    :goto_46
    const-string v6, "Vr2dDisplay"

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring Width/Height/Dpi values of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 230
    :goto_6d
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_77

    .line 233
    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    goto :goto_80

    .line 234
    :cond_77
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result p1

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_80

    .line 237
    iput-boolean v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 240
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_9e

    if-eqz v1, :cond_9e

    iget-boolean v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v1, :cond_9e

    .line 241
    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 243
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 246
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 250
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 251
    monitor-exit v0

    return-void

    :catchall_a3
    move-exception p0

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_3 .. :try_end_a5} :catchall_a3

    throw p0
.end method

.method public final shouldRunVirtualDisplay()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVrModeOverrideEnabled:Z

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final startImageReader()V
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_3c

    .line 387
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    const-string v0, "Vr2dDisplay"

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VD startImageReader: res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_3c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 394
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final startVirtualDisplay()V
    .registers 11

    .line 281
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_c

    const-string p0, "Vr2dDisplay"

    const-string v0, "Cannot create virtual display because mDisplayManager == null"

    .line 282
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_1c

    const-string p0, "Vr2dDisplay"

    const-string v1, "VD already exists, ignoring request"

    .line 288
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    :cond_1c
    const/16 v1, 0x5cd

    .line 300
    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const-string v3, "VR 2D Display"

    iget v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    const-string v3, "277f1a09-b88d-4d1e-8716-796f114d080b"

    .line 302
    invoke-virtual {v2, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 303
    invoke-virtual {v2, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 304
    iget-object v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 305
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 304
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Landroid/content/Context;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_6d

    .line 309
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 317
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_7a

    const-string v0, "Vr2dDisplay"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VD created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6d
    :try_start_6d
    const-string v1, "Vr2dDisplay"

    const-string v2, "Virtual display id is null after createVirtualDisplay"

    .line 313
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 315
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p0

    .line 317
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public final startVrModeListener()V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_12

    .line 190
    :try_start_4
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v0, p0}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string v0, "Vr2dDisplay"

    const-string v1, "Could not register VR State listener."

    .line 192
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public final stopImageReader()V
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_a

    .line 402
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    :cond_a
    return-void
.end method

.method public final stopVirtualDisplay()V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 334
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateDisplayId(I)V
    .registers 3

    .line 323
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setVr2dDisplayId(I)V

    .line 324
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    return-void
.end method

.method public final updateVirtualDisplay()V
    .registers 3

    .line 139
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Vr2dDisplay"

    const-string v1, "Attempting to start virtual display"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVirtualDisplay()V

    goto :goto_14

    .line 146
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V

    :goto_14
    return-void
.end method
