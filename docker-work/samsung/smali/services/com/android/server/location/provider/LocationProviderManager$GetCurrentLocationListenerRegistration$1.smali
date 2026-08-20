.class public Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

.field public final synthetic val$locationResult:Landroid/location/LocationResult;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;Landroid/location/LocationResult;)V
    .registers 3

    .line 1358
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 2

    if-eqz p1, :cond_13

    .line 1381
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1382
    :try_start_9
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 1383
    monitor-exit p1

    goto :goto_13

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method public operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    if-eqz v0, :cond_19

    .line 1365
    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    move-result-object v0

    goto :goto_1b

    .line 1367
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    :goto_1b
    const/4 v1, 0x0

    .line 1371
    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V

    .line 1372
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 1373
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/location/LocationResult;->size()I

    move-result v1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    .line 1372
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1358
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method
