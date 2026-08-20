.class public Lcom/android/server/am/BroadcastDispatcher$1;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

# interfaces
.implements Lcom/android/server/AlarmManagerInternal$InFlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastDispatcher;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastAlarmComplete(I)V
    .registers 8

    .line 193
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1c

    .line 196
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v3, v3, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_39

    :cond_1c
    const-string v3, "BroadcastDispatcher"

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undercount of broadcast alarms in flight for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v3, v3, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_39
    if-gtz v1, :cond_70

    .line 204
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_45
    if-ge v2, v1, :cond_70

    .line 206
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v3}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget v3, v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p1, v3, :cond_6d

    .line 207
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 208
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$sminsertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    goto :goto_70

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 213
    :cond_70
    :goto_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_7 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public broadcastAlarmPending(I)V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 178
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v3, v3, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_23
    if-ge v2, v1, :cond_4e

    .line 182
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v3}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget v3, v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p1, v3, :cond_4b

    .line 183
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 184
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 188
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw p0
.end method
