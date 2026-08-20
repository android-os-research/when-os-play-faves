.class public final Lcom/android/server/UserspaceRebootLogger;
.super Ljava/lang/Object;
.source "UserspaceRebootLogger.java"


# static fields
.field public static final LAST_BOOT_REASON_PROPERTY:Ljava/lang/String; = "sys.boot.reason.last"

.field public static final TAG:Ljava/lang/String; = "UserspaceRebootLogger"

.field public static final USERSPACE_REBOOT_LAST_FINISHED_PROPERTY:Ljava/lang/String; = "sys.userspace_reboot.log.last_finished"

.field public static final USERSPACE_REBOOT_LAST_STARTED_PROPERTY:Ljava/lang/String; = "sys.userspace_reboot.log.last_started"

.field public static final USERSPACE_REBOOT_SHOULD_LOG_PROPERTY:Ljava/lang/String; = "persist.sys.userspace_reboot.log.should_log"


# direct methods
.method public static synthetic $r8$lambda$Q-q8TcwFv6lwM8NPogx0A-QnwQY(IJI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/UserspaceRebootLogger;->lambda$logEventAsync$0(IJI)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeOutcome()I
    .registers 5

    const-string/jumbo v0, "sys.userspace_reboot.log.last_started"

    const-wide/16 v1, -0x1

    .line 141
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const-string/jumbo v0, "sys.boot.reason.last"

    const-string v1, ""

    .line 144
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reboot,"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x6

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    const-string/jumbo v1, "userspace_failed,watchdog_fork"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_35

    return v2

    :cond_35
    const-string/jumbo v1, "userspace_failed,shutdown_aborted"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    return v2

    :cond_3f
    const-string/jumbo v1, "mount_userdata_failed"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    const-string/jumbo v1, "userspace_failed,init_user0"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    return v2

    :cond_54
    const-string/jumbo v1, "userspace_failed,enablefilecrypto"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    return v2

    :cond_5e
    const-string/jumbo v1, "userspace_failed,watchdog_triggered"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x4

    return v0

    :cond_69
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$logEventAsync$0(IJI)V
    .registers 6

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging UserspaceRebootReported atom: { outcome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " durationMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " encryptionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserspaceRebootLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf3

    .line 134
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    const-string/jumbo p0, "persist.sys.userspace_reboot.log.should_log"

    const-string p1, ""

    .line 136
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logEventAsync(ZLjava/util/concurrent/Executor;)V
    .registers 9

    .line 112
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "UserspaceRebootLogger"

    const-string/jumbo p1, "logEventAsync: Userspace reboot is not supported."

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_f
    invoke-static {}, Lcom/android/server/UserspaceRebootLogger;->computeOutcome()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_28

    const-string/jumbo v4, "sys.userspace_reboot.log.last_finished"

    .line 120
    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "sys.userspace_reboot.log.last_started"

    .line 121
    invoke-static {v6, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v4, v2

    :cond_28
    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x2

    .line 129
    :goto_2c
    new-instance p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda0;-><init>(IJI)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static noteUserspaceRebootSuccess()V
    .registers 2

    .line 79
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "UserspaceRebootLogger"

    const-string/jumbo v1, "noteUserspaceRebootSuccess: Userspace reboot is not supported."

    .line 80
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.userspace_reboot.log.last_finished"

    .line 84
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static noteUserspaceRebootWasRequested()V
    .registers 2

    .line 61
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "UserspaceRebootLogger"

    const-string/jumbo v1, "noteUserspaceRebootWasRequested: Userspace reboot is not supported."

    .line 62
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const-string/jumbo v0, "persist.sys.userspace_reboot.log.should_log"

    const-string v1, "1"

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.userspace_reboot.log.last_started"

    .line 67
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shouldLogUserspaceRebootEvent()Z
    .registers 2

    .line 95
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string/jumbo v0, "persist.sys.userspace_reboot.log.should_log"

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
