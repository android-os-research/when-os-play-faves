.class public final Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/SuspendBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SuspendBlockerImpl"
.end annotation


# static fields
.field public static final UNKNOWN_ID:Ljava/lang/String; = "unknown"


# instance fields
.field public final mIsShowLog:Z

.field public final mName:Ljava/lang/String;

.field public final mOpenReferenceTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/LongArray;",
            ">;"
        }
    .end annotation
.end field

.field public mReferenceCount:I

.field public final mTraceName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 4

    .line 8652
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8650
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    .line 8653
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    const-string p1, "PowerManagerService.Broadcasts"

    .line 8655
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "PowerManagerService.Display"

    .line 8656
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    :goto_22
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mIsShowLog:Z

    .line 8658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SuspendBlocker ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 2

    const-string/jumbo v0, "unknown"

    .line 8678
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .registers 5

    .line 8683
    monitor-enter p0

    .line 8684
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->recordReferenceLocked(Ljava/lang/String;)V

    .line 8685
    iget p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-ne p1, v0, :cond_3c

    .line 8691
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mIsShowLog:Z

    if-eqz p1, :cond_28

    const-string p1, "PowerManagerService"

    .line 8692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PWL] sb acquire: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-wide/32 v0, 0x20000

    .line 8695
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 8696
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    .line 8698
    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 8771
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 8772
    monitor-enter p0

    const-wide v0, 0x10900000001L

    .line 8773
    :try_start_a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000002L

    .line 8774
    iget v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8775
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1e

    .line 8776
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_1e
    move-exception p1

    .line 8775
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8664
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-eqz v0, :cond_37

    const-string v0, "PowerManagerService"

    .line 8665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" was finalized without being released!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 8667
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 8668
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    const-wide/32 v1, 0x20000

    .line 8669
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3b

    .line 8672
    :cond_37
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_3b
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8673
    throw v0
.end method

.method public isHeld()Z
    .registers 2

    .line 8764
    monitor-enter p0

    .line 8765
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    .line 8766
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final recordReferenceLocked(Ljava/lang/String;)V
    .registers 3

    .line 8780
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongArray;

    if-nez v0, :cond_14

    .line 8782
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 8783
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8785
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public release()V
    .registers 2

    const-string/jumbo v0, "unknown"

    .line 8703
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release(Ljava/lang/String;)V

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .registers 5

    .line 8708
    monitor-enter p0

    .line 8709
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->removeReferenceLocked(Ljava/lang/String;)V

    .line 8710
    iget p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v0, 0x0

    if-nez p1, :cond_3d

    .line 8716
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mIsShowLog:Z

    if-eqz p1, :cond_29

    const-string p1, "PowerManagerService"

    .line 8717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PWL] sb release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8720
    :cond_29
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    const-wide/32 v1, 0x20000

    .line 8721
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_63

    :cond_3d
    if-gez p1, :cond_63

    const-string p1, "PowerManagerService"

    .line 8723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" was released without being acquired!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8725
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 8727
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    :catchall_65
    move-exception p1

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public final removeReferenceLocked(Ljava/lang/String;)V
    .registers 2

    .line 8789
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArray;

    if-eqz p0, :cond_19

    .line 8790
    invoke-virtual {p0}, Landroid/util/LongArray;->size()I

    move-result p1

    if-lez p1, :cond_19

    .line 8791
    invoke-virtual {p0}, Landroid/util/LongArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/LongArray;->remove(I)V

    :cond_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 8732
    monitor-enter p0

    .line 8733
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8734
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ref count="

    .line 8735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    .line 8736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8737
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_22
    if-ge v3, v1, :cond_79

    .line 8739
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8740
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mOpenReferenceTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongArray;

    if-eqz v5, :cond_76

    .line 8741
    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_76

    :cond_3d
    if-lez v3, :cond_44

    const-string v6, ", "

    .line 8746
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8748
    :cond_44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 8749
    :goto_4d
    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_71

    if-lez v4, :cond_5a

    const-string v6, ", "

    .line 8751
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8753
    :cond_5a
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_71
    const-string v4, ")"

    .line 8755
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_79
    const-string v1, "]"

    .line 8757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_84
    move-exception v0

    .line 8759
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_84

    throw v0
.end method
