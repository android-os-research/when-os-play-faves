.class public Lcom/android/server/accessibility/GestureWakeup;
.super Ljava/lang/Object;
.source "GestureWakeup.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GestureWakeup"

.field public static sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mIsSettingGestureWakeUp:Z

.field public mPM:Landroid/os/PowerManager;

.field public mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/GestureWakeup;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlaunchGestureWakeup(Lcom/android/server/accessibility/GestureWakeup;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->launchGestureWakeup()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 33
    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 123
    new-instance v0, Lcom/android/server/accessibility/GestureWakeup$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/GestureWakeup$1;-><init>(Lcom/android/server/accessibility/GestureWakeup;)V

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 43
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;
    .registers 3

    const-class v0, Lcom/android/server/accessibility/GestureWakeup;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/GestureWakeup;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 39
    :cond_e
    sget-object p0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 177
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "feature"

    .line 178
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 184
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public StartGestureWakeup()Z
    .registers 5

    const-string v0, "GestureWakeup"

    const-string v1, "StartGestureWakeup()+"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 49
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 50
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v1, :cond_2e

    .line 51
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v1, "StartGestureWakeup() create mCoverManager instance"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->registerApproachListener()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string p0, "StartGestureWakeup() Can\'t use proximity sensor in sensor hub"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_3b
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "air_motion_wake_up"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p0, "GestureWakeup start success"

    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public StopGestureWakeup()Z
    .registers 3

    const-string v0, "GestureWakeup"

    const-string v1, "StopGestureWakeup()+"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    if-eqz v1, :cond_1b

    .line 68
    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->finishGestureWakeup()V

    const-string p0, "GestureWakeup stop success"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1b
    const-string p0, "GestureWakeup is aleady stopped"

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final UnregisterApproachListener()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1f

    .line 158
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string p0, "GestureWakeup"

    const-string v0, "GestureWakeupService : UnregisterApproachListener"

    .line 159
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public checkSettingCondition(Landroid/content/Context;)Z
    .registers 5

    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "air_motion_wake_up"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    move v2, v0

    :cond_11
    iput-boolean v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    const-string p1, "GestureWakeup"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSettingCondition() mIsSettingGestureWakeUp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " User mode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    monitor-exit p0

    return p1

    :catchall_37
    move-exception p1

    .line 170
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final finishGestureWakeup()V
    .registers 5

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 80
    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->UnregisterApproachListener()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 82
    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    const-string p0, "GestureWakeup"

    const-string v0, "finish"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_21
    return-void
.end method

.method public final launchGestureWakeup()V
    .registers 6

    const-string v0, "GestureWakeup"

    const-string/jumbo v1, "launchGestureWakeup()+"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_21

    .line 93
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo p0, "launchGestureWakeup() :: No action in Desktop mode+"

    .line 94
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_21
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 99
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7a

    .line 100
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    goto :goto_7a

    .line 104
    :cond_3b
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 106
    :try_start_43
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "..Cover is closed .."

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_53
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_64

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 118
    :cond_64
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const-string v4, "WAKE_UP_REASON_GESTURE"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.app.airwakeupview"

    const-string v1, "ACC3"

    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/GestureWakeup;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerApproachListener()Z
    .registers 6

    .line 139
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "GestureWakeup"

    if-eqz v1, :cond_4e

    .line 141
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v1, :cond_2b

    const-string/jumbo v1, "registerApproachListener, mSemContextManager is null, create again "

    .line 142
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scontext"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 145
    :cond_2b
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {v1, v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>(I)V

    .line 146
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerApproachListener, currentUser : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4e
    const-string p0, "GestureWakeup: registerApproachListener fail"

    .line 150
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
