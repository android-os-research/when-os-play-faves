.class public Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;
.super Ljava/lang/Object;
.source "StateMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DualDAR::StateMachine"

.field public static validTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/knox/dar/ddar/fsm/State;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/knox/dar/ddar/fsm/Event;",
            "Lcom/samsung/android/knox/dar/ddar/fsm/State;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public context:Landroid/content/Context;

.field public currentStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/dar/ddar/fsm/State;",
            ">;"
        }
    .end annotation
.end field

.field public listenerLock:Ljava/lang/Object;

.field public previousStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/dar/ddar/fsm/State;",
            ">;"
        }
    .end annotation
.end field

.field public stateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public stateLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 28
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 34
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 41
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 48
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 54
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->context:Landroid/content/Context;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    .line 75
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addStateChangeListener(Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 89
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .registers 4

    const/4 v0, 0x0

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_18

    .line 141
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 142
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_12

    goto :goto_19

    :catchall_12
    move-exception p1

    move-object v0, p0

    goto :goto_16

    :catchall_15
    move-exception p1

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-object p0, v0

    :goto_19
    if-nez p0, :cond_1d

    .line 147
    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    :cond_1d
    return-object p0
.end method

.method public getPreviousState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .registers 4

    const/4 v0, 0x0

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_18

    .line 159
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 160
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_12

    goto :goto_19

    :catchall_12
    move-exception p1

    move-object v0, p0

    goto :goto_16

    :catchall_15
    move-exception p1

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-object p0, v0

    :goto_19
    if-nez p0, :cond_1d

    .line 165
    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    :cond_1d
    return-object p0
.end method

.method public processEvent(Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)Z
    .registers 10

    .line 107
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz p1, :cond_62

    .line 110
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 111
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 112
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "DualDAR::StateMachine"

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transition: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") --> ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") because ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v3, 0x1

    goto :goto_8b

    :cond_62
    const-string v2, "DualDAR::StateMachine"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    .line 121
    :goto_8b
    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    if-ne v2, v4, :cond_a1

    .line 122
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_c3

    if-eqz v3, :cond_c2

    .line 128
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_a7
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ad
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;

    .line 130
    invoke-interface {v4, v1, v2, p1, p2}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;->onStateChanged(Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)V

    goto :goto_ad

    .line 132
    :cond_bd
    monitor-exit v0

    goto :goto_c2

    :catchall_bf
    move-exception p0

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_a7 .. :try_end_c1} :catchall_bf

    throw p0

    :cond_c2
    :goto_c2
    return v3

    :catchall_c3
    move-exception p0

    .line 125
    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw p0
.end method

.method public removeStateChangeListener(Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 97
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setInitialState(ILcom/samsung/android/knox/dar/ddar/fsm/State;)V
    .registers 6

    const-string v0, "DualDAR::StateMachine"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState() initialState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_25
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    throw p0
.end method
