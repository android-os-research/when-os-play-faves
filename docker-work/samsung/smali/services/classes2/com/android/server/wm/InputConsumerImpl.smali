.class public Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mApplicationHandle:Landroid/view/InputApplicationHandle;

.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mClientPid:I

.field public final mClientUser:Landroid/os/UserHandle;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public final mName:Ljava/lang/String;

.field public mNeedOneHandOpSpec:Z

.field public final mOldPosition:Landroid/graphics/Point;

.field public final mOldWindowCrop:Landroid/graphics/Rect;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTmpClipRect:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V
    .registers 10

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 68
    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 69
    iput-object p3, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    .line 70
    iput p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    .line 71
    iput-object p6, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    .line 73
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    if-eqz p4, :cond_36

    .line 75
    invoke-virtual {p2, p4}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 78
    :cond_36
    new-instance p4, Landroid/view/InputApplicationHandle;

    new-instance p5, Landroid/os/Binder;

    invoke-direct {p5}, Landroid/os/Binder;-><init>()V

    sget p6, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, p6

    invoke-direct {p4, p5, p3, v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object p4, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 81
    new-instance p5, Landroid/view/InputWindowHandle;

    invoke-direct {p5, p4, p7}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 82
    iput-object p3, p5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p5, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p2, 0x7e6

    .line 84
    iput p2, p5, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 85
    sget p2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, p2

    iput-wide v0, p5, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, p5, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 87
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    iput p2, p5, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 88
    iput p2, p5, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/16 p2, 0x104

    .line 89
    iput p2, p5, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 91
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 92
    invoke-virtual {p2, p7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Input Consumer "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string p3, "InputConsumerImpl"

    .line 95
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 100
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_17

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/server/wm/InputConsumerImpl;->unlinkFromDeathRecipient()V

    .line 215
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public disposeChannelsLw(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/InputConsumerImpl;->unlinkFromDeathRecipient()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  name="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceLayout(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V

    return-void
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public layout(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    iget-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void
.end method

.method public layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 13

    .line 140
    iget-boolean v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mNeedOneHandOpSpec:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 144
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 145
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 146
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 151
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    return-void

    .line 158
    :cond_48
    iget-boolean v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mNeedOneHandOpSpec:Z

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 159
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/OneHandOpPolicy;->hasOneHandOpSpec()Z

    move-result v1

    if-eqz v1, :cond_85

    if-eqz v0, :cond_85

    .line 162
    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget v7, v0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v7

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v3, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a8

    .line 165
    :cond_85
    iget-object v5, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a8

    .line 170
    :cond_9d
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 172
    :goto_a8
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 174
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    .line 175
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public linkToDeathRecipient()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 111
    :try_start_6
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public reparent(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 195
    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public show(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 191
    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 185
    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public unlinkFromDeathRecipient()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 122
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
