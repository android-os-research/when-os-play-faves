.class public abstract Lcom/android/server/location/listeners/BinderListenerRegistration;
.super Lcom/android/server/location/listeners/RemoteListenerRegistration;
.source "BinderListenerRegistration.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RemoteListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method

.method public static getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;
    .registers 2

    .line 105
    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_7

    .line 106
    check-cast p0, Landroid/os/IBinder;

    return-object p0

    .line 107
    :cond_7
    instance-of v0, p0, Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;

    if-eqz v0, :cond_12

    .line 108
    check-cast p0, Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;

    invoke-interface {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 110
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "key must be IBinder or BinderKey"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 94
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 100
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final getBinder()Landroid/os/IBinder;
    .registers 1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public onBinderListenerRegister()V
    .registers 1

    return-void
.end method

.method public onBinderListenerUnregister()V
    .registers 1

    return-void
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 82
    instance-of v0, p2, Landroid/os/RemoteException;

    if-eqz v0, :cond_2a

    .line 83
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    goto :goto_2d

    .line 86
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerRegistration;->onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    :goto_2d
    return-void
.end method

.method public final onRemovableListenerRegister()V
    .registers 3

    .line 54
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    :try_start_9
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_10

    .line 58
    :catch_d
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 61
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onBinderListenerRegister()V

    return-void
.end method

.method public final onRemovableListenerUnregister()V
    .registers 3

    .line 66
    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onBinderListenerUnregister()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
