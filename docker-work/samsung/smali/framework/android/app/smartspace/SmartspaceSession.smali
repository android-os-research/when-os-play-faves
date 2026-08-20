.class public final Landroid/app/smartspace/SmartspaceSession;
.super Ljava/lang/Object;
.source "SmartspaceSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;,
        Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private final blacklist mInterface:Landroid/app/smartspace/ISmartspaceManager;

.field private final blacklist mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mRegisteredCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;",
            "Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const-class v0, Landroid/app/smartspace/SmartspaceSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceConfig;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smartspaceConfig"    # Landroid/app/smartspace/SmartspaceConfig;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mToken:Landroid/os/IBinder;

    .line 99
    const-string/jumbo v1, "smartspace"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 100
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    .line 101
    new-instance v3, Landroid/app/smartspace/SmartspaceSessionId;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/app/smartspace/SmartspaceSessionId;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v3, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 104
    :try_start_5a
    invoke-interface {v2, p2, v3, v0}, Landroid/app/smartspace/ISmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 108
    goto :goto_69

    .line 105
    :catch_5e
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create Smartspace session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_69
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "SmartspaceSession.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private blacklist destroy()V
    .registers 4

    .line 206
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 207
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 211
    :try_start_e
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceManager;->destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_21

    .line 212
    :catch_16
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify Smartspace target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    nop

    .line 219
    return-void

    .line 217
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V
    .registers 6
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;

    .line 155
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 159
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 161
    return-void

    .line 164
    :cond_11
    :try_start_11
    new-instance v0, Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;

    .line 165
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    invoke-direct {v0, p1, v1}, Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 166
    .local v0, "callbackWrapper":Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;
    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/smartspace/ISmartspaceManager;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 168
    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v1, v2}, Landroid/app/smartspace/ISmartspaceManager;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_31} :catch_32

    .line 172
    .end local v0    # "callbackWrapper":Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;
    goto :goto_3d

    .line 169
    :catch_32
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register for smartspace updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 156
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/app/smartspace/SmartspaceSession;->destroy()V

    .line 243
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->finalize()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    .line 246
    goto :goto_b

    .line 244
    :catchall_7
    move-exception v0

    .line 245
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_b
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 227
    :cond_7
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    .line 228
    invoke-direct {p0}, Landroid/app/smartspace/SmartspaceSession;->destroy()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_1c

    .line 232
    :cond_12
    :try_start_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    .line 235
    goto :goto_1b

    .line 233
    :catchall_16
    move-exception v0

    .line 234
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .end local v0    # "throwable":Ljava/lang/Throwable;
    nop

    .line 237
    :goto_1b
    return-void

    .line 231
    :catchall_1c
    move-exception v0

    .line 232
    :try_start_1d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 235
    goto :goto_25

    .line 233
    :catchall_21
    move-exception v1

    .line 234
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_25
    throw v0
.end method

.method public whitelist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 119
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 123
    :try_start_8
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v0, v1, p1}, Landroid/app/smartspace/ISmartspaceManager;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 127
    goto :goto_1b

    .line 124
    :catch_10
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void

    .line 120
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnTargetsAvailableListener(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;

    .line 184
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 188
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 190
    return-void

    .line 193
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;

    .line 194
    .local v0, "callbackWrapper":Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;
    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/smartspace/ISmartspaceManager;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_21

    .line 198
    .end local v0    # "callbackWrapper":Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;
    goto :goto_2c

    .line 195
    :catch_21
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister for smartspace updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void

    .line 185
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestSmartspaceUpdate()V
    .registers 4

    .line 134
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 138
    :try_start_8
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceManager;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 142
    goto :goto_1b

    .line 139
    :catch_10
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request update."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void

    .line 135
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
