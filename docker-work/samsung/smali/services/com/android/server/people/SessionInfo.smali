.class public Lcom/android/server/people/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SessionInfo"


# instance fields
.field public final mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/prediction/IPredictionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RIOUQ-rGCiMN5TmMPFQFPJqUXbY(Lcom/android/server/people/SessionInfo;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/SessionInfo;->updatePredictions(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 45
    new-instance v0, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/SessionInfo;)V

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;->create(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/app/prediction/IPredictionCallback;)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    return-object p0
.end method

.method public onDestroy()V
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public removeCallback(Landroid/app/prediction/IPredictionCallback;)V
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updatePredictions(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 69
    :try_start_9
    iget-object v2, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/IPredictionCallback;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to calling callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SessionInfo"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 74
    :cond_34
    iget-object p0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
