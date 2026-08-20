.class public abstract Lcom/android/server/location/listeners/RemovableListenerRegistration;
.super Lcom/android/server/location/listeners/RequestListenerRegistration;
.source "RemovableListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RequestListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile mKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TTRequest;TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RequestListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "*-TT",
            "Listener;",
            "**>;"
        }
    .end annotation
.end method

.method public final onRegister(Ljava/lang/Object;)V
    .registers 2

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemovableListenerRegister()V

    return-void
.end method

.method public onRemovableListenerRegister()V
    .registers 1

    return-void
.end method

.method public onRemovableListenerUnregister()V
    .registers 1

    return-void
.end method

.method public final onUnregister()V
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemovableListenerUnregister()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    return-void
.end method

.method public final remove()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 63
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    :cond_b
    return-void
.end method
