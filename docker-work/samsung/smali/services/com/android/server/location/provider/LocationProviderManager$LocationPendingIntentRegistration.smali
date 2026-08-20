.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocationPendingIntentRegistration"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;I)V
    .registers 6

    .line 1184
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 1185
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    return-void
.end method


# virtual methods
.method public onCanceled(Landroid/app/PendingIntent;)V
    .registers 4

    const-string p1, "LocationManagerService"

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1232
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 1233
    monitor-exit p1

    return-void

    :catchall_30
    move-exception p0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    throw p0
.end method

.method public onLocationListenerRegister()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/app/PendingIntent;->addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    :cond_11
    return-void
.end method

.method public onLocationListenerUnregister()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1211
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onProviderOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onTransportFailure(Ljava/lang/Exception;)V
    .registers 5

    .line 1215
    instance-of v0, p1, Landroid/app/PendingIntent$CanceledException;

    if-eqz v0, :cond_37

    const-string v0, "LocationManagerService"

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, p1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 1219
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw p0

    .line 1221
    :cond_37
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
