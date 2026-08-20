.class public final Lcom/android/server/wm/ContentRecorder;
.super Ljava/lang/Object;
.source "ContentRecorder.java"


# static fields
.field public static final KEY_RECORD_TASK_FEATURE:Ljava/lang/String; = "record_task_content"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public mContentRecordingSession:Landroid/view/ContentRecordingSession;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mLastRecordedBounds:Landroid/graphics/Rect;

.field public mRecordedSurface:Landroid/view/SurfaceControl;

.field public mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 70
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 76
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 81
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final clearContentRecordingSession()V
    .registers 3

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public final fetchSurfaceSizeIfPresent()Landroid/graphics/Point;
    .registers 7

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 474
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 473
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_31

    .line 479
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x4f1686dd

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Provided surface for recording on display %d is not present, so do not update the surface"

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    const/4 p0, 0x0

    return-object p0

    :cond_31
    return-object v0
.end method

.method public final handleStartRecordingFailed()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 389
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_16

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->clearContentRecordingSession()V

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->tearDownVirtualDisplay()V

    goto :goto_19

    .line 397
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->clearContentRecordingSession()V

    :goto_19
    return-void
.end method

.method public isCurrentlyRecording()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onConfigurationChanged(I)V
    .registers 15
    .param p1    # I
        .annotation build Landroid/content/res/Configuration$Orientation;
        .end annotation
    .end param

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_cf

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2e

    .line 128
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz p1, :cond_2d

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long p0, p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x5612add7

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Unexpectedly null window container; unable to update recording for display %d"

    invoke-static {v0, v3, v2, p0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    return-void

    .line 135
    :cond_2e
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x12074c29

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Display %d was already recording, so apply transformations if necessary"

    invoke-static {v0, v5, v2, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 141
    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v3

    .line 142
    iget-object v4, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    if-eq p1, v3, :cond_cf

    .line 144
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object p1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x11

    if-eqz p1, :cond_a5

    .line 146
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v7, :cond_95

    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    int-to-long v10, v3

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x51e3abea

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v1

    aput-object v9, v5, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v4

    const-string v1, "Going ahead with updating recording for display %d to new bounds %s and/or orientation %d."

    invoke-static {v3, v12, v6, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_95
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    goto :goto_cf

    .line 156
    :cond_a5
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz p1, :cond_cf

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v7, v3

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x2cc73e7a

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v1

    aput-object v0, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v4

    const-string p0, "Unable to update recording for display %d to new bounds %s and/or orientation %d, since the surface is not available."

    invoke-static {v3, v9, v6, p0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_cf
    :goto_cf
    return-void
.end method

.method public pauseRecording()V
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 190
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x6a350aab

    const/16 v5, 0xd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "Display %d has content (%b) so pause recording"

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 202
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 203
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public remove()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1f

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->clearContentRecordingSession()V

    :cond_1f
    return-void
.end method

.method public final retrieveRecordedWindowContainer()Lcom/android/server/wm/WindowContainer;
    .registers 8

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_32

    .line 324
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 325
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x5fb7039c

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "Unable to start recording due to null token for display %d"

    invoke-static {p0, v5, v4, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    return-object v2

    :cond_32
    if-eqz v0, :cond_af

    if-eq v0, v4, :cond_57

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 369
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_56

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x5fde4581

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "Unable to start recording due to invalid region for display %d"

    invoke-static {p0, v5, v4, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    return-object v2

    :cond_57
    const-string/jumbo v0, "window_manager"

    const-string/jumbo v5, "record_task_content"

    .line 349
    invoke-static {v0, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_84

    .line 351
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 352
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_83

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x2e6b2983

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "Unable to record task since feature is disabled %d"

    invoke-static {p0, v5, v4, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_83
    return-object v2

    .line 357
    :cond_84
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_ae

    .line 359
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 360
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v1, :cond_ae

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v1, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0xfbcdf55

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v3

    const-string v1, "Unable to retrieve task to start recording for display %d"

    invoke-static {p0, v5, v4, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_ae
    return-object v0

    .line 332
    :cond_af
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    .line 333
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContextListenerController;->getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_e9

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 338
    invoke-virtual {v1, v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->setWindowManagerMirroring(IZ)V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 341
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_e8

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x2bac5af7

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "Unable to retrieve window container to start recording for display %d"

    invoke-static {p0, v5, v4, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e8
    return-object v2

    .line 347
    :cond_e9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    return-void
.end method

.method public final startRecordingIfNeeded()V
    .registers 12

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    if-nez v0, :cond_ce

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 246
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ce

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-nez v0, :cond_21

    goto/16 :goto_ce

    .line 251
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->retrieveRecordedWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_2a

    return-void

    .line 258
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_4f

    .line 260
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v0, :cond_4e

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v3, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x883a075

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "Unable to start recording for display %d since the surface is not available."

    invoke-static {p0, v0, v1, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    return-void

    .line 266
    :cond_4f
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x245a09b1

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v1

    const-string v1, "Display %d has no content and is on, so start recording for state %d"

    invoke-static {v7, v8, v9, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_7f
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 272
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 274
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 281
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 286
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 287
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 302
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    .line 302
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->startWindowManagerMirroring(I)V

    :cond_ce
    :goto_ce
    return-void
.end method

.method public final tearDownVirtualDisplay()V
    .registers 1

    return-void
.end method

.method public updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 424
    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 425
    iget v1, p3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 426
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 427
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 428
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 433
    iget v3, p3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    if-eq v1, v3, :cond_34

    sub-int/2addr v3, v1

    .line 434
    div-int/lit8 v3, v3, 0x2

    move v1, v3

    goto :goto_35

    :cond_34
    move v1, v4

    .line 437
    :goto_35
    iget v3, p3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_3c

    sub-int/2addr v3, v2

    .line 438
    div-int/lit8 v4, v3, 0x2

    :cond_3c
    move v8, v4

    .line 441
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 444
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 445
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 444
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v0

    move v7, v0

    .line 448
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    int-to-float v3, v1

    int-to-float v4, v8

    .line 451
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 453
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 455
    iget-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 456
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-ne p1, v2, :cond_b3

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMirroredSurface: scale="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bounds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", surfaceSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    return-void
.end method

.method public updateMirroredSurfaceFromDisplayManager()V
    .registers 5

    .line 168
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_4c

    .line 169
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMirroredSurfaceFromDisplayManager: surfaceSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", recordedContentBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    :cond_4c
    return-void
.end method

.method public updateRecording()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 110
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 111
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    goto :goto_22

    .line 115
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->startRecordingIfNeeded()V

    :goto_22
    return-void
.end method
