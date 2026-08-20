.class public final Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.super Ljava/lang/Object;
.source "SmartspacePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartspace/SmartspacePerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartspaceSessionInfo"
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field public final mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$cYLk0iQvs6SxsC7xgNel24O1Nps(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->lambda$resurrectSessionLocked$0(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 6

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)V

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 358
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 359
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    .line 360
    iput-object p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 361
    iput-object p4, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$resurrectSessionLocked$0(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    .line 413
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 399
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 401
    :cond_a
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public linkToDeath()Z
    .registers 3

    const/4 v0, 0x0

    .line 382
    :try_start_1
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    return v0
.end method

.method public removeCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 2

    .line 377
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public resurrectSessionLocked(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/os/IBinder;)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 411
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 412
    iget-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method
