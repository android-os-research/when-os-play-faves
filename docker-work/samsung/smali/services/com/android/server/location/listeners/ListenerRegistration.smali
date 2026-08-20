.class public Lcom/android/server/location/listeners/ListenerRegistration;
.super Ljava/lang/Object;
.source "ListenerRegistration.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor;"
    }
.end annotation


# instance fields
.field public mActive:Z

.field public mActiveMotionControl:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xOIhIOzzo5r2z8R0vVp6VpGdQAg(Lcom/android/server/location/listeners/ListenerRegistration;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->lambda$executeOperation$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$executeOperation$0()Ljava/lang/Object;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public final executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    new-instance v2, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    .line 154
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isActive()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    return p0
.end method

.method public final isActiveMotionControl()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActiveMotionControl:Z

    return p0
.end method

.method public final isRegistered()Z
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onActive()V
    .registers 1

    return-void
.end method

.method public onInactive()V
    .registers 1

    return-void
.end method

.method public onListenerUnregister()V
    .registers 1

    return-void
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 3
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

    .line 129
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public onRegister(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onUnregister()V
    .registers 1

    return-void
.end method

.method public final setActive(Z)Z
    .registers 3

    .line 88
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    if-eq p1, v0, :cond_8

    .line 89
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final setActiveMotionControl(Z)Z
    .registers 3

    .line 98
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActiveMotionControl:Z

    if-eq p1, v0, :cond_8

    .line 99
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActiveMotionControl:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "[]"

    return-object p0
.end method

.method public final unregisterInternal()V
    .registers 2

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onListenerUnregister()V

    return-void
.end method
