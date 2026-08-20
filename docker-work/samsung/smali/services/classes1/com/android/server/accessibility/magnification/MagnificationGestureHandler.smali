.class public abstract Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG_ALL:Z

.field public static final DEBUG_EVENT_STREAM:Z


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

.field public final mDebugInputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mDebugOutputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mDetectShortcutTrigger:Z

.field public final mDetectTripleTap:Z

.field public final mDisplayId:I

.field public final mLogTag:Ljava/lang/String;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MagnificationGestureHandler"

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v0, v0, 0x0

    .line 43
    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    return-void
.end method

.method public constructor <init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V
    .registers 7

    .line 91
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 92
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 93
    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTripleTap:Z

    .line 94
    iput-boolean p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 95
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 96
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    .line 98
    sget-boolean p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_22

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    goto :goto_23

    :cond_22
    move-object p3, p2

    :goto_23
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    if-eqz p1, :cond_2c

    .line 99
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    :cond_2c
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    return-void
.end method

.method public static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_7
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 158
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    :cond_2c
    return-void
.end method


# virtual methods
.method public final dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 139
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    if-eqz v0, :cond_31

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V

    .line 142
    :try_start_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 145
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception downstream following input events: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nTransformed into output events: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 151
    :cond_31
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public abstract getMode()I
.end method

.method public abstract handleShortcutTriggered()V
.end method

.method public abstract magnificationDisactivate()V
.end method

.method public notifyShortcutTriggered()V
    .registers 3

    .line 171
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_c

    .line 172
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "notifyShortcutTriggered():"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_13

    .line 175
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->handleShortcutTriggered()V

    :cond_13
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 104
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_20

    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_20
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MagnificationGestureHandler.onMotionEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 113
    :cond_52
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    if-eqz v0, :cond_5b

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V

    .line 116
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->shouldDispatchTransformedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_8b

    .line 119
    :cond_65
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7a

    .line 123
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    iget p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;->onTouchInteractionStart(II)V

    goto :goto_8b

    :cond_7a
    const/4 p2, 0x1

    if-eq p1, p2, :cond_80

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8b

    .line 125
    :cond_80
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    iget p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;->onTouchInteractionEnd(II)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public abstract onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public final shouldDispatchTransformedEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 131
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_8

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz p0, :cond_10

    :cond_8
    const/16 p0, 0x1002

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p0

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
