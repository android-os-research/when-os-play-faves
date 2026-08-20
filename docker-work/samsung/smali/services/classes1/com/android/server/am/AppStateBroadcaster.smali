.class public Lcom/android/server/am/AppStateBroadcaster;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# static fields
.field public static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field public static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field public static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field public static final APP_STATE_START:Ljava/lang/String; = "START"

.field public static final APP_TERM_REASONS:[Ljava/lang/String;

.field public static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field public static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field public static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field public static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field public static final DEBUG:Z

.field public static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field public static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field public static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field public static final EXTRA_APP_TIME:Ljava/lang/String; = "oemIntentTimestamp"

.field public static final INTENT_NAME:Ljava/lang/String; = "diagandroid.app.ApplicationState"

.field public static final LOG_TAG:Ljava/lang/String; = "AppStateBroadcaster"

.field public static final PERMISSION_NAME:Ljava/lang/String; = "diagandroid.app.receiveDetailedApplicationState"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x0

.field public static final STOP_REASON_USER_HALT:I = 0x1

.field public static mAppLosingFocus:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static volatile mIsBroadcastEnabled:Z

.field public static mLastFocusAppName:Ljava/lang/String;

.field public static mObjHandler:Landroid/os/Handler;

.field public static final sKnownRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ApplicationState;",
            ">;"
        }
    .end annotation
.end field

.field public static sPackages:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.build.type"

    .line 46
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->mAppLosingFocus:Ljava/lang/String;

    const-string v0, "com.tmobile.echolocate"

    const-string v1, "com.tmobile.pr.mytmobile"

    const-string v2, "com.sprint.ms.smf.services"

    .line 54
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    const-string v0, "NORMAL_SYSTEM_HALT"

    const-string v1, "USER_HALTED"

    const-string v2, "ANR"

    const-string v3, "CRASH"

    .line 187
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastAppExit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 241
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    const-string v1, "AppStateBroadcaster"

    if-eqz v0, :cond_22

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " termReason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_22
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_67

    if-eqz p0, :cond_67

    if-eqz p1, :cond_67

    .line 246
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_6e

    aget-object v3, v0, v2

    .line 247
    new-instance v4, Landroid/content/Intent;

    const-string v5, "diagandroid.app.ApplicationState"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ApplicationPackageName"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ApplicationState"

    const-string v5, "EXITED"

    .line 250
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ApplicationTermReason"

    .line 251
    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/android/server/am/AppStateBroadcaster;->intentTimestamp()J

    move-result-wide v5

    const-string/jumbo v3, "oemIntentTimestamp"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 253
    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_67
    if-eqz v0, :cond_6e

    const-string p0, "Can\'t send broadcast mContext is null"

    .line 257
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-void
.end method

.method public static broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 220
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    const-string v1, "AppStateBroadcaster"

    if-eqz v0, :cond_22

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_22
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_68

    if-eqz p0, :cond_68

    if-eqz p1, :cond_68

    const-string v2, "EXITED"

    .line 225
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 226
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_6f

    aget-object v3, v0, v2

    .line 227
    new-instance v4, Landroid/content/Intent;

    const-string v5, "diagandroid.app.ApplicationState"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ApplicationPackageName"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ApplicationState"

    .line 230
    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-static {}, Lcom/android/server/am/AppStateBroadcaster;->intentTimestamp()J

    move-result-wide v5

    const-string/jumbo v3, "oemIntentTimestamp"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_68
    if-eqz v0, :cond_6f

    const-string p0, "Can\'t send broadcast mContext is null"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void
.end method

.method public static disableIntentBroadcast()V
    .registers 2

    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 73
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 74
    :try_start_b
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static enableIntentBroadcast(Landroid/content/Context;Lcom/android/internal/app/ProcessMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 59
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    .line 60
    sput-boolean p0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    const/4 p0, 0x0

    .line 61
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 62
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->populateRunningProcesses(Lcom/android/internal/app/ProcessMap;)V

    return-void
.end method

.method public static intentTimestamp()J
    .registers 2

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isKnownRunning(Ljava/lang/String;)Z
    .registers 2

    .line 274
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 275
    :try_start_3
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    .line 276
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static logOriginFunction(Ljava/lang/String;)V
    .registers 4

    .line 195
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_31

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " called from "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppStateBroadcaster"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public static packageRunning(Ljava/lang/String;I)V
    .registers 8

    .line 300
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 301
    :try_start_3
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    sget-boolean v2, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_32

    const-string v3, "AppStateBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageRunning for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with processId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ApplicationState;

    if-nez v3, :cond_44

    .line 310
    new-instance v3, Lcom/android/server/am/ApplicationState;

    invoke-direct {v3}, Lcom/android/server/am/ApplicationState;-><init>()V

    .line 311
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    .line 315
    :goto_45
    invoke-virtual {v3, p1}, Lcom/android/server/am/ApplicationState;->addProcess(I)V

    .line 316
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_6a

    if-eqz v1, :cond_69

    const-string p1, "START"

    .line 319
    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_69

    const-string p1, "AppStateBroadcaster"

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageRunning sent APP_STATE_START for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void

    :catchall_6a
    move-exception p0

    .line 316
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public static packageStopped(Ljava/lang/String;II)V
    .registers 13

    const-string v0, ""

    .line 333
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 336
    :try_start_9
    sget-boolean v3, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v3, :cond_34

    const-string v4, "AppStateBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageStopped for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with processId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " stopReason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_34
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ApplicationState;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_ac

    if-eqz v3, :cond_66

    const-string v7, "AppStateBroadcaster"

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", packageName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from rootPackage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_66
    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ApplicationState;->removeProcess(II)Z

    move-result p1

    if-eqz p1, :cond_9f

    if-eqz v3, :cond_89

    const-string p1, "AppStateBroadcaster"

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from running packages"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_89
    sget-object p1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    if-eqz p1, :cond_97

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    const/4 p1, 0x0

    .line 350
    sput-object p1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    move v5, v6

    .line 353
    :cond_97
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {v4}, Lcom/android/server/am/ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :cond_9f
    const/4 p1, 0x2

    if-ge p2, p1, :cond_aa

    .line 361
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v4}, Lcom/android/server/am/ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :cond_aa
    move v6, v5

    goto :goto_cc

    :cond_ac
    if-eqz v3, :cond_c5

    const-string p1, "AppStateBroadcaster"

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageStopped appState is null; send app exit with stopReason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_c5
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object p1, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    aget-object v0, p1, p2

    .line 375
    :goto_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_9 .. :try_end_cd} :catchall_d8

    if-eqz v5, :cond_d2

    .line 377
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusLoss(Ljava/lang/String;)V

    :cond_d2
    if-eqz v6, :cond_d7

    .line 379
    invoke-static {v1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppExit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    return-void

    :catchall_d8
    move-exception p0

    .line 375
    :try_start_d9
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p0
.end method

.method public static populateRunningProcesses(Lcom/android/internal/app/ProcessMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 285
    :goto_19
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 286
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 287
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v3, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_31
    return-void
.end method

.method public static sendApplicationFocusGain(Ljava/lang/String;)V
    .registers 5

    .line 94
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationFocusGain("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 96
    :cond_1e
    sget-boolean v1, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    if-eqz v1, :cond_84

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 97
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 98
    :cond_32
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AppStateBroadcaster"

    if-nez v1, :cond_5c

    .line 99
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    const-string v3, "FOCUS_LOSS"

    invoke-static {v1, v3}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5c

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendApplicationFocusGain sent APP_STATE_FOCUS_LOSS for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const-string v1, "FOCUS_GAIN"

    .line 103
    invoke-static {p0, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_82

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendApplicationFocusGain sent APP_STATE_FOCUS_GAIN for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", old focus package was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_82
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    :cond_84
    return-void
.end method

.method public static sendApplicationFocusLoss(Ljava/lang/String;)V
    .registers 5

    .line 115
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationFocusLoss("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 117
    :cond_1e
    sget-boolean v1, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    if-eqz v1, :cond_77

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "FOCUS_LOSS"

    .line 118
    invoke-static {p0, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AppStateBroadcaster"

    if-eqz v0, :cond_4e

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendApplicationFocusLoss sent APP_STATE_FOCUS_LOSS for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_4e
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    if-eqz v0, :cond_74

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "packageName is same as mLastFocusAppName: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; setting it to null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    const/4 p0, 0x0

    .line 125
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    :cond_77
    return-void
.end method

.method public static sendApplicationStart(Ljava/lang/String;I)V
    .registers 3

    .line 83
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 84
    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;->packageRunning(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public static sendApplicationStop(Ljava/lang/String;II)V
    .registers 5

    .line 145
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendApplicationStop("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 147
    :cond_2c
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    if-eqz v0, :cond_40

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    if-ltz p2, :cond_40

    .line 148
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_40

    .line 149
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppStateBroadcaster;->packageStopped(Ljava/lang/String;II)V

    :cond_40
    return-void
.end method

.method public static stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3a

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method
