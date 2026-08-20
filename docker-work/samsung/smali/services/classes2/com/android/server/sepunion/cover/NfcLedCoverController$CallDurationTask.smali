.class public Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;
.super Ljava/util/TimerTask;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallDurationTask"
.end annotation


# instance fields
.field public prevSecond:B

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 2

    .line 1370
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, -0x1

    .line 1371
    iput-byte p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1378
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmCallTimerLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1380
    :try_start_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmCallInProgressDisplay(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1381
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mgetCallDuration(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B

    move-result-object v0

    const/4 v1, 0x3

    .line 1382
    aget-byte v2, v0, v1

    iget-byte v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    if-eq v2, v3, :cond_39

    .line 1383
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v2, v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 1384
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1385
    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 1391
    :cond_34
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mclearRetryCountDelayedMsg(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_43

    .line 1395
    :cond_39
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmCallTimerLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_43
    move-exception v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmCallTimerLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1396
    throw v0
.end method
