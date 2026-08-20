.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$Registration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetCurrentLocationListenerRegistration"
.end annotation


# instance fields
.field public mExpirationRealtimeMs:J

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .registers 6

    .line 1243
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 1244
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1240
    iput-wide p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    return-void
.end method


# virtual methods
.method public acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationResult;",
            ")",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ">;"
        }
    .end annotation

    .line 1327
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 1328
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1333
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    if-ltz v0, :cond_4a

    .line 1335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " provider registration "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expired at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    .line 1336
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1335
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :cond_4a
    if-eqz p1, :cond_7c

    .line 1342
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    .line 1342
    invoke-virtual {v0, v3, v4}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "noteOp denied for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :cond_7c
    move-object v1, p1

    :goto_7d
    if-eqz v1, :cond_83

    .line 1351
    invoke-virtual {v1}, Landroid/location/LocationResult;->asLastLocationResult()Landroid/location/LocationResult;

    move-result-object v1

    .line 1354
    :cond_83
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v0

    .line 1354
    invoke-virtual {p1, v1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;

    move-result-object p1

    .line 1358
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;Landroid/location/LocationResult;)V

    return-object v0
.end method

.method public binderDied()V
    .registers 4

    :try_start_0
    const-string v0, "LocationManagerService"

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2b} :catch_33

    .line 1410
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 1411
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    :try_start_32
    throw p0
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    .line 1415
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public deliverNull()V
    .registers 3

    .line 1304
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1305
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 1306
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onAlarm()V
    .registers 5

    const-string v0, "LocationManagerService"

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    .line 1313
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    .line 1318
    :try_start_39
    iput-wide v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    const/4 v1, 0x0

    .line 1319
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 1320
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .registers 5
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

    .line 1392
    instance-of p1, p2, Landroid/os/RemoteException;

    if-eqz p1, :cond_37

    const-string p1, "LocationManagerService"

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1395
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 1396
    monitor-exit p1

    return-void

    :catchall_34
    move-exception p0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw p0

    .line 1398
    :cond_37
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public onProviderListenerActive()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v2

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v3

    const-wide/16 v4, 0x7530

    .line 1286
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1292
    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_2f
    return-void
.end method

.method public onProviderListenerInactive()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1300
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onProviderListenerRegister()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1251
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_e

    .line 1253
    :catch_b
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 1256
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_24

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->onAlarm()V

    goto :goto_36

    :cond_24
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-gez v4, :cond_36

    .line 1267
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    sub-long/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v3, p0, v0}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onProviderListenerUnregister()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1276
    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    .line 1277
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1280
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
