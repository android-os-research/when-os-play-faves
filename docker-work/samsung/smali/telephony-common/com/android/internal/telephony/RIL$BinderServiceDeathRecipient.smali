.class final Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderServiceDeathRecipient"
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mService:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;I)V
    .registers 3

    .line 443
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput p2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->unlinkToDeath()V

    return-void
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    iget v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_20

    .line 456
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_20
    return-void
.end method

.method public declared-synchronized blacklist unlinkToDeath()V
    .registers 3

    monitor-enter p0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 466
    :try_start_6
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_9} :catch_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    :catch_9
    const/4 v0, 0x0

    .line 471
    :try_start_a
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_e

    .line 473
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
