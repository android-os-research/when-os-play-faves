.class public final Lcom/android/server/display/DisplayModeDirector$SensorObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorObserver"
.end annotation


# instance fields
.field public final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSensorObserverLock"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field public mIsProxActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSensorObserverLock"
        }
    .end annotation
.end field

.field public final mProximitySensorName:Ljava/lang/String;

.field public final mProximitySensorType:Ljava/lang/String;

.field public final mSensorObserverLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .registers 5

    .line 3027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3012
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v0, "android.sensor.proximity"

    .line 3013
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorType:Ljava/lang/String;

    .line 3018
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 3020
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3024
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 3028
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    .line 3029
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 3030
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "  SensorObserver"

    .line 3080
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsProxActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mDozeStateByDisplay:"

    .line 3087
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3088
    :goto_21
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 3089
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 3090
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 3091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_54
    return-void
.end method

.method public observe()V
    .registers 9

    .line 3044
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3045
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 3047
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 3048
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 3049
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sensors/SensorManagerInternal;->addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 3051
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3052
    :try_start_28
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_46

    aget-object v4, v1, v3

    .line 3053
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v7, v4}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 3055
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_53

    .line 3056
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void

    :catchall_53
    move-exception p0

    .line 3055
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 5

    .line 3098
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v0

    .line 3099
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3100
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3101
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 3102
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 7

    .line 3107
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3108
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3109
    :try_start_9
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3110
    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v3

    .line 3109
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3111
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eq v0, p1, :cond_25

    .line 3112
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 3114
    :cond_25
    monitor-exit v1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 3119
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3121
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 3122
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onProximityActive(Z)V
    .registers 4

    .line 3035
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3036
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eq v1, p1, :cond_c

    .line 3037
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 3038
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 3040
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final recalculateVotesLocked()V
    .registers 9

    .line 3063
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 3064
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    .line 3065
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    const/4 v4, 0x0

    .line 3067
    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 3068
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v7, "android.sensor.proximity"

    .line 3069
    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 3072
    iget v4, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v4, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v4

    .line 3075
    :cond_31
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/16 v6, 0xf

    invoke-interface {v5, v3, v6, v4}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3b
    return-void
.end method
