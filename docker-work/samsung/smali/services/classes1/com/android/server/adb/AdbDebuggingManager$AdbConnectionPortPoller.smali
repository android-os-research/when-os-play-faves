.class public Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdbConnectionPortPoller"
.end annotation


# instance fields
.field public final mAdbPortProp:Ljava/lang/String;

.field public mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mDurationSecs:I

.field public mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V
    .registers 4

    .line 338
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "service.adb.tls.port"

    .line 333
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mAdbPortProp:Ljava/lang/String;

    const/16 v0, 0xa

    .line 335
    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mDurationSecs:I

    .line 336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 339
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    return-void
.end method


# virtual methods
.method public cancelAndWait()V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 369
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 371
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public run()V
    .registers 5

    .line 344
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting adb port property poller"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0xa

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3a

    .line 350
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    :cond_18
    const v1, 0x7fffffff

    const-string/jumbo v3, "service.adb.tls.port"

    .line 356
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_34

    if-lez v1, :cond_2c

    const v2, 0xffff

    if-gt v1, v2, :cond_2c

    goto :goto_34

    :cond_2c
    const-wide/16 v1, 0x3e8

    .line 361
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 358
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    return-void

    .line 363
    :cond_3a
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to receive adb connection port"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    return-void
.end method
