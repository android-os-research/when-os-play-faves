.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$getDelayDumpstate;,
        Lcom/android/server/power/ShutdownThread$MYLOG;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$Led;
    }
.end annotation


# static fields
.field public static final ACTION_DONE_POLL_WAIT_MS:I = 0x1f4

.field public static final ACTION_POWER_OFF_CANCEL:Ljava/lang/String; = "POWER_OFF_CANCEL"

.field public static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final BIN_TYPE_DEBUG_LOW:Z

.field public static final BIN_TYPE_PRODUCTSHIP:Z

.field public static final BIN_TYPE_USER:Z

.field public static final BROADCAST_STOP_PERCENT:I = 0x2

.field public static final CHECK_POINTS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-checkpoints/checkpoints"

.field public static final LEVEL_ISRB_BOOT:I = 0x7

.field public static final LedOffValue:I = 0x6

.field public static final LedOnValue:I = 0x6

.field public static final MAX_BROADCAST_TIME:I = 0x2710

.field public static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field public static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field public static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field public static final METRICS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-metrics"

.field public static METRIC_AM:Ljava/lang/String; = null

.field public static METRIC_PM:Ljava/lang/String; = null

.field public static METRIC_RADIO:Ljava/lang/String; = null

.field public static METRIC_RADIOS:Ljava/lang/String; = null

.field public static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field public static METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = null

.field public static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field public static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field public static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field public static final PATH_SHUTDOWNANIMATION:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field public static final PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field public static final PROP_ISRBLEVEL_CREBOOT:Ljava/lang/String; = "sys.isrblevel.callreboot"

.field public static final PROP_ISRB_RESCUE_MODE:Ljava/lang/String; = "persist.sys.rescue_mode"

.field public static final RADIOS_STATE_POLL_SLEEP_MS:I = 0x64

.field public static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field public static final SHUTDOWN_BROADCAST_FEATURE:Ljava/lang/String; = "dev.shutdownbroadcast.on"

.field public static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "ShutdownThread"

.field public static final TRON_METRICS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static currentTimeMillisStart:J = 0x0L

.field public static dlgAnim:Lcom/android/server/power/ShutdownDialog; = null

.field public static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter; = null

.field public static mCallerName:Ljava/lang/String; = null

.field public static mReason:Ljava/lang/String; = null

.field public static mReboot:Z = false

.field public static mRebootHasProgressBar:Z = false

.field public static mRebootSafeMode:Z = false

.field public static mSupportQmg:Z = false

.field public static final sInstance:Lcom/android/server/power/ShutdownThread;

.field public static sIsRestrict:Z = false

.field public static sIsStarted:Z = false

.field public static final sIsStartedGuard:Ljava/lang/Object;

.field public static systemRequest:Z


# instance fields
.field public mActionDone:Z

.field public final mActionDoneSync:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHandler:Landroid/os/Handler;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRebootProgress(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetBIN_TYPE_PRODUCTSHIP()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetBIN_TYPE_USER()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTRON_METRICS()Landroid/util/ArrayMap;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetdlgAnim()Lcom/android/server/power/ShutdownDialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmReason()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmReboot()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmRebootHasProgressBar()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smmetricEnded(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmetricStarted(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnewTimingsLog()Landroid/util/TimingsTraceLog;
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 156
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 157
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 158
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-string/jumbo v0, "shutdown_system_server"

    .line 171
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    .line 172
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_activity_manager"

    .line 173
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_package_manager"

    .line 174
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_radios"

    .line 175
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_radio"

    .line 176
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    const-string v0, "begin_shutdown"

    .line 177
    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.type"

    .line 207
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    .line 208
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    .line 209
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    const/4 v0, 0x0

    .line 216
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-void
.end method

.method public static UpdatePoweroffResetReason(Ljava/lang/Exception;)V
    .registers 7

    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "save power_off_reset_reason.txt"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/log/power_off_reset_reason.txt"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x2800

    cmp-long v0, v2, v4

    if-lez v0, :cond_33

    .line 372
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->ifOverSizeFileBackup(Ljava/io/File;)V

    :cond_33
    const/4 v0, 0x0

    .line 377
    :try_start_34
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_b1
    .catchall {:try_start_34 .. :try_end_3a} :catchall_af

    .line 378
    :try_start_3a
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 379
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3e8

    const/16 v4, 0x3ef

    invoke-static {v1, v3, v4}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    .line 381
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yy/MM/dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 382
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    if-eqz v1, :cond_85

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reason : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 391
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_a5} :catch_ac
    .catchall {:try_start_3a .. :try_end_a5} :catchall_a9

    .line 396
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_bb

    goto :goto_bf

    :catchall_a9
    move-exception p0

    move-object v0, v2

    goto :goto_c0

    :catch_ac
    move-exception p0

    move-object v0, v2

    goto :goto_b2

    :catchall_af
    move-exception p0

    goto :goto_c0

    :catch_b1
    move-exception p0

    .line 393
    :goto_b2
    :try_start_b2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_af

    if-eqz v0, :cond_bf

    .line 396
    :try_start_b7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception p0

    .line 398
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_bf
    :goto_bf
    return-void

    :goto_c0
    if-eqz v0, :cond_ca

    .line 396
    :try_start_c2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    :cond_ca
    :goto_ca
    throw p0
.end method

.method public static beginShutdownSequence(Landroid/content/Context;)V
    .registers 6

    .line 613
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_10

    const-string p0, "ShutdownThread"

    const-string v1, "!@Shutdown sequence already running, returning./beginShutdownSequence"

    .line 615
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit v0

    return-void

    :cond_10
    const/4 v1, 0x1

    .line 618
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 619
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12f

    const-string/jumbo v0, "usb"

    .line 621
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const-wide/32 v2, 0x8000000

    .line 622
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    .line 624
    invoke-static {}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->startState()V

    .line 625
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->openLogFileWriter()V

    const-string v0, "ShutdownThread"

    const-string v2, "!@beginShutdownSequence"

    .line 626
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable()V

    .line 633
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.internal.ims.FLIGHT_MODE"

    .line 634
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "powerofftriggered"

    const/4 v3, 0x0

    .line 635
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isShutDownForRCS"

    .line 636
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "ShutdownThread"

    const-string v2, "!@Shutdown animation will start"

    .line 640
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 642
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_71

    const-string/jumbo v2, "recovery-update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 643
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_b8

    .line 650
    :cond_71
    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mSupportQmg:Z

    if-eqz v0, :cond_b0

    const-string v0, "ShutdownThread"

    const-string v2, "!@play QMG animation"

    .line 652
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "silent.sec"

    .line 653
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 654
    :cond_a0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    .line 656
    :cond_a5
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    .line 657
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_b8

    .line 660
    :cond_b0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 663
    :goto_b8
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    .line 664
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    .line 667
    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_ca
    const-string v4, "ShutdownThread-cpu"

    .line 669
    invoke-virtual {p0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 671
    invoke-virtual {p0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 672
    iget-object p0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_da
    .catch Ljava/lang/SecurityException; {:try_start_ca .. :try_end_da} :catch_db

    goto :goto_e7

    :catch_db
    move-exception p0

    const-string v0, "ShutdownThread"

    const-string v1, "No permission to acquire wake lock"

    .line 674
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 679
    :goto_e7
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 680
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 682
    :try_start_f3
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v4, "ShutdownThread-screen"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 684
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 685
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_107
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_107} :catch_108

    goto :goto_114

    :catch_108
    move-exception p0

    const-string v0, "ShutdownThread"

    const-string v1, "No permission to acquire wake lock"

    .line 687
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 692
    :cond_114
    :goto_114
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_122

    const p0, 0x3345a

    new-array v0, v3, [Ljava/lang/Object;

    .line 693
    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 697
    :cond_122
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 699
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_12f
    move-exception p0

    .line 619
    :try_start_130
    monitor-exit v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p0
.end method

.method public static closeLogFileWriter()V
    .registers 2

    .line 1247
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_25

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logFileWriter saveAndClose logFileWriter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->saveAndClose()V

    const/4 v0, 0x0

    .line 1250
    sput-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    :cond_25
    return-void
.end method

.method public static get()Lcom/android/server/power/ShutdownThread;
    .registers 2

    .line 281
    const-class v0, Lcom/android/server/power/ShutdownThread;

    monitor-enter v0

    .line 282
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 283
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static ifOverSizeFileBackup(Ljava/io/File;)V
    .registers 4

    const-string v0, "ShutdownThread"

    const-string v1, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    .line 404
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/log/power_off_reset_reason_backup.txt"

    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string/jumbo v1, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    .line 413
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo p0, "power_off_reset_reason_backup.txt delete fail"

    .line 415
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_3e
    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public static isFOTAAvailable(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1433
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "attfota_forceinstall_FN_sim"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    move v0, v1

    :cond_12
    return v0
.end method

.method public static metricEnded(Ljava/lang/String;)V
    .registers 6

    .line 942
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 944
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static metricShutdownStart()V
    .registers 4

    .line 949
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 950
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static metricStarted(Ljava/lang/String;)V
    .registers 6

    .line 936
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 937
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static newTimingsLog()Landroid/util/TimingsTraceLog;
    .registers 4

    .line 932
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static openLogFileWriter()V
    .registers 3

    const-string v0, "ShutdownThread"

    const-string v1, "Shutdown logFileWriter start"

    .line 1240
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez v0, :cond_17

    .line 1242
    new-instance v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v1, "/data/log/"

    const-string/jumbo v2, "shutdown_profile"

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    :cond_17
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShutdownThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz p2, :cond_29

    const-string p0, "!@Request to shutdown already running, returning."

    .line 436
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    const/4 p2, 0x1

    .line 439
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 p2, 0x0

    .line 440
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 441
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 442
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 p1, 0x0

    .line 443
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    .line 444
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", caller : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShutdownThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz p2, :cond_31

    const-string p0, "!@Request to shutdown already running, returning."

    .line 458
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const/4 p2, 0x1

    .line 461
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 p2, 0x0

    .line 462
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 463
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 464
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 465
    sput-object p3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    .line 466
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6

    const-string v0, "ShutdownThread"

    if-eqz p1, :cond_26

    .line 1117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "!@Rebooting, reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    const-string p0, "!@Reboot failed, will attempt shutdown instead"

    .line 1119
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->closeLogFileWriter()V

    const-string p2, "[shutdownthread]rebootFailed"

    goto :goto_3e

    :cond_26
    if-eqz p0, :cond_3e

    .line 1124
    new-instance p1, Landroid/os/SystemVibrator;

    invoke-direct {p1, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x1f4

    .line 1126
    :try_start_2f
    sget-object p0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v1, v2, p0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p0

    const-string p1, "Failed to vibrate during shutdown."

    .line 1129
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    :goto_3b
    :try_start_3b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3e

    :catch_3e
    :cond_3e
    :goto_3e
    const-string p0, "!@Performing low-level shutdown..."

    .line 1139
    invoke-static {v0, p0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->closeLogFileWriter()V

    .line 1141
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 4

    .line 478
    sget-boolean p1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    const-string v0, "ShutdownThread"

    if-eqz p1, :cond_c

    const-string p0, "!@Request to shutdown already running, returning./rebootSafeMode()"

    .line 479
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string/jumbo p1, "user"

    .line 483
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    .line 484
    invoke-virtual {p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    :try_start_1f
    const-string/jumbo p1, "restriction_policy"

    .line 491
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 492
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {p1, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string/jumbo p1, "safe mode is not allowed by IT admin"

    .line 493
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    :cond_3e
    const/4 p1, 0x1

    .line 500
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 501
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 p1, 0x0

    .line 502
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const-string p1, "SafeMode"

    .line 503
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 p1, 0x0

    .line 504
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    .line 505
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static saveMetrics(ZLjava/lang/String;)V
    .registers 11

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot:"

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_11

    const-string/jumbo p0, "y"

    goto :goto_14

    :cond_11
    const-string/jumbo p0, "n"

    .line 1147
    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    .line 1148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "reason:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    sget-object p0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 p1, 0x0

    move v1, p1

    :goto_2d
    const-string v2, "ShutdownThread"

    if-ge v1, p0, :cond_72

    .line 1151
    sget-object v3, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1152
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_5f

    .line 1154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "metricEnded wasn\'t called for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_5f
    const/16 v2, 0x2c

    .line 1157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1159
    :cond_72
    new-instance p0, Ljava/io/File;

    const-string v1, "/data/system/shutdown-metrics.tmp"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1161
    :try_start_7a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_9c

    .line 1162
    :try_start_7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_92

    .line 1164
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_a4

    :catch_90
    move-exception p1

    goto :goto_9f

    :catchall_92
    move-exception v0

    .line 1161
    :try_start_93
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception v1

    :try_start_98
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9b
    throw v0
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v0

    move v1, p1

    move-object p1, v0

    :goto_9f
    const-string v0, "Cannot save shutdown metrics"

    .line 1165
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a4
    if-eqz v1, :cond_b0

    .line 1168
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/system/shutdown-metrics.txt"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_b0
    return-void
.end method

.method public static sendMylog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 287
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    .registers 3

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setInputKeysDisable()V
    .registers 3

    const-string/jumbo v0, "input"

    .line 704
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    const-string v1, "ShutdownThread"

    if-nez v0, :cond_15

    const-string v0, "ServiceManager.checkService fail"

    .line 706
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    :try_start_15
    const-string/jumbo v2, "setInputKeysDisable"

    .line 710
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 711
    invoke-interface {v0, v2}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_29

    :catch_20
    move-exception v0

    const-string v2, "error occur while input disable"

    .line 713
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_29
    return-void
.end method

.method public static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 9

    .line 510
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 535
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6a

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 538
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 539
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const v1, 0x1040b67

    .line 540
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 541
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_55

    const/16 v1, 0x64

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 543
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 544
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 545
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x1040b65

    .line 547
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_cc

    .line 550
    :cond_55
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_5c

    return-object v3

    .line 553
    :cond_5c
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x1040b66

    .line 554
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_cc

    .line 557
    :cond_6a
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const v5, 0x1040d5d

    const v6, 0x1040b3f

    if-eqz v1, :cond_b4

    const-string/jumbo v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 558
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 562
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_cc

    .line 565
    :cond_95
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_9c

    return-object v3

    :cond_9c
    const v1, 0x1040b63

    .line 569
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1040b62

    .line 570
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_cc

    .line 575
    :cond_b4
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_bb

    return-object v3

    .line 578
    :cond_bb
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 582
    :goto_cc
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 583
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7d9

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    .line 585
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static showSysuiReboot()Z
    .registers 4

    const-string v0, "ShutdownThread"

    const-string v1, "Attempting to use SysUI shutdown UI"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :try_start_7
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 594
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showShutdownUi(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "SysUI handling shutdown UI"

    .line 596
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    return v0

    :catch_20
    :cond_20
    const-string v1, "SysUI is unavailable"

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShutdownThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz p2, :cond_29

    const-string p0, "!@Request to shutdown already running, returning."

    .line 232
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    const/4 p2, 0x0

    .line 236
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 237
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 238
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 p1, 0x0

    .line 239
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    .line 240
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", caller : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShutdownThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz p2, :cond_31

    const-string p0, "!@Request to shutdown already running, returning."

    .line 254
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const/4 p2, 0x0

    .line 257
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 258
    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 259
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 260
    sput-object p3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    .line 261
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static shutdownInner(Landroid/content/Context;)V
    .registers 7

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 297
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_6
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    const-string p0, "ShutdownThread"

    const-string v1, "!@Request to shutdown already running, returning./shutdowninner"

    .line 299
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return-void

    :cond_13
    const/4 v1, 0x0

    .line 303
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsRestrict:Z
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_ee

    const/4 v2, 0x1

    :try_start_17
    const-string/jumbo v3, "restriction_policy"

    .line 308
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v3

    .line 309
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_2a

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v4, :cond_5a

    :cond_2a
    if-eqz v3, :cond_5a

    .line 310
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    if-nez v4, :cond_5a

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "ShutdownThread"

    const-string v4, "Shutdown Disabled by Administrator"

    .line 311
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsRestrict:Z

    .line 313
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_47} :catch_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_47} :catch_49
    .catchall {:try_start_17 .. :try_end_47} :catchall_ee

    .line 314
    :try_start_47
    monitor-exit v0

    return-void

    :catch_49
    move-exception v3

    const-string v4, "ShutdownThread"

    const-string v5, "Exception"

    .line 320
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_52
    move-exception v3

    const-string v4, "ShutdownThread"

    const-string v5, "RemoteException"

    .line 318
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :cond_5a
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_ee

    const-string/jumbo v0, "persist.sys.rescue_level"

    .line 327
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_82

    const-string/jumbo v0, "persist.sys.enable_isrb"

    .line 329
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.rescue_mode"

    const-string/jumbo v3, "isrb_off"

    .line 330
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.isrblevel.callreboot"

    .line 331
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_93

    move v1, v2

    .line 341
    :cond_93
    new-instance v0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_9b

    const v1, 0x1030128

    goto :goto_9e

    :cond_9b
    const v1, 0x103012b

    .line 342
    :goto_9e
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 344
    new-instance p0, Ljava/lang/Exception;

    const-string v1, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->UpdatePoweroffResetReason(Ljava/lang/Exception;)V

    const-wide/16 v1, 0x32

    .line 350
    :try_start_ad
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b9

    :catch_b1
    move-exception p0

    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    .line 352
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :goto_b9
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 357
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ShutdownThread"

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@########POWEROFF START###### current time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/power/ShutdownThread;->currentTimeMillisStart:J

    .line 360
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void

    :catchall_ee
    move-exception p0

    .line 324
    :try_start_ef
    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    throw p0
.end method

.method public static systemShutdown(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemShutdown - reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_21

    const-string p0, "!@Request to shutdown already running, returning."

    .line 268
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v0, 0x0

    .line 271
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 272
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 273
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 p1, 0x0

    .line 274
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 275
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    .line 276
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static wirteLogFileWriter(Ljava/lang/String;)V
    .registers 3

    .line 1255
    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_9

    const-string v1, "ShutdownThread"

    .line 1256
    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public actionDone()V
    .registers 3

    .line 719
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 720
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 721
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 722
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public run()V
    .registers 15

    .line 730
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    const-string v1, "SystemServerShutdown"

    .line 731
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->metricShutdownStart()V

    .line 733
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->-$$Nest$smOn()V

    .line 737
    new-instance v6, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_25

    const-string v2, "1"

    goto :goto_27

    :cond_25
    const-string v2, "0"

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_2f

    goto :goto_31

    :cond_2f
    const-string v2, ""

    :goto_31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.shutdown.requested"

    .line 751
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "persist.sys.safemode"

    const-string v2, "1"

    .line 759
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    const-string v1, "DumpPreRebootInfo"

    .line 762
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    :try_start_4f
    const-string v1, "ShutdownThread"

    const-string v2, "Logging pre-reboot information..."

    .line 764
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception v1

    const-string v2, "ShutdownThread"

    const-string v3, "Failed to log pre-reboot information"

    .line 767
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    :goto_64
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 771
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string v1, "SendShutdownBroadcast"

    .line 772
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    const-string v1, "ShutdownThread"

    const-string v2, "!@Sending shutdown broadcast..."

    .line 773
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 776
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 777
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 778
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 779
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    .line 783
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 784
    :catch_9e
    :goto_9e
    :try_start_9e
    iget-boolean v6, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const/4 v7, 0x0

    if-nez v6, :cond_dc

    .line 785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v1, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gtz v6, :cond_b7

    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown broadcast timed out"

    .line 787
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 789
    :cond_b7
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_d0

    sub-long v10, v3, v8

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide v12, 0x40c3880000000000L    # 10000.0

    div-double/2addr v10, v12

    double-to-int v6, v10

    .line 792
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_d0
    .catchall {:try_start_9e .. :try_end_d0} :catchall_279

    .line 795
    :cond_d0
    :try_start_d0
    iget-object v6, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v10, 0x1f4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_db
    .catch Ljava/lang/InterruptedException; {:try_start_d0 .. :try_end_db} :catch_9e
    .catchall {:try_start_d0 .. :try_end_db} :catchall_279

    goto :goto_9e

    .line 799
    :cond_dc
    :goto_dc
    :try_start_dc
    monitor-exit v5
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_279

    .line 800
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_e7

    .line 801
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 804
    :cond_e7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/power/ShutdownThread;->currentTimeMillisStart:J

    sub-long/2addr v1, v3

    const-string v3, "dev.shutdownbroadcast.on"

    const-string v4, ""

    .line 805
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 806
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    const/16 v5, 0x10

    if-eqz v4, :cond_104

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    if-nez v4, :cond_12c

    :cond_104
    const-wide/16 v8, 0x1388

    cmp-long v4, v1, v8

    if-ltz v4, :cond_12c

    const-string v3, "ShutdownThread"

    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@shutdown is too slow, elapsed time from POWEROFF START to BROADCAST_SHUTDOWN is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v1, Landroid/os/BugreportParams;

    invoke-direct {v1, v5}, Landroid/os/BugreportParams;-><init>(I)V

    const-string/jumbo v2, "shutdownthread"

    invoke-static {v1, v2}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    goto :goto_13f

    :cond_12c
    const-string v1, "On"

    .line 809
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 810
    new-instance v1, Landroid/os/BugreportParams;

    invoke-direct {v1, v5}, Landroid/os/BugreportParams;-><init>(I)V

    const-string/jumbo v2, "shutdownthread"

    invoke-static {v1, v2}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 813
    :cond_13f
    :goto_13f
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 814
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->shutdownHermes()V

    const-string v1, "ShutdownThread"

    const-string v2, "!@Shutting down activity manager..."

    .line 818
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ShutdownActivityManager"

    .line 819
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 820
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string v1, "activity"

    .line 823
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    if-eqz v1, :cond_16c

    const/16 v2, 0x2710

    .line 826
    :try_start_169
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_16c} :catch_16c

    .line 830
    :catch_16c
    :cond_16c
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_176

    .line 831
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 833
    :cond_176
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 834
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string v1, "ShutdownThread"

    const-string v2, "!@Shutting down package manager..."

    .line 836
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ShutdownPackageManager"

    .line 837
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 838
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 840
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_19c

    .line 842
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    .line 844
    :cond_19c
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_1a6

    .line 845
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 847
    :cond_1a6
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 848
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string v1, "ShutdownRadios"

    .line 851
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 852
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const/16 v1, 0x2ee0

    .line 853
    invoke-virtual {p0, v1}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 854
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_1c8

    .line 855
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 857
    :cond_1c8
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 858
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 860
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_1de

    .line 861
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 868
    :cond_1de
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 869
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 870
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->saveMetrics(ZLjava/lang/String;)V

    const-string v0, "ShutdownThread"

    const-string v1, "!@waitForAnimEnd"

    .line 872
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ON"

    const-string/jumbo v1, "service.poweranimation.on"

    const-string v2, ""

    .line 873
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_212

    const-string v0, "ShutdownThread"

    const-string v2, "!@wait for PNG animation end"

    .line 875
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {p0, v1}, Lcom/android/server/power/ShutdownThread;->waitForAnimationEnd(I)Z

    goto :goto_228

    .line 877
    :cond_212
    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v0

    if-eqz v0, :cond_228

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mSupportQmg:Z

    if-eqz v0, :cond_228

    const-string v0, "ShutdownThread"

    const-string v2, "!@wait for QMG animation end"

    .line 879
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_228
    :goto_228
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    .line 883
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    const/16 v0, 0x3c

    .line 884
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownThread;->waitForDumpstateEnd(I)Z

    :cond_23e
    const-string v0, "ShutdownThread"

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@run, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_252

    const-string/jumbo v2, "reboot"

    goto :goto_255

    :cond_252
    const-string/jumbo v2, "shutdown"

    :goto_255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_262

    goto :goto_265

    :cond_262
    const-string/jumbo v2, "null"

    :goto_265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    :catchall_279
    move-exception p0

    .line 799
    :try_start_27a
    monitor-exit v5
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    throw p0
.end method

.method public final setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5

    .line 955
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final shutdownHermes()V
    .registers 4

    .line 970
    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string p0, "ShutdownThread"

    const-string v1, "!@Shutdown HermesService start."

    .line 994
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0x1e

    .line 997
    :try_start_11
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    const-string v0, "!@Shutdown HermesService end."

    .line 1000
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final shutdownRadios(I)V
    .registers 12

    .line 1042
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long v6, v0, v2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 1044
    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    move-object v4, v1

    move-object v5, p0

    move v8, p1

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1099
    :try_start_16
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    const/4 p0, 0x0

    aget-boolean p0, v0, p0

    if-nez p0, :cond_25

    const-string p0, "ShutdownThread"

    const-string p1, "Timed out waiting for Radio shutdown."

    .line 1103
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public final uncrypt()V
    .registers 9

    const-string v0, "ShutdownThread"

    const-string v1, "Calling uncrypt and monitoring the progress..."

    .line 1173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v2, 0x1

    new-array v3, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    .line 1198
    new-instance v5, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 1219
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const-wide/32 v6, 0xdbba0

    .line 1222
    :try_start_1d
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    aget-boolean p0, v3, v4

    if-nez p0, :cond_4f

    const-string p0, "Timed out waiting for uncrypt."

    .line 1226
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v1, 0x384

    .line 1229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v4

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v2

    const-string/jumbo v1, "uncrypt_time: %d\nuncrypt_error: %d\n"

    .line 1228
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1231
    :try_start_43
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v1, p0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_4f

    :catch_49
    move-exception p0

    const-string v1, "Failed to write timeout message to uncrypt status"

    .line 1233
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return-void
.end method

.method public waitForAnimationEnd(I)Z
    .registers 6

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long p0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    add-long/2addr v0, p0

    :goto_9
    const-string p0, "dev.shutdownanimation.end"

    .line 896
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "END"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long p0, v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    const-string p1, "ShutdownThread"

    if-gtz p0, :cond_2b

    const-string p0, "!@Animation finish wait timed out"

    .line 899
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_2b
    const-string p0, "!@wait for finish : sleep 100ms"

    .line 902
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x64

    .line 904
    :try_start_32
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_9

    :catch_36
    const-string p0, "InterruptedException"

    .line 906
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_3c
    :goto_3c
    const/4 p0, 0x1

    return p0
.end method

.method public waitForDumpstateEnd(I)Z
    .registers 8

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long p0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    add-long/2addr v0, p0

    :goto_9
    const-string/jumbo p0, "init.svc.bugreportd"

    .line 914
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "running"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    const-string/jumbo p0, "init.svc.bugreportm"

    .line 915
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 916
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long p0, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, p0, v4

    const-string p1, "ShutdownThread"

    if-gtz p0, :cond_3b

    const-string p0, "!@Dumpstate finish wait timed out"

    .line 918
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 p0, 0x1

    return p0

    :cond_3b
    const-string p0, "!@wait for finish Dumpstate: sleep 1000ms"

    .line 921
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :try_start_40
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_9

    :catch_44
    const-string p0, "InterruptedException"

    .line 925
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
