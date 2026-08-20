.class Landroid/view/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/GestureDetector;


# direct methods
.method constructor blacklist <init>(Landroid/view/GestureDetector;)V
    .registers 2

    .line 337
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    .line 338
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 339
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 341
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    .line 342
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_b4

    .line 385
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :pswitch_1f
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->-$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 368
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->-$$Nest$fgetmStillDown(Landroid/view/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 370
    invoke-static {}, Landroid/view/GestureDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage TAP"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0, v1}, Landroid/view/GestureDetector;->-$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V

    .line 374
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->-$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v1}, Landroid/view/GestureDetector;->-$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 375
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_b3

    .line 376
    invoke-static {}, Landroid/view/GestureDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSTC#1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 379
    :cond_5b
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0, v1}, Landroid/view/GestureDetector;->-$$Nest$fputmDeferConfirmSingleTap(Landroid/view/GestureDetector;Z)V

    goto :goto_b3

    .line 354
    :pswitch_61
    invoke-static {}, Landroid/view/GestureDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage LONG_PRESS"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Landroid/view/GestureDetector;->-$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V

    .line 357
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->-$$Nest$mdispatchLongPress(Landroid/view/GestureDetector;)V

    .line 358
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_b3

    .line 359
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_82

    move v0, v1

    goto :goto_83

    :cond_82
    move v0, v3

    .line 361
    .local v0, "deep":Z
    :goto_83
    invoke-static {}, Landroid/view/GestureDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_96

    goto :goto_97

    :cond_96
    move v1, v3

    :goto_97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "deep":Z
    goto :goto_b3

    .line 349
    :pswitch_a3
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->-$$Nest$fgetmListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v1}, Landroid/view/GestureDetector;->-$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 350
    nop

    .line 387
    :cond_b3
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_61
        :pswitch_1f
    .end packed-switch
.end method
