.class public final Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdlenessTracker"


# instance fields
.field public mAlarm:Landroid/app/AlarmManager;

.field public mDockIdle:Z

.field public mIdle:Z

.field public mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

.field public mIdleWindowSlop:J

.field public mInactivityIdleThreshold:J

.field public final mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProjectionActive:Z

.field public mScreenOn:Z


# direct methods
.method public static synthetic $r8$lambda$2MC_yOXl7-XH1zQvbaDgQgMvvEw(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;ILjava/util/Set;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->onProjectionStateChanged(ILjava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTtXHUtgg7om13PcT9te6Re_qZQ(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->lambda$new$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 44
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    .line 45
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
    sput-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    .line 62
    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    return-void
.end method


# virtual methods
.method public final cancelIdlenessCheck()V
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 144
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 148
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 150
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 153
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 156
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "  mIdle: "

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mScreenOn: "

    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDockIdle: "

    .line 138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mProjectionActive: "

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final handleIdleTrigger()V
    .registers 5

    .line 239
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_39

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-nez v0, :cond_39

    .line 240
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle trigger fired @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 244
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_67

    .line 246
    :cond_39
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " projection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    return-void
.end method

.method public isIdle()Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    return p0
.end method

.method public final maybeScheduleIdlenessCheck(Ljava/lang/String;)V
    .registers 15

    .line 222
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_4d

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-nez v0, :cond_4d

    .line 223
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 224
    iget-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    add-long v6, v0, v2

    .line 225
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v2, :cond_40

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling idle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " now:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " when="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.DeviceIdlenessTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_40
    iget-object v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-wide v8, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    iget-object v11, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v12, 0x0

    const-string v10, "JS idleness"

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_4d
    return-void
.end method

.method public final onProjectionStateChanged(ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    move p1, p2

    .line 116
    :goto_6
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-ne v0, p1, :cond_b

    return-void

    .line 119
    :cond_b
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Projection state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_25
    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-eqz p1, :cond_38

    .line 124
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->cancelIdlenessCheck()V

    .line 125
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz p1, :cond_3d

    .line 126
    iput-boolean p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 127
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {p0, p2}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_3d

    :cond_38
    const-string p1, "Projection ended"

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 168
    sget-boolean p2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    const-string v0, "JobScheduler.DeviceIdlenessTracker"

    if-eqz p2, :cond_1e

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "android.intent.action.DOCK_IDLE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_be

    goto :goto_78

    :sswitch_2e
    const-string v2, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_78

    :cond_37
    const/4 v1, 0x6

    goto :goto_78

    :sswitch_39
    const-string v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_78

    :cond_42
    const/4 v1, 0x5

    goto :goto_78

    :sswitch_44
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_78

    :cond_4d
    const/4 v1, 0x4

    goto :goto_78

    :sswitch_4f
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto :goto_78

    :cond_58
    const/4 v1, 0x3

    goto :goto_78

    :sswitch_5a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_78

    :cond_61
    const/4 v1, 0x2

    goto :goto_78

    :sswitch_63
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_78

    :cond_6c
    move v1, v4

    goto :goto_78

    :sswitch_6e
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    goto :goto_78

    :cond_77
    move v1, v5

    :goto_78
    packed-switch v1, :pswitch_data_dc

    goto :goto_bd

    .line 173
    :pswitch_7c
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez p1, :cond_85

    return-void

    .line 216
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    goto :goto_bd

    .line 179
    :cond_85
    :pswitch_85
    iget-object p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_8e

    return-void

    .line 185
    :cond_8e
    :pswitch_8e
    iput-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 186
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz p2, :cond_99

    const-string p1, "exiting idle"

    .line 188
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_99
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->cancelIdlenessCheck()V

    .line 191
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz p1, :cond_bd

    .line 192
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 193
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {p0, v5}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_bd

    .line 202
    :pswitch_a8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 203
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez p2, :cond_b3

    return-void

    .line 207
    :cond_b3
    iput-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_ba

    .line 210
    :cond_b6
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 211
    iput-boolean v5, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 213
    :goto_ba
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    :cond_bd
    :goto_bd
    return-void

    :sswitch_data_be
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6e
        -0x56ac2893 -> :sswitch_63
        -0x35f53cc5 -> :sswitch_5a
        0xe98bfe6 -> :sswitch_4f
        0xf5d1132 -> :sswitch_44
        0x56d17cc5 -> :sswitch_39
        0x64b5c0ad -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_8e
        :pswitch_a8
        :pswitch_a8
        :pswitch_85
        :pswitch_81
        :pswitch_7c
    .end packed-switch
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .registers 5

    .line 79
    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00a6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00a5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    const-string p2, "alarm"

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 85
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    .line 87
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DREAMING_STARTED"

    .line 94
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DREAMING_STOPPED"

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 98
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DOCK_IDLE"

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DOCK_ACTIVE"

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p2, v0, p1, p0}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    return-void
.end method
