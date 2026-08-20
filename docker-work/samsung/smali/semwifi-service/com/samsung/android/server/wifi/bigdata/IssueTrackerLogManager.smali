.class public Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;
.super Ljava/lang/Object;
.source "IssueTrackerLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;,
        Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;
    }
.end annotation


# static fields
.field static final ACTION_ISSUE_TRACKER_ON_OFF:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ONOFF"

.field static final ACTION_ISSUE_TRACKER_RESULT:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"

.field static final ACTION_ISSUE_TRACKER_WIFI_ADVANCED:Ljava/lang/String; = "com.samsung.android.WLAN_ADVANCED_DEBUG"

.field static final EXTRA_ERROR_CODE:Ljava/lang/String; = "ERRCODE"

.field private static final EXTRA_ERROR_MSG:Ljava/lang/String; = "ERRMSG"

.field static final EXTRA_ERROR_NAME:Ljava/lang/String; = "ERRNAME"

.field static final EXTRA_ERROR_PACKAGE:Ljava/lang/String; = "ERRPKG"

.field static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field static final EXTRA_ON_OFF:Ljava/lang/String; = "ONOFF"

.field public static final ISSUE_TRACKER_SYS_DUMP_DISC:I = 0x2

.field public static final ISSUE_TRACKER_SYS_DUMP_HANG:I = 0x0

.field public static final ISSUE_TRACKER_SYS_DUMP_UNWANTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifi.IssueTracker"

.field public static final WLAN_ADVANCED_DEBUG_DISC:I = 0x4

.field public static final WLAN_ADVANCED_DEBUG_HOTSPOT:I = 0x40

.field public static final WLAN_ADVANCED_DEBUG_PKT:I = 0x1

.field public static final WLAN_ADVANCED_DEBUG_RESET:I = 0x0

.field public static final WLAN_ADVANCED_DEBUG_UNWANTED:I = 0x2

.field public static final WLAN_ADVANCED_DEBUG_UNWANTED_PANIC:I = 0x10


# instance fields
.field private advancedDebugFlags:I

.field private final context:Landroid/content/Context;

.field private hotspotLogThread:Ljava/lang/Thread;

.field private isActive:Z

.field private isHotspotLogRunning:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTimeToString(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->getTimeToString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->context:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 81
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private captureBugReport()V
    .registers 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unwanted_dumpState_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->getTimeToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/bin/sh"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "-c"

    aput-object v3, v2, v1

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system/bin/bugreport > /data/log/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 209
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->executeCommand([Ljava/lang/String;)Z

    move-result p0

    const-string v1, "SemWifi.IssueTracker"

    if-eqz p0, :cond_5d

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureBugReport completed ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_5d
    const-string p0, "captureBugReport failed"

    .line 212
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    return-void
.end method

.method private executeCommand([Ljava/lang/String;)Z
    .registers 2

    .line 229
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method

.method private getTimeToString(Z)Ljava/lang/String;
    .registers 10

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 239
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x2

    .line 240
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    .line 241
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    .line 242
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 243
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_4b

    const/16 p1, 0xd

    .line 246
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v6, p1

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_4b
    const-string p1, ""

    .line 248
    :goto_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupDumpFlagForS_LSI()V
    .registers 4

    const-string v0, "/system/bin/sh"

    const-string v1, "-c"

    const-string v2, "system/bin/cp /data/log/mx_panic /proc/driver/mxman_ctrl0/mx_panic"

    .line 217
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->executeCommand([Ljava/lang/String;)Z

    move-result p0

    const-string v0, "SemWifi.IssueTracker"

    if-eqz p0, :cond_18

    const-string p0, "setupDumpFlagForS_LSI completed"

    .line 221
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_18
    const-string p0, "setupDumpFlagForS_LSI failed"

    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method private writeToMxPanicFile()V
    .registers 2

    .line 195
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/log/mx_panic"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    :try_start_7
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_22

    :try_start_c
    const-string p0, "1"

    .line 197
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 198
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 199
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_22

    goto :goto_29

    :catchall_18
    move-exception p0

    .line 196
    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    const-string p0, "SemWifi.IssueTracker"

    const-string v0, "writeToMxPanicFile failed"

    .line 200
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method


# virtual methods
.method public captureDumpForUnwanted()V
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwanted()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->sendBroadcastIssueTrackerSysDump(I)V

    .line 180
    :cond_10
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwanted()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwantedPanic()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 182
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isEnabledAdvDebugForUnwantedPanic()Z

    move-result v0

    const-string v1, "SemWifi.IssueTracker"

    if-eqz v0, :cond_35

    const-string v0, "captureDumpForUnwanted - panic file"

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->writeToMxPanicFile()V

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->setupDumpFlagForS_LSI()V

    .line 187
    :cond_35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "captureDumpForUnwanted - bug report"

    .line 188
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->captureBugReport()V

    :cond_43
    return-void
.end method

.method public isActive()Z
    .registers 1

    .line 132
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive:Z

    return p0
.end method

.method public isEnabledAdvDebugForDISC()Z
    .registers 1

    .line 136
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isEnabledAdvDebugForUnwanted()Z
    .registers 1

    .line 140
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isEnabledAdvDebugForUnwantedPanic()Z
    .registers 1

    .line 144
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->advancedDebugFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public runHotspotDebugLog()V
    .registers 4

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->stopHotspotDebugLog()V

    .line 253
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner-IA;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->hotspotLogThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 254
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    .line 255
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendBroadcastIssueTrackerSysDump(I)V
    .registers 9

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 149
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcastIssueTrackerSysDump reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifi.IssueTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ERRPKG"

    const-string v3, "WifiStateMachine"

    .line 152
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ERRMSG"

    const-string v3, "ERRNAME"

    const/16 v4, -0x6e

    const-string v5, "ERRCODE"

    if-eqz p1, :cond_6c

    const/4 v6, 0x1

    if-eq p1, v6, :cond_5e

    const/4 v6, 0x2

    if-eq p1, v6, :cond_50

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_50
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DISC"

    .line 166
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Wi-Fi DISC happened"

    .line 167
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_79

    .line 160
    :cond_5e
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "UNWANTED"

    .line 161
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Wi-Fi UNWANTED happened"

    .line 162
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_79

    .line 155
    :cond_6c
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "HANGED"

    .line 156
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Wi-Fi chip HANGED"

    .line 157
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :goto_79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->context:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public stopHotspotDebugLog()V
    .registers 2

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->isHotspotLogRunning:Z

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->hotspotLogThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->hotspotLogThread:Ljava/lang/Thread;

    :cond_d
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
