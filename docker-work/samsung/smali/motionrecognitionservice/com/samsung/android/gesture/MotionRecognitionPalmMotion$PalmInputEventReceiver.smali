.class final Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 248
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 249
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 250
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    iget-wide v1, v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "handled":Z
    :try_start_a
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_28

    .line 258
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 259
    .local v1, "ev":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 271
    .local v2, "toolType":I
    const/4 v0, 0x1

    .line 272
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 273
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->readInputEvent(Landroid/view/MotionEvent;)V
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_2d

    .line 277
    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local v2    # "toolType":I
    :cond_28
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_2d
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 278
    throw v1
.end method
