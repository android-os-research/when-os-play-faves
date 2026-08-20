.class public Lcom/android/server/location/listeners/RequestListenerRegistration;
.super Lcom/android/server/location/listeners/ListenerRegistration;
.source "RequestListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field public final mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field


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

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/listeners/ListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 35
    iput-object p2, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    if-nez p0, :cond_7

    const-string p0, "[]"

    return-object p0

    .line 50
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
