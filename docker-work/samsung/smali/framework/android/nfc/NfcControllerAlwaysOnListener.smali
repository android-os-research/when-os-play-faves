.class public Landroid/nfc/NfcControllerAlwaysOnListener;
.super Landroid/nfc/INfcControllerAlwaysOnListener$Stub;
.source "NfcControllerAlwaysOnListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/nfc/INfcAdapter;

.field private blacklist mCurrentState:Z

.field private blacklist mIsRegistered:Z

.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/nfc/INfcAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/nfc/INfcAdapter;

    .line 42
    invoke-direct {p0}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    .line 40
    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    .line 43
    iput-object p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    .line 44
    return-void
.end method

.method private blacklist sendCurrentState(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 116
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    .line 118
    .local v1, "identity":J
    :try_start_d
    new-instance v3, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1b

    .line 121
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    nop

    .line 123
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    monitor-exit p0

    .line 124
    return-void

    .line 121
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    .restart local v1    # "identity":J
    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    nop

    .end local p0    # "this":Landroid/nfc/NfcControllerAlwaysOnListener;
    .end local p1    # "listener":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    throw v3

    .line 123
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcControllerAlwaysOnListener;
    .restart local p1    # "listener":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method synthetic blacklist lambda$sendCurrentState$0$android-nfc-NfcControllerAlwaysOnListener(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 118
    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;->onControllerAlwaysOnChanged(Z)V

    return-void
.end method

.method public blacklist onControllerAlwaysOnChanged(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iput-boolean p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    .line 130
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 131
    .local v1, "cb":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    invoke-direct {p0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;->sendCurrentState(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 132
    .end local v1    # "cb":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    goto :goto_d

    .line 133
    :cond_1d
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 56
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_34

    if-nez v0, :cond_9

    .line 57
    return-void

    .line 62
    :cond_9
    nop

    .line 63
    monitor-enter p0

    .line 64
    :try_start_b
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    monitor-exit p0

    return-void

    .line 68
    :cond_15
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_31

    if-nez v0, :cond_2f

    .line 71
    :try_start_1e
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_27
    .catchall {:try_start_1e .. :try_end_26} :catchall_31

    .line 75
    goto :goto_2f

    .line 73
    :catch_27
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_28
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v0

    .line 59
    :catch_34
    move-exception v0

    .line 60
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public blacklist unregister(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_3c

    if-nez v0, :cond_9

    .line 88
    return-void

    .line 93
    :cond_9
    nop

    .line 94
    monitor-enter p0

    .line 95
    :try_start_b
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 96
    monitor-exit p0

    return-void

    .line 99
    :cond_15
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_39

    if-eqz v0, :cond_37

    .line 103
    :try_start_26
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_39

    .line 106
    goto :goto_34

    .line 104
    :catch_2c
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    .line 109
    :cond_37
    monitor-exit p0

    .line 110
    return-void

    .line 109
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw v0

    .line 90
    :catch_3c
    move-exception v0

    .line 91
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
