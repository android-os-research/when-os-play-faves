.class public Lcom/android/server/location/injector/SystemEmergencyHelper;
.super Lcom/android/server/location/injector/EmergencyHelper;
.source "SystemEmergencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEmergencyCallEndRealtimeMs:J

.field public final mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

.field public mIsInEmergencyCall:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/android/server/location/injector/EmergencyHelper;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    const-wide/high16 v0, -0x8000000000000000L

    .line 44
    iput-wide v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 47
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized isInEmergency(J)Z
    .registers 10

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_38

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 87
    monitor-exit p0

    return v1

    .line 90
    :cond_8
    :try_start_8
    iget-wide v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    sub-long/2addr v3, v5

    cmp-long p1, v3, p1

    if-gez p1, :cond_1e

    move p1, v2

    goto :goto_1f

    :cond_1e
    move p1, v1

    .line 93
    :goto_1f
    iget-boolean p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-nez p2, :cond_35

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 95
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result p1
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_38

    if-eqz p1, :cond_36

    :cond_35
    move v1, v2

    .line 93
    :cond_36
    monitor-exit p0

    return v1

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSystemReady()V
    .registers 5

    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v0, :cond_7

    .line 53
    monitor-exit p0

    return-void

    .line 56
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 56
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_35

    .line 82
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
