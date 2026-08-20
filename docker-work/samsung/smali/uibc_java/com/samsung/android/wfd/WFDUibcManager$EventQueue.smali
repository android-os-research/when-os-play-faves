.class Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field private blacklist keyInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist rotateInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist scrollInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/WFDUibcManager;

.field private blacklist touchInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/wfd/WFDUibcManager;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    .line 380
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    .line 381
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    .line 382
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wfd/WFDUibcManager;Lcom/samsung/android/wfd/WFDUibcManager$EventQueue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;-><init>(Lcom/samsung/android/wfd/WFDUibcManager;)V

    return-void
.end method


# virtual methods
.method public blacklist addKeyEvent(III)V
    .registers 10
    .param p1, "action"    # I
    .param p2, "keyCode1"    # I
    .param p3, "keyCode2"    # I

    .line 469
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "WFDUibcManager"

    if-eqz v0, :cond_38

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addKeyEvent(action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyCode1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyCode2 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_38
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3d

    .line 476
    const/4 v0, 0x0

    .local v0, "type":I
    goto :goto_41

    .line 477
    .end local v0    # "type":I
    :cond_3d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7a

    .line 478
    const/4 v0, 0x1

    .line 484
    .restart local v0    # "type":I
    :goto_41
    const-string v2, "Null pointer exception"

    const-string v3, "Interrupted when waiting to insert to queue"

    if-eqz p2, :cond_5f

    .line 485
    new-instance v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    invoke-direct {v4}, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;-><init>()V

    .line 486
    .local v4, "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    iput v0, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    .line 487
    iput p2, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    .line 490
    :try_start_50
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_5f

    .line 493
    :catch_56
    move-exception v5

    .line 494
    .local v5, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .line 491
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_5b
    move-exception v5

    .line 492
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v4    # "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_5f
    :goto_5f
    if-eqz p3, :cond_79

    .line 498
    new-instance v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    invoke-direct {v4}, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;-><init>()V

    .line 499
    .restart local v4    # "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    iput v0, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    .line 500
    iput p3, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    .line 503
    :try_start_6a
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6f} :catch_75
    .catch Ljava/lang/NullPointerException; {:try_start_6a .. :try_end_6f} :catch_70

    goto :goto_79

    .line 506
    :catch_70
    move-exception v3

    .line 507
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 504
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_75
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    :cond_79
    :goto_79
    return-void

    .line 480
    .end local v0    # "type":I
    :cond_7a
    const-string v0, "Unknown Key Event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method public blacklist addRotateEvent(II)V
    .registers 7
    .param p1, "radians"    # I
    .param p2, "fraction"    # I

    .line 533
    if-gez p1, :cond_4

    .line 534
    mul-int/lit8 p2, p2, -0x1

    .line 536
    :cond_4
    int-to-float v0, p1

    int-to-float v1, p2

    const v2, 0x3b7f9724    # 0.0039f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    const v1, 0x4048f5c3    # 3.14f

    div-float/2addr v0, v1

    .line 537
    .local v0, "degrees":F
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    const-string v2, "WFDUibcManager"

    if-eqz v1, :cond_36

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRotateEvent(degree : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_43} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_43} :catch_44

    goto :goto_51

    .line 545
    :catch_44
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 543
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_4b
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_51
    nop

    .line 548
    :goto_52
    return-void
.end method

.method public blacklist addScrollEvent(IIII)V
    .registers 9
    .param p1, "action"    # I
    .param p2, "type"    # I
    .param p3, "direction"    # I
    .param p4, "scrollBit"    # I

    .line 513
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "WFDUibcManager"

    if-eqz v0, :cond_42

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addScrollEvent(action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", direction : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scrollBit : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_42
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    invoke-direct {v0}, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;-><init>()V

    .line 519
    .local v0, "input":Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    iput p1, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    .line 520
    iput p3, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->direction:I

    .line 521
    iput p4, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->scrollBit:I

    .line 524
    :try_start_4d
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_52} :catch_5a
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_60

    .line 527
    :catch_53
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "Null pointer exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 525
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_5a
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_60
    nop

    .line 530
    :goto_61
    return-void
.end method

.method public blacklist addTouchEvent(II[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;)V
    .registers 9
    .param p1, "action"    # I
    .param p2, "pointers"    # I
    .param p3, "touchEvent"    # [Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 429
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "WFDUibcManager"

    if-eqz v0, :cond_6a

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTouchEvent(action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pointers : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    if-ge v0, p2, :cond_6a

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touchEvent(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 436
    .end local v0    # "i":I
    :cond_6a
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    invoke-direct {v0}, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;-><init>()V

    .line 438
    .local v0, "input":Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    if-nez p1, :cond_75

    .line 439
    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    goto :goto_88

    .line 440
    :cond_75
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7b

    .line 441
    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    goto :goto_88

    .line 442
    :cond_7b
    const/4 v2, 0x2

    if-ne p1, v2, :cond_81

    .line 443
    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    goto :goto_88

    .line 444
    :cond_81
    const/16 v2, 0x63

    if-ne p1, v2, :cond_d0

    .line 445
    const/4 v2, 0x3

    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    .line 450
    :goto_88
    iput p2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointers:I

    .line 451
    new-array v2, p2, [Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iput-object v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 452
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8f
    if-ge v2, p2, :cond_bb

    .line 453
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    new-instance v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v4}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    aput-object v4, v3, v2

    .line 454
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v2

    aget-object v4, p3, v2

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 455
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v2

    aget-object v4, p3, v2

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 456
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v2

    aget-object v4, p3, v2

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 460
    .end local v2    # "i":I
    :cond_bb
    :try_start_bb
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_c0
    .catch Ljava/lang/InterruptedException; {:try_start_bb .. :try_end_c0} :catch_c8
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_c0} :catch_c1

    goto :goto_ce

    .line 463
    :catch_c1
    move-exception v2

    .line 464
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "Null pointer exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cf

    .line 461
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_c8
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_ce
    nop

    .line 466
    :goto_cf
    return-void

    .line 447
    :cond_d0
    const-string v2, "Unknown Touch Event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public blacklist getKeyEvent()Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    .registers 5

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 410
    :catch_12
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRotateEvent()Ljava/lang/Integer;
    .registers 5

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 388
    :catch_12
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getScrollEvent()Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    .registers 5

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 421
    :catch_12
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getTouchEvent()Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    .registers 5

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 399
    :catch_12
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v1, 0x0

    return-object v1
.end method
