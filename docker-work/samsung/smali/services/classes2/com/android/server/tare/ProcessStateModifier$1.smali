.class public Lcom/android/server/tare/ProcessStateModifier$1;
.super Landroid/app/IUidObserver$Stub;
.source "ProcessStateModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/ProcessStateModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/ProcessStateModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/ProcessStateModifier;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5

    .line 79
    iget-object p2, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p2}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmLock(Lcom/android/server/tare/ProcessStateModifier;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 80
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v0}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_32

    .line 81
    invoke-static {}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " marked gone but wasn\'t in cache."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit p2

    return-void

    .line 84
    :cond_32
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v0}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 85
    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tare/ProcessStateModifier;I)V

    .line 86
    monitor-exit p2

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 67
    iget-object p3, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p3, p2}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$mgetProcStateBucket(Lcom/android/server/tare/ProcessStateModifier;I)I

    move-result p2

    .line 68
    iget-object p3, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p3}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmLock(Lcom/android/server/tare/ProcessStateModifier;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 69
    :try_start_d
    iget-object p4, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p4}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    if-eq p4, p2, :cond_22

    .line 71
    iget-object p4, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p4}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    :cond_22
    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tare/ProcessStateModifier;I)V

    .line 74
    monitor-exit p3

    return-void

    :catchall_29
    move-exception p0

    monitor-exit p3
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw p0
.end method
