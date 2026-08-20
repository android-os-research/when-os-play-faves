.class public final Lcom/android/server/inputmethod/HandwritingModeController;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DEBUG:Z = true

.field public static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "HandwritingModeController"


# instance fields
.field public mCurrentDisplayId:I

.field public mCurrentRequestId:I

.field public mHandwritingBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field public mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

.field public mInkWindowInitRunnable:Ljava/lang/Runnable;

.field public final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public final mLooper:Landroid/os/Looper;

.field public mRecordingGesture:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$KpcswpYnoX8BR0b0UwQ_jhp9qE0(Lcom/android/server/inputmethod/HandwritingModeController;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 72
    const-class p1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 73
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 75
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static isStylusEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/16 v0, 0x4002

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 83
    :cond_a
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-ne p0, v0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method


# virtual methods
.method public getCurrentRequestId()Ljava/util/OptionalInt;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-nez v0, :cond_10

    .line 127
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get requestId: Handwriting was not initialized."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    .line 130
    :cond_10
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public initializeHandwritingSpy(I)V
    .registers 7

    .line 96
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 97
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 99
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    .line 103
    :cond_1a
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing handwriting spy monitor for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stylus-handwriting-event-receiver-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManagerInternal;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    const-string v4, "Failed to create input channel"

    .line 106
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v4, :cond_56

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    goto :goto_5c

    .line 109
    :cond_56
    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v4

    :goto_5c
    if-nez v4, :cond_64

    const-string p0, "Failed to create input surface"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_64
    new-instance v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-direct {v0, v2, p1, v4, v3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;-><init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 120
    new-instance p1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 121
    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 122
    iget p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    return-void
.end method

.method public isStylusGestureOngoing()Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return p0
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_2f

    .line 231
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 232
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Received non-motion event in stylus monitor."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 235
    :cond_11
    check-cast p1, Landroid/view/MotionEvent;

    .line 236
    invoke-static {p1}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 239
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    if-eq v0, v2, :cond_2a

    .line 240
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Received stylus event associated with the incorrect display."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 244
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onStylusEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 227
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input Event should not be processed when IME has the spy channel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onStylusEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1a

    .line 254
    :cond_12
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_49

    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    goto :goto_49

    :cond_22
    if-nez v0, :cond_26

    .line 265
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 268
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-nez v0, :cond_2b

    return-void

    .line 272
    :cond_2b
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3f

    .line 274
    sget-object p1, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v0, "Current gesture exceeds the buffer capacity. The rest of the gesture will not be recorded."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return-void

    .line 281
    :cond_3f
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 259
    :cond_49
    :goto_49
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 260
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    return-void
.end method

.method public final reset(Z)V
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 203
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 207
    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_1f

    .line 210
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    .line 214
    :cond_1f
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_33

    .line 215
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    if-nez p1, :cond_33

    .line 217
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->remove()V

    .line 218
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    :cond_33
    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return-void
.end method

.method public startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 149
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: Handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 152
    :cond_d
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    if-eq p1, v0, :cond_28

    .line 153
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot start handwriting session: Invalid request id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 156
    :cond_28
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-eqz p1, :cond_b5

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    goto/16 :goto_b5

    .line 160
    :cond_36
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const-string v0, "Handwriting session was already transferred to IME."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 164
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 164
    invoke-virtual {v2, p4, v3, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->isPointInsideWindow(Landroid/os/IBinder;IFF)Z

    move-result p1

    if-nez p1, :cond_60

    .line 166
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: Stylus gesture did not start inside the focused window."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 170
    :cond_60
    sget-object p1, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting handwriting session in display: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/hardware/input/InputManagerInternal;->pilferPointers(Landroid/os/IBinder;)V

    .line 175
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 176
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 177
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 179
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->isIntercepting()Z

    move-result p1

    if-nez p1, :cond_ad

    .line 183
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->startIntercepting(II)V

    .line 185
    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    iget p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/List;

    invoke-direct {p1, p2, p3, p0, v1}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession-IA;)V

    return-object p1

    .line 180
    :cond_ad
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Handwriting surface should not be already intercepting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_b5
    :goto_b5
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: No stylus gesture is being recorded."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
