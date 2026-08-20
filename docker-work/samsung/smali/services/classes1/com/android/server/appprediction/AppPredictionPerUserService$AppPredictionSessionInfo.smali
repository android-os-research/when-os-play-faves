.class public final Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.super Ljava/lang/Object;
.source "AppPredictionPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppPredictionSessionInfo"
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/prediction/IPredictionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field public final mSessionId:Landroid/app/prediction/AppPredictionSessionId;

.field public final mToken:Landroid/os/IBinder;

.field public final mUsesPeopleService:Z


# direct methods
.method public static synthetic $r8$lambda$6o8D8lZ3qvUXEj4BdYrxXnUfAtE(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->lambda$resurrectSessionLocked$0(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    return p0
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 7

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 423
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 424
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 425
    iput-boolean p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 426
    iput-object p4, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    .line 427
    iput-object p5, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$resurrectSessionLocked$0(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    .line 479
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 2

    .line 435
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 465
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 467
    :cond_a
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public linkToDeath()Z
    .registers 3

    const/4 v0, 0x0

    .line 448
    :try_start_1
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    return v0
.end method

.method public removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 2

    .line 443
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/os/IBinder;)V
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 477
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 478
    iget-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method
