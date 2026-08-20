.class public Lcom/android/server/policy/FoldingSensorPolicy;
.super Ljava/lang/Object;
.source "FoldingSensorPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceStatePolicy"

.field public static final TAG_WITH_CLASS_NAME:Z = false


# instance fields
.field public mAwake:Z

.field public final mFoldingSensor:Landroid/hardware/Sensor;

.field public mFoldingSensorEnabled:Z

.field public final mLatestSensorEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/Sensor;",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mLidOpen:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;

.field public final mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTableModeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/policy/DeviceStateProviderImpl;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mTableModeEnabled:Z

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLatestSensorEvent:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    iput-object p2, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensor:Landroid/hardware/Sensor;

    .line 48
    iput-object p3, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/policy/FoldingSensorPolicy;->registerFoldingSensorListenerLocked()V

    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLidOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLidOpen:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFoldingSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFoldingSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_78

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestSensorEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLatestSensorEvent:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method public isFoldingSensorEnabled()Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensorEnabled:Z

    return p0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 72
    iget-object p0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerFoldingSensorListenerLocked()V
    .registers 5

    .line 95
    iget-boolean v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensorEnabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    iget-object v2, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    const-string v1, "DeviceStatePolicy"

    if-eqz v0, :cond_32

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerFoldingSensorListenerLocked success! caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    .line 102
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensorEnabled:Z

    goto :goto_38

    :cond_32
    const-string/jumbo p0, "registerFoldingSensorListenerLocked fail"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public setAwake(Z)V
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mAwake:Z

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldingSensorPolicy;->updateFoldingSensorListener(Z)V

    return-void
.end method

.method public setLidState(Z)V
    .registers 2

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLidOpen:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldingSensorPolicy;->updateFoldingSensorListener(Z)V

    return-void
.end method

.method public setTableModeEnabled(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mTableModeEnabled:Z

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldingSensorPolicy;->updateFoldingSensorListener(Z)V

    return-void
.end method

.method public final unregisterFoldingSensorListenerLocked()V
    .registers 3

    .line 110
    iget-boolean v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensorEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterFoldingSensorListenerLocked success! caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 115
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStatePolicy"

    .line 114
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mFoldingSensorEnabled:Z

    return-void
.end method

.method public updateFoldingSensorListener(Z)V
    .registers 7

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLidOpen:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mAwake:Z

    const-string v2, "DeviceStatePolicy"

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFoldingSensorListenerLw, mIsLidOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLidOpen:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", awake="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTableModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mTableModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", forceOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_51

    .line 86
    iget-object p1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mLidOpen:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_51

    if-eqz v1, :cond_51

    iget-boolean p1, p0, Lcom/android/server/policy/FoldingSensorPolicy;->mTableModeEnabled:Z

    if-eqz p1, :cond_51

    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/FoldingSensorPolicy;->registerFoldingSensorListenerLocked()V

    goto :goto_54

    .line 89
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/policy/FoldingSensorPolicy;->unregisterFoldingSensorListenerLocked()V

    .line 91
    :goto_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_56

    throw p0
.end method
