.class public abstract Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$Registration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationManagerInternal$ProviderEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LocationRegistration"
.end annotation


# instance fields
.field public mExpirationRealtimeMs:J

.field public mNumLocationsDelivered:I

.field public volatile mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public static synthetic $r8$lambda$ScP6Oxi2FD4T3WjF6BPpRCIPC1c(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->lambda$onProviderEnabledChanged$0()Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$raISASpbz1Irgkntjc-CrAblUfs(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->lambda$onProviderEnabledChanged$1(ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TTransport::",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ":",
            "Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;",
            ">(",
            "Landroid/location/LocationRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TTTransport;I)V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 845
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    const/4 p5, 0x0

    .line 839
    iput p5, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    const-wide v0, 0x7fffffffffffffffL

    .line 840
    iput-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 846
    check-cast p4, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    .line 847
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    const-class p4, Landroid/os/PowerManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Landroid/os/PowerManager;

    const/4 p4, 0x1

    const-string p5, "*location*"

    .line 848
    invoke-virtual {p1, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 849
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 850
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 851
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    invoke-direct {p2, p3, p1}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;-><init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    return-void
.end method

.method private synthetic lambda$onProviderEnabledChanged$0()Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;
    .registers 1

    .line 1105
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    return-object p0
.end method

.method private synthetic lambda$onProviderEnabledChanged$1(ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1106
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;->deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 8
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

    .line 964
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 965
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 970
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    cmp-long v0, v0, v2

    const-string v1, " provider registration "

    const-string v2, "LocationManagerService"

    const/4 v3, 0x0

    if-ltz v0, :cond_4d

    .line 972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expired at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 973
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 972
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    return-object v3

    .line 979
    :cond_4d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 980
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;

    move-result-object p1

    .line 979
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/location/LocationResult;

    .line 982
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;

    move-result-object p1

    if-nez p1, :cond_69

    return-object v3

    .line 1028
    :cond_69
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v4

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    .line 1028
    invoke-virtual {v0, v4, v5}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 1031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " noteOp denied"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1031
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1039
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b5

    const/4 v0, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    .line 1042
    :goto_b6
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;Z)V

    return-object v1
.end method

.method public onAlarm()V
    .registers 5

    const-string v0, "LocationManagerService"

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 950
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    .line 955
    :try_start_39
    iput-wide v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 956
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 957
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public onListenerUnregister()V
    .registers 2

    const/4 v0, 0x0

    .line 856
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    return-void
.end method

.method public onLocationListenerRegister()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public onLocationListenerUnregister()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .registers 5

    .line 1098
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-eq p2, p1, :cond_16

    return-void

    .line 1105
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Z)V

    new-instance p3, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public final onProviderListenerActive()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 922
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const-wide/32 v1, 0x45c18f6

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 923
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    .line 924
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 928
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 927
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2a
    move-wide v6, v0

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-lez v0, :cond_5e

    .line 934
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 935
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 936
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v4

    .line 937
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v5

    .line 934
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 940
    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_5e
    return-void
.end method

.method public final onProviderListenerRegister()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 863
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_16

    .line 867
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onAlarm()V

    goto :goto_28

    :cond_16
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-gez v4, :cond_28

    .line 873
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    sub-long/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v3, p0, v0}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    .line 878
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 880
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onLocationListenerRegister()V

    .line 883
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 885
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    :cond_48
    return-void
.end method

.method public final onProviderListenerUnregister()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 896
    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    .line 897
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 900
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onLocationListenerUnregister()V

    return-void
.end method

.method public abstract onProviderOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
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
.end method
