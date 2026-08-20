.class public Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method public constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_7
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_32

    .line 94
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p1}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 95
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p0}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmHandler(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 104
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_32

    .line 106
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p1}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 107
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p0}, Lcom/android/server/twilight/TwilightService;->-$$Nest$fgetmHandler(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method
