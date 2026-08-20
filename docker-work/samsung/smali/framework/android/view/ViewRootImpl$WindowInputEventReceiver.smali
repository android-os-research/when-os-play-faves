.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 10891
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 10892
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 10893
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 2

    .line 10976
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10977
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 10978
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 5
    .param p1, "source"    # I

    .line 10935
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 10937
    .local v0, "unbuffered":Z
    :goto_11
    if-eqz v0, :cond_24

    .line 10938
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v1, :cond_1e

    .line 10939
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10942
    :cond_1e
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 10943
    return-void

    .line 10945
    :cond_24
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 10946
    return-void
.end method

.method public blacklist onDragEvent(ZFF)V
    .registers 16
    .param p1, "isExiting"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 10967
    if-eqz p1, :cond_4

    const/4 v0, 0x6

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    move v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 10966
    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v11}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    .line 10971
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 10972
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 10950
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 10951
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 10897
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "processInputEventForCompatibility"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10900
    :try_start_8
    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputCompatProcessor(Landroid/view/ViewRootImpl;)Landroid/view/InputEventCompatProcessor;

    move-result-object v2

    .line 10901
    invoke-virtual {v2, p1}, Landroid/view/InputEventCompatProcessor;->processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_80

    .line 10903
    .local v2, "processedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputEvent;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 10904
    nop

    .line 10905
    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    .line 10906
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 10908
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_7f

    .line 10910
    :cond_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 10911
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 10912
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    const/16 v5, 0x40

    .line 10911
    invoke-virtual {v1, v4, p0, v5, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 10910
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .end local v0    # "i":I
    :cond_3a
    goto :goto_7f

    .line 10918
    :cond_3b
    const/4 v4, 0x0

    .line 10920
    .local v4, "traceKey":Ljava/lang/String;
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_75

    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_75

    .line 10921
    move-object v5, p1

    check-cast v5, Landroid/view/MotionEvent;

    .line 10922
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 10923
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 10922
    const-string v8, "(X=%d, Y=%d, Action=%d)"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10924
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10926
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    :cond_75
    iget-object v5, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, p1, p0, v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 10927
    if-eqz v4, :cond_7f

    .line 10928
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 10931
    .end local v4    # "traceKey":Ljava/lang/String;
    :cond_7f
    :goto_7f
    return-void

    .line 10903
    .end local v2    # "processedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputEvent;>;"
    :catchall_80
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 10904
    throw v2
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .registers 3
    .param p1, "pointerCaptureEnabled"    # Z

    .line 10960
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 10961
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .registers 3
    .param p1, "inTouchMode"    # Z

    .line 10955
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 10956
    return-void
.end method
