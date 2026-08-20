.class public abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# static fields
.field public static final EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayRect:Landroid/graphics/Rect;

.field public mCurrentFlags:I

.field public mCurrentLayerStack:I

.field public mCurrentLayerStackRect:Landroid/graphics/Rect;

.field public mCurrentOrientation:I

.field public mCurrentSurface:Landroid/view/Surface;

.field public mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public final mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/view/Display$Mode$Builder;

    invoke-direct {v0}, Landroid/view/Display$Mode$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    .line 76
    const-class v0, Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 62
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 81
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 82
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 83
    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 85
    iput-object p4, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 1

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStackRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 264
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public final getAdapterLocked()Lcom/android/server/display/DisplayAdapter;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    return-object p0
.end method

.method public getCurrentLayerStackLocked()I
    .registers 1

    .line 404
    iget p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    return p0
.end method

.method public getDexEnabledStateLocked()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_a

    .line 104
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->loadDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 106
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public getDisplayIdToMirrorLocked()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayTokenLocked()Landroid/os/IBinder;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getNameLocked()Ljava/lang/String;
    .registers 1

    .line 164
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 255
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 248
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public isWindowManagerMirroringLocked()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final loadDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 434
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    return-void
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method

.method public final populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V
    .registers 5

    .line 373
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 375
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    .line 376
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 378
    :cond_e
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 381
    :goto_13
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1d

    .line 382
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_22

    .line 384
    :cond_1d
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 387
    :goto_22
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 389
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    if-eqz v1, :cond_35

    .line 390
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_37

    :cond_35
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_37
    iput v0, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-eqz v1, :cond_3e

    .line 391
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_40

    :cond_3e
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_40
    iput v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 393
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 395
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, p0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_59

    .line 396
    check-cast p0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    goto :goto_5c

    :cond_59
    const/4 p0, 0x0

    .line 398
    iput-object p0, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    :goto_5c
    return-void
.end method

.method public requestDisplayStateLocked(IFF)Ljava/lang/Runnable;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public requestDisplayStateLocked(IFFILjava/util/ArrayList;)Ljava/lang/Runnable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFI",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFF)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .registers 2

    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2

    return-void
.end method

.method public final setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 318
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    if-eq v0, p2, :cond_b

    .line 319
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 320
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .registers 2

    return-void
.end method

.method public final setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 298
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    if-eq v0, p2, :cond_2c

    .line 299
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 300
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 304
    sget-object p1, Lcom/android/server/display/DisplayDevice;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayerStackLocked, layerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uniqueId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public final setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 336
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    if-ne v0, p2, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    .line 338
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    .line 340
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 341
    :cond_18
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 343
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v0, :cond_25

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 346
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_35

    .line 349
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 351
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 353
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_3f
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    return-void
.end method

.method public final setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v0, p2, :cond_b

    .line 363
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 364
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .registers 2

    return-void
.end method

.method public setWindowManagerMirroringLocked(Z)V
    .registers 2

    return-void
.end method

.method public startWindowManagerMirroring()V
    .registers 1

    return-void
.end method

.method public updateDexEnabledStateLocked(Z)V
    .registers 2

    return-void
.end method
