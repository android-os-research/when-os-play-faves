.class public abstract Lcom/android/server/location/listeners/RemoteListenerRegistration;
.super Lcom/android/server/location/listeners/RemovableListenerRegistration;
.source "RemoteListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RemovableListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# static fields
.field public static final IN_PROCESS_EXECUTOR:Ljava/util/concurrent/Executor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->IN_PROCESS_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->chooseExecutor(Landroid/location/util/identity/CallerIdentity;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/location/util/identity/CallerIdentity;

    iput-object p2, p0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method

.method public static chooseExecutor(Landroid/location/util/identity/CallerIdentity;)Ljava/util/concurrent/Executor;
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p0, v0, :cond_d

    .line 54
    sget-object p0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->IN_PROCESS_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object p0

    .line 56
    :cond_d
    sget-object p0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final getIdentity()Landroid/location/util/identity/CallerIdentity;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-object p0
.end method
