.class public Lcom/samsung/android/gesture/PocketLogManager;
.super Ljava/lang/Object;
.source "PocketLogManager.java"


# static fields
.field private static LOG_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static mDebug:Z

.field private static final mPocketLock:Ljava/lang/Object;

.field private static pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;


# instance fields
.field private isDumpWrite:I

.field private mAodEndTime:I

.field private mAodStartTime:I

.field private mAodType:Ljava/lang/String;

.field private mAutoBrightness:Z

.field private mDumpList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/gesture/PocketDumpData;",
            ">;"
        }
    .end annotation
.end field

.field private mLightType:I

.field private mPocketVer:I

.field private mProxSubType:I

.field private mProxType:I

.field private mSensitivityType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    .line 27
    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->LOG_FILE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->isDumpWrite:I

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketLogManager;->initialize()V

    .line 49
    return-void
.end method

.method private checkDebugMode()V
    .registers 4

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/pocketmode.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "file":Ljava/io/File;
    sget-boolean v1, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    return-void

    .line 76
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 77
    sget-object v1, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Debug file is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 79
    :cond_1b
    sput-boolean v2, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    .line 80
    sget-object v1, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Debug is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_24
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-eqz v0, :cond_a

    .line 87
    invoke-static {p0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->remainLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-eqz v0, :cond_a

    .line 99
    invoke-static {p0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->remainLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_a
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketLogManager;
    .registers 1

    .line 52
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/samsung/android/gesture/PocketLogManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketLogManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    .line 55
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    return-object v0
.end method

.method private initialize()V
    .registers 9

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketLogManager;->checkDebugMode()V

    .line 60
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_76

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    .line 64
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const/16 v2, 0xb

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    .line 63
    const-string v2, "%02d%02d%02d%02d%02d"

    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "strTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/pocketmode_log_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/gesture/PocketLogManager;->LOG_FILE:Ljava/lang/String;

    .line 68
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "strTime":Ljava/lang/String;
    :cond_76
    iput v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mSensitivityType:I

    iput v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    iput v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    iput v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxType:I

    .line 69
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 70
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private static remainLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logString"    # Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%04d-%02d-%02d %02d:%02d:%02d.%03d] "

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    .line 108
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v3, v8

    .line 109
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v3, v7

    .line 106
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "strTime":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/gesture/PocketLogManager;->mPocketLock:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "out":Ljava/io/PrintStream;
    :try_start_70
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/samsung/android/gesture/PocketLogManager;->LOG_FILE:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_cf

    .line 115
    .local v5, "file":Ljava/io/File;
    :try_start_77
    new-instance v7, Ljava/io/PrintStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "utf-8"

    invoke-direct {v7, v8, v6, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    move-object v3, v7

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_a7} :catch_aa
    .catchall {:try_start_77 .. :try_end_a7} :catchall_a8

    .line 120
    goto :goto_c3

    :catchall_a8
    move-exception v4

    goto :goto_c8

    .line 117
    :catch_aa
    move-exception v4

    .line 118
    .local v4, "e":Ljava/lang/Exception;
    :try_start_ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception on logPrint : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_a8

    .line 120
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_c6

    .line 121
    :goto_c3
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 124
    .end local v3    # "out":Ljava/io/PrintStream;
    .end local v5    # "file":Ljava/io/File;
    :cond_c6
    monitor-exit v2

    .line 125
    return-void

    .line 120
    .restart local v3    # "out":Ljava/io/PrintStream;
    .restart local v5    # "file":Ljava/io/File;
    :goto_c8
    if-eqz v3, :cond_cd

    .line 121
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 123
    :cond_cd
    nop

    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "strTime":Ljava/lang/String;
    .end local p0    # "TAG":Ljava/lang/String;
    .end local p1    # "logString":Ljava/lang/String;
    throw v4

    .line 124
    .end local v3    # "out":Ljava/io/PrintStream;
    .end local v5    # "file":Ljava/io/File;
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "strTime":Ljava/lang/String;
    .restart local p0    # "TAG":Ljava/lang/String;
    .restart local p1    # "logString":Ljava/lang/String;
    :catchall_cf
    move-exception v3

    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_cf

    throw v3
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-eqz v0, :cond_a

    .line 93
    invoke-static {p0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->remainLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_a
    return-void
.end method


# virtual methods
.method public addDump(Lcom/samsung/android/gesture/PocketDumpData;)V
    .registers 4
    .param p1, "dumpData"    # Lcom/samsung/android/gesture/PocketDumpData;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_10

    .line 129
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public dumpData(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** PocketModeEvent dump ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") *****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketLogManager;->printSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketLogManager;->printAodType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketLogManager;->printAutoBrightness()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/PocketDumpData;

    .line 218
    .local v1, "data":Lcom/samsung/android/gesture/PocketDumpData;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDumpData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    .end local v1    # "data":Lcom/samsung/android/gesture/PocketDumpData;
    goto :goto_39

    .line 220
    :cond_4d
    return-void
.end method

.method public getIsDumpWrite()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->isDumpWrite:I

    return v0
.end method

.method public printAodType()Ljava/lang/String;
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodType:Ljava/lang/String;

    .line 198
    .local v0, "strAOD":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printAutoBrightness()Ljava/lang/String;
    .registers 3

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAutoBrightness:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 205
    const-string v0, "Auto Brightness ON"

    return-object v0

    .line 207
    :cond_8
    const-string v0, "Auto Brightness OFF"

    return-object v0
.end method

.method public printSensorType()Ljava/lang/String;
    .registers 8

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "proxStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 172
    .local v1, "proxSubStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 173
    .local v2, "lightStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 174
    .local v3, "sensitivityStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 176
    .local v4, "pocketVerStr":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 177
    sget-object v5, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxSubType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 179
    iget v5, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    if-nez v5, :cond_2a

    .line 180
    const-string v2, "SENSOR_TYPE_LIGHT"

    goto :goto_35

    .line 181
    :cond_2a
    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 182
    const-string v2, "SENSOR_TYPE_LIGHT_CCT"

    goto :goto_35

    .line 183
    :cond_30
    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    .line 184
    const-string v2, "SENSOR_TYPE_LIGHT_CAMERA"

    .line 186
    :cond_35
    :goto_35
    sget-object v5, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mSensitivityType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .line 188
    iget v5, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    if-nez v5, :cond_4b

    .line 189
    const-string v4, "not used pocket sensor"

    goto :goto_64

    .line 191
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ver."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    :goto_64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prox : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nProx Sub : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nLight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nSensitivity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nPocket : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public setAodTime(II)V
    .registers 3
    .param p1, "stTime"    # I
    .param p2, "enTime"    # I

    .line 149
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodStartTime:I

    .line 150
    iput p2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodEndTime:I

    .line 151
    return-void
.end method

.method public setAodType(Ljava/lang/String;)V
    .registers 2
    .param p1, "aodType"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setAutoBrightnessEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAutoBrightness:Z

    .line 146
    return-void
.end method

.method public setIsDumpWrite(I)V
    .registers 2
    .param p1, "isDumpWrite"    # I

    .line 166
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->isDumpWrite:I

    .line 167
    return-void
.end method

.method public setPocketVer(I)V
    .registers 2
    .param p1, "pocketVer"    # I

    .line 154
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    .line 155
    return-void
.end method

.method public setSensorType(IIII)V
    .registers 5
    .param p1, "proxType"    # I
    .param p2, "proxSubType"    # I
    .param p3, "lightType"    # I
    .param p4, "sensitivityType"    # I

    .line 134
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxType:I

    .line 135
    iput p2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxSubType:I

    .line 136
    iput p3, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    .line 137
    iput p4, p0, Lcom/samsung/android/gesture/PocketLogManager;->mSensitivityType:I

    .line 138
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mVersion:Ljava/lang/String;

    .line 159
    return-void
.end method
