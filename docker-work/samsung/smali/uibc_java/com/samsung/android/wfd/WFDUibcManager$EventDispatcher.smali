.class Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;
.super Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field public volatile blacklist isRunning:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/WFDUibcManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/wfd/WFDUibcManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/wfd/WFDUibcManager;

    .line 333
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;-><init>(Lcom/samsung/android/wfd/WFDUibcManager;Lcom/samsung/android/wfd/WFDUibcManager$EventQueue-IA;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->isRunning:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "count":I
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->isRunning:Z

    if-eqz v1, :cond_90

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getTouchEvent()Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    move-result-object v1

    .line 341
    .local v1, "touchInput":Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getKeyEvent()Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    move-result-object v2

    .line 342
    .local v2, "keyInput":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getScrollEvent()Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    move-result-object v3

    .line 343
    .local v3, "scrollInput":Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v4

    .line 345
    .local v4, "rotationInput":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 347
    .local v5, "isDirty":Z
    if-eqz v1, :cond_2a

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_2a

    .line 348
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/wfd/ConnectionMode;->handleTouchEvent(Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;)V

    .line 349
    const/4 v5, 0x1

    .line 351
    :cond_2a
    if-eqz v2, :cond_3e

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_3e

    .line 352
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/wfd/ConnectionMode;->handleKeyEvent(Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;)V

    .line 353
    const/4 v5, 0x1

    .line 355
    :cond_3e
    if-eqz v3, :cond_52

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_52

    .line 356
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/wfd/ConnectionMode;->handleScrollEvent(Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;)V

    .line 357
    const/4 v5, 0x1

    .line 359
    :cond_52
    if-eqz v4, :cond_66

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_66

    .line 360
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/wfd/ConnectionMode;->handleRotationEvent(Ljava/lang/Integer;)V

    .line 361
    const/4 v5, 0x1

    .line 364
    :cond_66
    if-eqz v5, :cond_79

    .line 365
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_77

    .line 366
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6, v7}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fputmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;I)V

    .line 368
    :cond_77
    const/4 v0, 0x0

    goto :goto_8e

    .line 370
    :cond_79
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v6

    const/16 v7, 0xbb8

    if-eq v6, v7, :cond_8e

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x1388

    if-le v0, v6, :cond_8e

    .line 371
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6, v7}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fputmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;I)V

    .line 374
    .end local v1    # "touchInput":Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    .end local v2    # "keyInput":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    .end local v3    # "scrollInput":Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    .end local v4    # "rotationInput":Ljava/lang/Integer;
    .end local v5    # "isDirty":Z
    :cond_8e
    :goto_8e
    goto/16 :goto_1

    .line 375
    :cond_90
    return-void
.end method
