.class public abstract Lcom/android/server/location/listeners/PendingIntentListenerRegistration;
.super Lcom/android/server/location/listeners/RemoteListenerRegistration;
.source "PendingIntentListenerRegistration.java"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;
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
        "Landroid/app/PendingIntent$CancelListener;"
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

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;
    .registers 2

    .line 93
    instance-of p0, p1, Landroid/app/PendingIntent;

    if-eqz p0, :cond_7

    .line 94
    check-cast p1, Landroid/app/PendingIntent;

    return-object p1

    .line 95
    :cond_7
    instance-of p0, p1, Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;

    if-eqz p0, :cond_12

    .line 96
    check-cast p1, Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;

    invoke-interface {p1}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 98
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "key must be PendingIntent or PendingIntentKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCanceled(Landroid/app/PendingIntent;)V
    .registers 4

    .line 84
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 85
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending intent registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

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

    .line 74
    instance-of v0, p2, Landroid/app/PendingIntent$CanceledException;

    if-eqz v0, :cond_2a

    .line 75
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

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    goto :goto_2d

    .line 78
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerRegistration;->onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    :goto_2d
    return-void
.end method

.method public onPendingIntentListenerRegister()V
    .registers 1

    return-void
.end method

.method public onPendingIntentListenerUnregister()V
    .registers 1

    return-void
.end method

.method public final onRemovableListenerRegister()V
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->onPendingIntentListenerRegister()V

    return-void
.end method

.method public final onRemovableListenerUnregister()V
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->onPendingIntentListenerUnregister()V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method
