.class public Lcom/android/server/alarm/AlarmManagerService$8;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 6085
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .registers 8

    .line 6095
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6096
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;

    move-result-object v1

    .line 6097
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_21

    .line 6099
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 6100
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6102
    :cond_21
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6103
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_37

    .line 6105
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 p3, 0xc

    invoke-virtual {p0, p3, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6107
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_37
    move-exception p0

    .line 6103
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method
