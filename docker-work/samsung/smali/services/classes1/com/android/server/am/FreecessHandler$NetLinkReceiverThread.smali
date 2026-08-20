.class public Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetLinkReceiverThread"
.end annotation


# instance fields
.field public mNtPriority:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 114
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->mNtPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 120
    iget v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->mNtPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    :goto_7
    if-lez v1, :cond_21

    .line 124
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->initSendRecvMsgNetLink()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_21

    :cond_14
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3e8

    .line 130
    :try_start_18
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_7

    :catch_1c
    move-exception v2

    .line 132
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 137
    :cond_21
    :goto_21
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    if-eqz v0, :cond_44

    .line 139
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$FreecessThread;

    const-string v2, "FreecessHandler"

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/FreecessHandler$FreecessThread;-><init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 140
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 142
    :goto_3c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->recvNetLinkAction()V

    goto :goto_3c

    :cond_44
    return-void
.end method
