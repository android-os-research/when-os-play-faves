.class public Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "WindowMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field public static final DEBUG_DETECTING:Z

.field public static final DEBUG_STATE_TRANSITIONS:Z

.field public static final MAX_SCALE:F = 8.0f

.field public static final MIN_SCALE:F = 2.0f


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

.field public final mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mTempPoint:Landroid/graphics/Point;

.field public final mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method public static synthetic $r8$lambda$C-j8YWNpgczPOXCikGaWStgFIMQ(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->lambda$new$0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionEventDispatcherDelegate(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowMagnificationMgr(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misScreenReaderEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->isScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monTripleTap(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTripleTapAndHold(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTapAndHold(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtransitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_DETECTING()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 76
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v1, v0, 0x0

    sput-boolean v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    or-int/lit8 v0, v0, 0x0

    .line 77
    sput-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZI)V
    .registers 14

    move-object v0, p0

    move v1, p7

    move v2, p5

    move v3, p6

    move-object v4, p3

    move-object v5, p4

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V

    .line 100
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    .line 108
    sget-boolean p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz p3, :cond_2f

    .line 109
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "WindowMagnificationGestureHandler() , displayId = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2f
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 114
    new-instance p2, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    invoke-direct {p2, p1, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 117
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-direct {p3, p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 118
    new-instance p2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    iget-boolean p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 119
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 120
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    new-instance p4, Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    new-instance v5, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    move-object v0, p4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;-><init>(Landroid/content/Context;FFZLcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;)V

    invoke-direct {p3, p0, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/PanningScalingHandler;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->resetToDetectState()V

    .line 156
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final disableWindowMagnifier()V
    .registers 3

    .line 210
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string v1, "disableWindowMagnifier()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public final enableWindowMagnifier(FFI)V
    .registers 13

    .line 198
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_28

    .line 199
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWindowMagnifier :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_28
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getPersistedScale(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    .line 203
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    .line 205
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFI)Z

    return-void
.end method

.method public getMode()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public final getScreenSize(Landroid/graphics/Point;)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 179
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public handleShortcutTriggered()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->getScreenSize(Landroid/graphics/Point;)V

    .line 173
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FFI)V

    return-void
.end method

.method public final isScreenReaderEnabled()Z
    .registers 2

    .line 580
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 581
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 582
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method public magnificationDisactivate()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    :cond_d
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 161
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_21

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy(); delayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 163
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->resetToDetectState()V

    return-void
.end method

.method public onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->-$$Nest$fgetmPanningScalingHandler(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;)Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 148
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final onTripleTap(Landroid/view/MotionEvent;)V
    .registers 4

    .line 244
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "onTripleTap()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FFI)V

    .line 250
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const-string v0, "AMF3"

    invoke-static {p0, v0, p1}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTripleTapAndHold(Landroid/view/MotionEvent;)V
    .registers 4

    .line 255
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_c

    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "onTripleTapAndHold()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FFI)V

    .line 260
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public resetToDetectState()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowMagnificationGestureHandler{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 571
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 572
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowMagnificationMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toggleMagnification(FFI)V
    .registers 11

    .line 218
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    const-string/jumbo v1, "status"

    const-string v2, "com.samsung.accessibility.action.GET_MAGNFICATION_STATUS"

    const/4 v3, 0x1

    if-eqz v0, :cond_3d

    .line 219
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, -0x2

    const-string v5, "accessibility_am_magnification_mode"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_24

    goto :goto_25

    :cond_24
    move v3, v6

    .line 224
    :goto_25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v3, :cond_52

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FFI)V

    goto :goto_52

    .line 233
    :cond_3d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FFI)V

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 236
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .registers 8

    .line 295
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    if-eqz v0, :cond_64

    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-static {v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 298
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_64
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    if-eqz v0, :cond_6d

    .line 303
    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onExit()V

    .line 305
    :cond_6d
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    if-eqz p1, :cond_74

    .line 307
    invoke-interface {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onEnter()V

    :cond_74
    return-void
.end method
