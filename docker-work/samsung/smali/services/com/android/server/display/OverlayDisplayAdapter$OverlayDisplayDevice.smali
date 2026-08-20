.class public abstract Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field public mActiveMode:I

.field public final mDefaultMode:I

.field public final mDisplayPresentationDeadlineNanos:J

.field public final mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mModes:[Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mRawModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field public final mRefreshRate:F

.field public mState:I

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IIFJ",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;",
            "I",
            "Landroid/graphics/SurfaceTexture;",
            "I)V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "overlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p13

    .line 311
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    invoke-direct {p0, p1, p2, p13, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;)V

    .line 312
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    .line 313
    iput p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    .line 314
    iput-wide p8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    .line 315
    iput-object p10, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 316
    iput p11, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    .line 317
    iput-object p12, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 318
    iput-object p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    .line 319
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/Display$Mode;

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    const/4 p1, 0x0

    .line 320
    :goto_32
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4d

    .line 321
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 322
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget p8, p2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget p2, p2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    invoke-static {p8, p2, p7}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p2

    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 324
    :cond_4d
    iput p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    .line 325
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 330
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_c

    .line 331
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 332
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 334
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 8

    .line 359
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_98

    .line 360
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    aget-object v0, v0, v1

    .line 361
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 362
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 363
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 366
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 367
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 368
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 369
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 370
    iget v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v2, v1

    .line 371
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    int-to-float v1, v1

    .line 372
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 373
    iget-wide v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    const-wide/32 v3, 0x3b9aca00

    iget v5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    float-to-int v5, v5

    int-to-long v5, v5

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    const/16 v1, 0x40

    .line 375
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 376
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_75

    const/16 v2, 0x40

    or-int/2addr v2, v3

    .line 377
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 379
    :cond_75
    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    if-eqz v2, :cond_7f

    .line 380
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 382
    :cond_7f
    iget-boolean v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    if-eqz v1, :cond_89

    .line 383
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 385
    :cond_89
    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x3

    .line 386
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 387
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 389
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 391
    :cond_98
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public hasStableUniqueId()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onModeChangedLocked(I)V
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_16

    .line 345
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_11

    .line 346
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 348
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    :cond_16
    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 6

    .line 397
    iget p1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_7

    goto :goto_19

    .line 403
    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    array-length v3, v2

    if-ge v0, v3, :cond_18

    .line 404
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    move v0, v1

    :goto_19
    if-ne v0, v1, :cond_38

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reverting to default."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverlayDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    .line 414
    :cond_38
    iget p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    if-ne p1, v0, :cond_3d

    return-void

    .line 417
    :cond_3d
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    const/4 p1, 0x0

    .line 418
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 419
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->onModeChangedLocked(I)V

    return-void
.end method

.method public setStateLocked(I)V
    .registers 2

    .line 353
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method
