.class public final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VirtualDisplayDevice"
.end annotation


# static fields
.field public static final PENDING_RESIZE:I = 0x2

.field public static final PENDING_SURFACE_CHANGE:I = 0x1

.field public static final REFRESH_RATE:F = 60.0f


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field public mDensityDpi:I

.field public mDexEnabled:Z

.field public mDisplayIdToMirror:I

.field public mDisplayState:I

.field public final mFlags:I

.field public mHeight:I

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mIsDisplayOn:Z

.field public mIsWindowManagerMirroring:Z

.field public mMode:Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public mPendingChanges:I

.field public mStopped:Z

.field public mSurface:Landroid/view/Surface;

.field public mUniqueIndex:I

.field public mWidth:I

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUniqueIndex(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)V
    .registers 13

    .line 284
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 285
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, p2, p9, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;)V

    .line 286
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 287
    iput p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 288
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 289
    invoke-virtual {p11}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 290
    invoke-virtual {p11}, Landroid/hardware/display/VirtualDisplayConfig;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 291
    invoke-virtual {p11}, Landroid/hardware/display/VirtualDisplayConfig;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 292
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    const/high16 p3, 0x42700000    # 60.0f

    invoke-static {p2, p1, p3}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 293
    invoke-virtual {p11}, Landroid/hardware/display/VirtualDisplayConfig;->getDensityDpi()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 294
    iput-object p6, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 295
    iput p7, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 296
    iput-object p8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    const/4 p1, 0x0

    .line 297
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 298
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    const/4 p3, 0x1

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 299
    iput p10, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    if-eqz p6, :cond_45

    goto :goto_46

    :cond_45
    move p3, p1

    .line 300
    :goto_46
    iput-boolean p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 301
    invoke-virtual {p11}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 302
    invoke-virtual {p11}, Landroid/hardware/display/VirtualDisplayConfig;->isWindowManagerMirroring()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    if-eqz p2, :cond_58

    .line 310
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    :cond_58
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 318
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$mhandleBinderDiedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    const-string v1, "VirtualDisplayAdapter"

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual display device released because application token died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 323
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public destroyLocked(Z)V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 328
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 331
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    if-eqz p1, :cond_18

    .line 333
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayStopped()V

    :cond_18
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 476
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayIdToMirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindowManagerMirroring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDexEnabledStateLocked()Z
    .registers 1

    .line 670
    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    return p0
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 9

    .line 492
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_184

    .line 493
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 494
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 497
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 498
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 499
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 500
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/Display$Mode;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 501
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v3, v2

    .line 502
    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    int-to-float v2, v2

    .line 503
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    const-wide/32 v2, 0xfe502a

    .line 504
    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 505
    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 506
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_58

    or-int/lit8 v3, v4, 0x30

    .line 507
    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_58
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_63

    .line 511
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_71

    .line 513
    :cond_63
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v5, v2, 0x800

    if-eqz v5, :cond_71

    or-int/lit16 v3, v3, 0x4000

    .line 516
    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_71
    :goto_71
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7b

    .line 521
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_7b
    and-int/lit8 v3, v2, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_9e

    .line 524
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_9e

    const-string/jumbo v0, "persist.demo.remoterotation"

    .line 529
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 531
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 535
    :cond_9e
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_ac

    .line 536
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_ac
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x2

    if-eqz v2, :cond_b8

    .line 539
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v6, v3

    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_b8
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_c4

    .line 542
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_c4
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_d0

    .line 545
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_d0
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_dc

    .line 548
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_dc
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_ee

    .line 550
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v7, v6, 0x4000

    if-eqz v7, :cond_ee

    const v7, 0x8000

    or-int/2addr v6, v7

    .line 552
    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_ee
    and-int/lit16 v2, v0, 0x2000

    const/high16 v6, 0x10000

    if-eqz v2, :cond_fb

    .line 555
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v7, v6

    iput v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 558
    :cond_fb
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v7, 0x5

    iput v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    and-int/lit8 v7, v0, 0x40

    if-nez v7, :cond_105

    goto :goto_106

    :cond_105
    move v4, v5

    .line 560
    :goto_106
    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 562
    iget-boolean v4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    if-eqz v4, :cond_10e

    move v5, v3

    goto :goto_10f

    :cond_10e
    move v5, v1

    :goto_10f
    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 564
    iget v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 565
    iget-object v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 568
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v5, :cond_131

    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_131

    .line 569
    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v7, 0x60000004

    or-int/2addr v5, v7

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 571
    iget v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    if-nez v5, :cond_12f

    move v5, v3

    .line 572
    :cond_12f
    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    :cond_131
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v0

    if-eqz v5, :cond_143

    .line 608
    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v7, 0x20080000

    or-int/2addr v5, v7

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    if-eqz v4, :cond_141

    .line 610
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    :cond_141
    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    :cond_143
    and-int/2addr v0, v6

    if-eqz v0, :cond_170

    .line 616
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 617
    iget v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v1, 0x400088

    or-int/2addr v0, v1

    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 620
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$fgetmDefaultDeviceInfo(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 621
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$fgetmDefaultDeviceInfo(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 622
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$fgetmDefaultDeviceInfo(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 628
    :cond_170
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_184

    const v0, 0x401c8

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    if-ne v0, v1, :cond_184

    .line 630
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 634
    :cond_184
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public getDisplayIdToMirrorLocked()I
    .registers 1

    .line 339
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    return p0
.end method

.method public getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_6
    invoke-virtual {p0}, Landroid/view/Surface;->getDefaultSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceLocked()Landroid/view/Surface;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 381
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public hasStableUniqueId()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isDexDisplayLocked()Z
    .registers 1

    .line 674
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isWindowManagerMirroringLocked()Z
    .registers 1

    .line 344
    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    return p0
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 417
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 418
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 420
    :cond_11
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    .line 421
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    :cond_1c
    const/4 p1, 0x0

    .line 423
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    return-void
.end method

.method public requestDisplayStateLocked(IFF)Ljava/lang/Runnable;
    .registers 4

    .line 397
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    const/4 p3, 0x0

    if-eq p1, p2, :cond_23

    .line 398
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    .line 400
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {p1}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayPaused()V

    goto :goto_15

    .line 402
    :cond_10
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {p1}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayResumed()V

    .line 406
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->shouldSendDeviceChangedCallback()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 407
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 408
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_23
    return-object p3
.end method

.method public resizeLocked(III)V
    .registers 6

    .line 449
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    if-eq v0, p3, :cond_2d

    .line 450
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 451
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 452
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 453
    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    const/high16 v0, 0x42700000    # 60.0f

    .line 454
    invoke-static {p1, p2, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 455
    iput p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 457
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    :cond_2d
    return-void
.end method

.method public setDisplayState(Z)V
    .registers 3

    .line 462
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    if-eq v0, p1, :cond_f

    .line 463
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 465
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_f
    return-void
.end method

.method public setSurfaceLocked(Landroid/view/Surface;)V
    .registers 6

    .line 427
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_50

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz p1, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    if-eq v0, v3, :cond_1c

    .line 429
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 431
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 432
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 433
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 434
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 437
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 439
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$fgetmHandler(Lcom/android/server/display/VirtualDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    .line 440
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 439
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 441
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$fgetmHandler(Lcom/android/server/display/VirtualDisplayAdapter;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_50
    return-void
.end method

.method public setWindowManagerMirroringLocked(Z)V
    .registers 3

    .line 349
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    if-eq v0, p1, :cond_11

    .line 350
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    .line 351
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 352
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    :cond_11
    return-void
.end method

.method public final shouldSendDeviceChangedCallback()Z
    .registers 3

    .line 647
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    return v1

    .line 651
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_13

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public startWindowManagerMirroring()V
    .registers 3

    .line 363
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    if-eqz v0, :cond_15

    .line 364
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 365
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 366
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    :cond_15
    return-void
.end method

.method public stopLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    return-void
.end method

.method public updateDexEnabledStateLocked(Z)V
    .registers 4

    .line 662
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    if-eq v0, p1, :cond_25

    .line 663
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDexEnabled:Z

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDexEnabledStateLocked: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VirtualDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method
