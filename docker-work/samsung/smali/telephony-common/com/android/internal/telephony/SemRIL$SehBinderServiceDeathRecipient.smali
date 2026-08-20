.class final Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SemRIL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SehBinderServiceDeathRecipient"
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mService:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;I)V
    .registers 3

    .line 313
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 6

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    iget v2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->unlinkToDeath()V

    return-void
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_20

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

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

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 335
    :try_start_6
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_9} :catch_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    :catch_9
    const/4 v0, 0x0

    .line 340
    :try_start_a
    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_e

    .line 342
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
