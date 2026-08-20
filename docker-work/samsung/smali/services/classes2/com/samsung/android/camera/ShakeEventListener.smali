.class public Lcom/samsung/android/camera/ShakeEventListener;
.super Landroid/content/BroadcastReceiver;
.source "ShakeEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final ACTION_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field public static final ACTION_CAMERA_SERVICE_WORKER_LOGGING:Ljava/lang/String; = "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

.field public static final CALL_END:I = 0x0

.field public static final CALL_START:I = 0x2

.field public static final CALL_VIDEO:I = 0x3

.field public static final DAYS_TO_KEEP_LOG:I = 0xa

.field public static final EVENT_SHAKE_DETECTION_COUNT:Ljava/lang/String; = "0125"

.field public static final EVENT_SHAKE_DETECTION_DURATION:Ljava/lang/String; = "0124"

.field public static final EVENT_SHAKE_OFF:I = 0x2

.field public static final EVENT_SHAKE_ON:I = 0x1

.field public static final EXTRA_VALUE_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field public static final FORCE_SHAKE_OFF_TIME:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ShakeEventListener"

.field public static final TYPE_SHAKE:I = 0x1004c

.field public static final VENDOR_STATE_SHAKE_INFO:J = 0x100000000L

.field public static final VENDOR_STATE_SHAKE_OFF:J = 0x0L

.field public static final VENDOR_STATE_SHAKE_ON:J = 0x200000000L


# instance fields
.field public mAccumulatedShakeTime:J

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mApplied:Z

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mDailyLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public mLastEventMessage:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShakeCount:J

.field public mShakeDetected:Z

.field public final mShakeDetector:Landroid/hardware/Sensor;

.field public final mShakeOffRunnable:Ljava/lang/Runnable;

.field public mShakeStartTime:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmShakeDetector(Lcom/samsung/android/camera/ShakeEventListener;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetector:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8

    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mDailyLog:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mApplied:Z

    const-wide/16 v1, 0x0

    .line 93
    iput-wide v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    .line 94
    iput-wide v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mPendingIntent:Landroid/app/PendingIntent;

    .line 96
    iput-wide v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeStartTime:J

    const-string v1, "No event."

    .line 97
    iput-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    .line 120
    new-instance v1, Lcom/samsung/android/camera/ShakeEventListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/ShakeEventListener$1;-><init>(Lcom/samsung/android/camera/ShakeEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 101
    iput-object p2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "sensor"

    .line 102
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1004c

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetector:Landroid/hardware/Sensor;

    const-string/jumbo p1, "power"

    .line 105
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v1, "ShakeEventListener"

    .line 106
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "alarm"

    .line 107
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAlarmManager:Landroid/app/AlarmManager;

    .line 108
    iput-object p3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x4000000

    .line 111
    invoke-static {p2, v0, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancelLogging()V
    .registers 3

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 247
    iput-wide v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    .line 248
    iput-wide v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 249
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 9

    monitor-enter p0

    .line 336
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a2

    .line 337
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tShake EventListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->isSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tLast event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "\n\tDump of ShakeEventListener Activity"

    .line 340
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tTotal # of shake detection (since update): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tAccumulated shake power on duration (since update): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\t\tDaily accumulated (old first):"

    .line 343
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-string v3, "\t\t\tcount(%d), duration(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 345
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_74

    .line 348
    :cond_97
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v1, p1}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 349
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_4 .. :try_end_9d} :catchall_9f

    .line 350
    monitor-exit p0

    return-void

    :catchall_9f
    move-exception p1

    .line 349
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw p1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized dumpDMALog()V
    .registers 8

    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->isEnableSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 253
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string v1, "0125"

    iget-wide v2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string v1, "0124"

    iget-wide v4, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    :cond_24
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "Reset and dump, count(%d), duration(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    .line 258
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v5, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mDailyLog:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_69

    .line 262
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mDailyLog:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_69
    const-wide/16 v0, 0x0

    .line 265
    iput-wide v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    .line 266
    iput-wide v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_71

    .line 267
    monitor-exit p0

    return-void

    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleShakeEventChanged()V
    .registers 13

    .line 270
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    const-string v4, "Shake event changed now(%b) -> next(%b), enable(%b) call(%b) shake(%b)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 274
    iget-boolean v6, p0, Lcom/samsung/android/camera/ShakeEventListener;->mApplied:Z

    .line 276
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    iget-boolean v6, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    iget-boolean v8, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x4

    iget-boolean v8, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v6

    .line 274
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShakeEventListener"

    .line 277
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v5, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v5, v4}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 280
    iget-boolean v4, p0, Lcom/samsung/android/camera/ShakeEventListener;->mApplied:Z

    if-eq v4, v1, :cond_134

    .line 281
    iput-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mApplied:Z

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_d3

    .line 285
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_75

    .line 286
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "ShakeEventListener"

    const-string/jumbo v4, "wakelock acquired"

    .line 287
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "wakelock acquired"

    .line 288
    invoke-static {v5, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 291
    :cond_75
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const-wide v10, 0x300000000L

    .line 292
    invoke-virtual {v1, v10, v11, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    move-result-object v1

    const-string v4, "ON: %s"

    new-array v6, v3, [Ljava/lang/Object;

    .line 295
    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v10, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ShakeEventListener"

    .line 296
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {v5, v4}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 299
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b5

    iget-object v6, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v6}, Lcom/samsung/android/camera/CameraServiceWorker;->isCameraOpened()Z

    move-result v6

    if-nez v6, :cond_b5

    .line 300
    iget-wide v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeCount:J

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeStartTime:J

    goto/16 :goto_132

    :cond_b5
    const-string v6, "Logging Skipped, event(%b) camera open(%b)"

    new-array v7, v7, [Ljava/lang/Object;

    .line 303
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 305
    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->isCameraOpened()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v3

    .line 304
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v5, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 306
    iput-wide v8, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeStartTime:J

    goto :goto_132

    :cond_d3
    const-string v1, "OFF: %s"

    new-array v4, v3, [Ljava/lang/Object;

    .line 309
    iget-object v6, p0, Lcom/samsung/android/camera/ShakeEventListener;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    const-wide v10, 0x100000000L

    .line 310
    invoke-virtual {v6, v10, v11, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v6, v4, v2

    .line 309
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ShakeEventListener"

    .line 312
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v5, v4}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 315
    iget-wide v6, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeStartTime:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_115

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeStartTime:J

    sub-long/2addr v6, v10

    .line 317
    iget-wide v10, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAccumulatedShakeTime:J

    const-string v1, "Duration: %d ms"

    new-array v3, v3, [Ljava/lang/Object;

    .line 318
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 320
    :cond_115
    iput-wide v8, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeStartTime:J

    .line 323
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_132

    .line 324
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "ShakeEventListener"

    const-string/jumbo v2, "wakelock released"

    .line 325
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "wakelock released"

    .line 326
    invoke-static {v5, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 330
    :cond_132
    :goto_132
    iput-object v4, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    .line 332
    :cond_134
    monitor-exit v0

    return-void

    :catchall_136
    move-exception p0

    monitor-exit v0
    :try_end_138
    .catchall {:try_start_3 .. :try_end_138} :catchall_136

    throw p0
.end method

.method public declared-synchronized isSupported()Z
    .registers 1

    monitor-enter p0

    .line 201
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    monitor-enter p0

    .line 157
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7f

    if-nez p1, :cond_9

    .line 159
    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, -0x1

    .line 161
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7539e1b9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_25

    const v2, 0x938ecab

    if-eq v1, v2, :cond_1b

    goto :goto_2e

    :cond_1b
    const-string v1, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    move v0, v4

    goto :goto_2e

    :cond_25
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    move v0, v3

    :cond_2e
    :goto_2e
    if-eqz v0, :cond_45

    if-eq v0, v4, :cond_33

    goto :goto_7d

    .line 187
    :cond_33
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z

    if-eqz p1, :cond_7d

    const-string p1, "ShakeEventListener"

    const-string p2, "Time to log proxy activity."

    .line 188
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->dumpDMALog()V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->scheduleLogging()V

    goto :goto_7d

    :cond_45
    const-string p1, "android.samsung.media.extra.AUDIO_MODE"

    .line 163
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ShakeEventListener"

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio mode changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_74

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6a

    goto :goto_7d

    .line 169
    :cond_6a
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    if-nez p1, :cond_7d

    .line 170
    iput-boolean v4, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    goto :goto_7d

    .line 175
    :cond_74
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    if-eqz p1, :cond_7d

    .line 176
    iput-boolean v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_7f

    .line 198
    :cond_7d
    :goto_7d
    monitor-exit p0

    return-void

    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1004c

    if-ne v0, v1, :cond_49

    .line 134
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    const-string p1, "ShakeEventListener"

    const-string v0, "Unknown shake event. ignore"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_4b

    .line 150
    monitor-exit p0

    return-void

    .line 143
    :cond_21
    :try_start_21
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_49

    .line 136
    :cond_2e
    iput-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_49
    .catchall {:try_start_21 .. :try_end_49} :catchall_4b

    .line 153
    :cond_49
    :goto_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized scheduleLogging()V
    .registers 7

    monitor-enter p0

    .line 238
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 239
    iget-object v2, p0, Lcom/samsung/android/camera/ShakeEventListener;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mPendingIntent:Landroid/app/PendingIntent;

    .line 239
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 241
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    .line 206
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 207
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetector:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->scheduleLogging()V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 218
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    .line 221
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 222
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 228
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->cancelLogging()V

    .line 232
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mEnabled:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 234
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
