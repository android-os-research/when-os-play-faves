.class public final Lcom/android/server/job/controllers/idle/CarIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "CarIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field public static final ACTION_FORCE_IDLE:Ljava/lang/String; = "com.android.server.jobscheduler.FORCE_IDLE"

.field public static final ACTION_GARAGE_MODE_OFF:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_OFF"

.field public static final ACTION_GARAGE_MODE_ON:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_ON"

.field public static final ACTION_UNFORCE_IDLE:Ljava/lang/String; = "com.android.server.jobscheduler.UNFORCE_IDLE"

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "JobScheduler.CarIdlenessTracker"


# instance fields
.field public mForced:Z

.field public mGarageModeOn:Z

.field public mIdle:Z

.field public mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

.field public mScreenOn:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 41
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.CarIdlenessTracker"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    return-void
.end method

.method public static logIfDebug(Ljava/lang/String;)V
    .registers 2

    .line 208
    sget-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "JobScheduler.CarIdlenessTracker"

    .line 209
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 106
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000002L

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 110
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 112
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 117
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "  mIdle: "

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mGarageModeOn: "

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mForced: "

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mScreenOn: "

    .line 101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final handleScreenOn()V
    .registers 2

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 193
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-eqz v0, :cond_c

    goto :goto_24

    .line 196
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_1e

    const-string v0, "Device is exiting idle"

    .line 198
    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 200
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_29

    :cond_1e
    const-string p0, "Device is already non-idle"

    .line 203
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    :goto_24
    const-string p0, "Screen is on, but device cannot exit idle"

    .line 195
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public isIdle()Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    const-string p2, "com.android.server.jobscheduler.FORCE_IDLE"

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2b

    const-string p1, "Forcing idle..."

    .line 127
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->setForceIdleState(Z)V

    goto/16 :goto_ba

    :cond_2b
    const-string p2, "com.android.server.jobscheduler.UNFORCE_IDLE"

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3e

    const-string p1, "Unforcing idle..."

    .line 130
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->setForceIdleState(Z)V

    goto/16 :goto_ba

    :cond_3e
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    const-string p1, "Screen is on..."

    .line 133
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->handleScreenOn()V

    goto :goto_ba

    :cond_4f
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string p1, "Screen is off..."

    .line 136
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 137
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    goto :goto_ba

    :cond_5f
    const-string p2, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    const-string p1, "GarageMode is on..."

    .line 139
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 140
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    goto :goto_ba

    :cond_72
    const-string p2, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_85

    const-string p1, "GarageMode is off..."

    .line 143
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 144
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    goto :goto_ba

    :cond_85
    const-string p2, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 147
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-nez p1, :cond_9a

    const-string p1, "Idle trigger fired..."

    .line 148
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->triggerIdleness()V

    goto :goto_ba

    .line 151
    :cond_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TRIGGER_IDLE received but not changing state; mIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mGarageModeOn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public final setForceIdleState(Z)V
    .registers 2

    .line 158
    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    return-void
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .registers 4

    .line 76
    iput-object p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 78
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 81
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    .line 85
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    .line 86
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.jobscheduler.FORCE_IDLE"

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.jobscheduler.UNFORCE_IDLE"

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final triggerIdleness()V
    .registers 3

    .line 177
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_a

    const-string p0, "Device is already idle"

    .line 179
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    goto :goto_3c

    .line 180
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    if-nez v0, :cond_1c

    const-string v0, "Device is going idle"

    .line 182
    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 184
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_3c

    .line 186
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRIGGER_IDLE received but not changing state: mIdle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public final updateIdlenessState()V
    .registers 4

    .line 163
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 164
    :goto_c
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eq v1, v0, :cond_2c

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device idleness changed. New idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 167
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 168
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_40

    .line 171
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device idleness is the same. Current idle="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :goto_40
    return-void
.end method
