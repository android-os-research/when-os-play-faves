.class public final Lcom/android/server/tare/Agent$AgentHandler;
.super Landroid/os/Handler;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AgentHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V
    .registers 3

    .line 1182
    iput-object p1, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    .line 1183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 1188
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    goto :goto_7a

    .line 1198
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1199
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1200
    iget-object v2, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v2}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1201
    :try_start_16
    iget-object v3, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v3}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;

    move-result-object v3

    .line 1202
    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_60

    .line 1204
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_60

    .line 1205
    iget-object v4, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v12

    .line 1207
    :goto_30
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_60

    .line 1209
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 1210
    iget-object v5, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    .line 1211
    invoke-static {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v8

    invoke-static {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v10

    move-wide v6, v12

    .line 1210
    invoke-static/range {v5 .. v11}, Lcom/android/server/tare/Agent;->-$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z

    move-result v5

    .line 1212
    invoke-virtual {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v6

    if-eq v6, v5, :cond_5d

    .line 1213
    invoke-static {v4, v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 1214
    iget-object v5, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v5}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v5

    invoke-virtual {v5, v0, p1, v4}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1218
    :cond_60
    iget-object p0, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {p0, v0, p1}, Lcom/android/server/tare/Agent;->-$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V

    .line 1219
    monitor-exit v2

    goto :goto_7a

    :catchall_67
    move-exception p0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_16 .. :try_end_69} :catchall_67

    throw p0

    .line 1190
    :cond_6a
    iget-object p1, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {p1}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1191
    :try_start_71
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    iget-object p0, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {p0, v1}, Lcom/android/server/tare/Agent;->-$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V

    .line 1193
    monitor-exit p1

    :goto_7a
    return-void

    :catchall_7b
    move-exception p0

    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_7b

    throw p0
.end method
