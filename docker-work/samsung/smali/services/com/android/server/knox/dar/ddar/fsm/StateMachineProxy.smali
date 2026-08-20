.class public Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "StateMachineProxy.java"

# interfaces
.implements Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;


# static fields
.field public static final DEBUG:Z = false

.field public static final GET_CURRENT_STATE:Ljava/lang/String; = "GET_CURRENT_STATE"

.field public static final GET_PREVIOUS_STATE:Ljava/lang/String; = "GET_PREVIOUS_STATE"

.field public static final KEY_DUAL_DAR_USER_ID:Ljava/lang/String; = "KEY_DUAL_DAR_USER_ID"

.field public static final KEY_EVENT:Ljava/lang/String; = "KEY_EVENT"

.field public static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field public static final PROCESS_EVENT:Ljava/lang/String; = "PROCESS_EVENT"

.field public static final SET_INITIAL_STATE:Ljava/lang/String; = "SET_INITIAL_STATE"

.field public static final TAG:Ljava/lang/String; = "StateMachineProxy"

.field public static mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;


# instance fields
.field public context:Landroid/content/Context;

.field public initiateState:Z

.field public stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->initiateState:Z

    .line 47
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->setInitialState()Z

    .line 52
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->addStateChangeListener(Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    if-nez v1, :cond_e

    .line 39
    new-instance v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 41
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    .line 85
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_8e

    goto :goto_39

    :sswitch_12
    const-string v1, "GET_PREVIOUS_STATE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    move v0, v2

    goto :goto_39

    :sswitch_1c
    const-string v1, "PROCESS_EVENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    move v0, v5

    goto :goto_39

    :sswitch_26
    const-string v1, "SET_INITIAL_STATE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    move v0, v4

    goto :goto_39

    :sswitch_30
    const-string v1, "GET_CURRENT_STATE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_88

    if-eqz p2, :cond_39

    move v0, v3

    :cond_39
    :goto_39
    const-string p2, "dual_dar_response"

    if-eqz v0, :cond_80

    if-eq v0, v5, :cond_78

    const-string v1, "KEY_STATE"

    const-string v6, "KEY_DUAL_DAR_USER_ID"

    if-eq v0, v3, :cond_60

    if-eq v0, v2, :cond_48

    goto :goto_87

    .line 102
    :cond_48
    :try_start_48
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 103
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->getPreviousState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object p0

    if-eqz p0, :cond_55

    move v4, v5

    .line 105
    :cond_55
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_87

    .line 95
    :cond_60
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 96
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object p0

    if-eqz p0, :cond_6d

    move v4, v5

    .line 98
    :cond_6d
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_87

    .line 91
    :cond_78
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->processEvent(Landroid/os/Bundle;)Z

    move-result p0

    .line 92
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_87

    .line 88
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->setInitialState()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_87} :catch_88

    :goto_87
    return-object p1

    :catch_88
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_8e
    .sparse-switch
        0x33660c2 -> :sswitch_30
        0x3c5c9e59 -> :sswitch_26
        0x52ce508a -> :sswitch_1c
        0x66d24d52 -> :sswitch_12
    .end sparse-switch
.end method

.method public onStateChanged(Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)V
    .registers 5

    .line 75
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onDualDarStateChanged(Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)Z

    return-void
.end method

.method public final processEvent(Landroid/os/Bundle;)Z
    .registers 5

    const-string v0, "KEY_EVENT"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 120
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->processEvent(Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final setInitialState()Z
    .registers 6

    .line 56
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set initial state for DualDAR User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "StateMachineProxy"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->initiateState:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "DualDAR User has been already initiated"

    .line 59
    invoke-static {v4, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    :cond_2a
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "DualDAR User set initial State."

    .line 63
    invoke-static {v4, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->setInitialState(ILcom/samsung/android/knox/dar/ddar/fsm/State;)V

    .line 65
    iput-boolean v3, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->initiateState:Z

    return v3

    .line 69
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Active user for DualDAR : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method
