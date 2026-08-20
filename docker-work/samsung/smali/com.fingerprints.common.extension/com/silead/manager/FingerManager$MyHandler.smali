.class Lcom/silead/manager/FingerManager$MyHandler;
.super Landroid/os/Handler;
.source "FingerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/manager/FingerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/silead/manager/FingerManager;


# direct methods
.method private constructor <init>(Lcom/silead/manager/FingerManager;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 491
    iput-object p1, p0, Lcom/silead/manager/FingerManager$MyHandler;->this$0:Lcom/silead/manager/FingerManager;

    .line 492
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 493
    return-void
.end method

.method synthetic constructor <init>(Lcom/silead/manager/FingerManager;Landroid/content/Context;Lcom/silead/manager/FingerManager$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/silead/manager/FingerManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/silead/manager/FingerManager$1;

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/silead/manager/FingerManager$MyHandler;-><init>(Lcom/silead/manager/FingerManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/silead/manager/FingerManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 495
    iput-object p1, p0, Lcom/silead/manager/FingerManager$MyHandler;->this$0:Lcom/silead/manager/FingerManager;

    .line 496
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 497
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTestCmdCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/silead/manager/FingerManager$MyHandler;->this$0:Lcom/silead/manager/FingerManager;

    iget-object v1, v1, Lcom/silead/manager/FingerManager;->mTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_78

    goto :goto_77

    .line 507
    :pswitch_3a
    iget-object v0, p0, Lcom/silead/manager/FingerManager$MyHandler;->this$0:Lcom/silead/manager/FingerManager;

    iget-object v0, v0, Lcom/silead/manager/FingerManager;->mTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    if-eqz v0, :cond_77

    .line 508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6c

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_6c
    iget-object v0, p0, Lcom/silead/manager/FingerManager$MyHandler;->this$0:Lcom/silead/manager/FingerManager;

    iget-object v0, v0, Lcom/silead/manager/FingerManager;->mTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/silead/manager/FingerManager$TestCmdCallback;->onTestResult(ILjava/lang/Object;)V

    .line 516
    :cond_77
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x65
        :pswitch_3a
    .end packed-switch
.end method
