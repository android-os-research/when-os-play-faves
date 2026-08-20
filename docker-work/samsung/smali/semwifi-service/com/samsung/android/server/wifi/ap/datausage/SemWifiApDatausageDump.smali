.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;
.super Ljava/lang/Object;
.source "SemWifiApDatausageDump.java"


# static fields
.field private static final LOG_DEBUG_FILE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "SemWifiApDatausageDump"

.field private static mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi_hostapd/dataUsage_log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mObject:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mMHSDumpLogs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const-class v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;

    monitor-enter v0

    if-eqz p2, :cond_2d

    .line 48
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->dumpToLogFile(Ljava/lang/String;)V

    .line 50
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_57

    .line 51
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;

    monitor-enter v0

    .line 137
    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v2, 0x3e8

    if-le p0, v2, :cond_1b

    .line 140
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mMHSDumpLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    :cond_1b
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 143
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createOrChangePermission()V
    .registers 4

    .line 24
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    .line 27
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_15
    const/4 v0, 0x3

    :try_start_16
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/chmod 665 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_40} :catch_4c

    .line 35
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 36
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_46} :catch_47
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_4c

    goto :goto_50

    :catch_47
    move-exception v0

    .line 38
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    return-void
.end method

.method private static dumpToLogFile(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->dumpToLogFile(Ljava/lang/String;Z)V

    return-void
.end method

.method private static dumpToLogFile(Ljava/lang/String;Z)V
    .registers 9

    .line 56
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_19

    .line 59
    :cond_16
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->createOrChangePermission()V

    .line 61
    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 62
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not dump to log file:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "could not dump to log file:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addMHSDumpLog(Ljava/lang/String;)V

    .line 64
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_ed

    return-void

    :cond_4b
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_58

    .line 70
    :try_start_4f
    new-instance p1, Ljava/io/FileWriter;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v6, 0x0

    invoke-direct {p1, v1, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    goto :goto_5d

    .line 72
    :cond_58
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    :goto_5d
    move-object v3, p1

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_67

    .line 75
    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_67} :catch_72
    .catchall {:try_start_4f .. :try_end_67} :catchall_70

    .line 82
    :cond_67
    :try_start_67
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_ed

    goto :goto_7e

    :catch_6b
    move-exception p0

    .line 84
    :goto_6c
    :try_start_6c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_ed

    goto :goto_7e

    :catchall_70
    move-exception p0

    goto :goto_e2

    :catch_72
    move-exception p0

    .line 78
    :try_start_73
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    if-eqz v3, :cond_7e

    .line 82
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_ed

    goto :goto_7e

    :catch_7c
    move-exception p0

    goto :goto_6c

    .line 88
    :cond_7e
    :goto_7e
    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_ed

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_e1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v1, 0x2000

    cmp-long p0, p0, v1

    if-lez p0, :cond_e1

    .line 90
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->readLogFile(Ljava/lang/StringBuffer;)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 94
    array-length v1, p0

    .line 95
    div-int/lit8 v2, v1, 0x2

    :goto_a9
    if-ltz v2, :cond_ba

    if-ge v2, v1, :cond_ba

    .line 96
    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    .line 97
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 99
    :cond_ba
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "logdumpfile is reduced from:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",to:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addMHSDumpLog(Ljava/lang/String;)V

    :cond_e1
    return-void

    :goto_e2
    if-eqz v3, :cond_ec

    .line 82
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_ed

    goto :goto_ec

    :catch_e8
    move-exception p1

    .line 84
    :try_start_e9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :cond_ec
    :goto_ec
    throw p0

    :catchall_ed
    move-exception p0

    .line 88
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_e9 .. :try_end_ef} :catchall_ed

    throw p0
.end method

.method public static getDumpLogs()Ljava/lang/String;
    .registers 4

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--SemWifiApDataUsage \n"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n dump of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",size ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->readLogFile(Ljava/lang/StringBuffer;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeStamp()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readLogFile(Ljava/lang/StringBuffer;)V
    .registers 6

    .line 105
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 108
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_67

    return-void

    :cond_12
    const/4 v1, 0x0

    .line 112
    :try_start_13
    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_42
    .catchall {:try_start_13 .. :try_end_1a} :catchall_40

    .line 113
    :try_start_1a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    .line 118
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_3a
    .catchall {:try_start_1a .. :try_end_2d} :catchall_37

    goto :goto_1f

    .line 127
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_67

    goto :goto_5a

    :catch_32
    move-exception p0

    .line 129
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_67

    goto :goto_5a

    :catchall_37
    move-exception p0

    move-object v1, v3

    goto :goto_5c

    :catch_3a
    move-exception p0

    move-object v1, v3

    goto :goto_43

    :catch_3d
    move-exception p0

    move-object v1, v3

    goto :goto_4f

    :catchall_40
    move-exception p0

    goto :goto_5c

    :catch_42
    move-exception p0

    .line 123
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    if-eqz v1, :cond_5a

    .line 127
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_67

    goto :goto_5a

    :catch_4c
    move-exception p0

    goto :goto_33

    :catch_4e
    move-exception p0

    .line 121
    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_40

    if-eqz v1, :cond_5a

    .line 127
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_67

    goto :goto_5a

    :catch_58
    move-exception p0

    goto :goto_33

    .line 133
    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_67

    return-void

    :goto_5c
    if-eqz v1, :cond_66

    .line 127
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_67

    goto :goto_66

    :catch_62
    move-exception v1

    .line 129
    :try_start_63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    :cond_66
    :goto_66
    throw p0

    :catchall_67
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_67

    throw p0
.end method
