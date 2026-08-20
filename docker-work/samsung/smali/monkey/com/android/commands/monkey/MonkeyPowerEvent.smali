.class public Lcom/android/commands/monkey/MonkeyPowerEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPowerEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/autotester.log"

.field private static final TAG:Ljava/lang/String; = "PowerTester"

.field private static final TEST_DELAY_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN_DELAY"

.field private static final TEST_ENDED:Ljava/lang/String; = "AUTOTEST_TEST_SUCCESS"

.field private static final TEST_IDLE_ENDED:Ljava/lang/String; = "AUTOTEST_IDLE_SUCCESS"

.field private static final TEST_SEQ_BEGIN:Ljava/lang/String; = "AUTOTEST_SEQUENCE_BEGIN"

.field private static final TEST_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN"

.field private static final USB_DELAY_TIME:J = 0x2710L

.field private static mLogEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static mTestStartTime:J


# instance fields
.field private mPowerLogTag:Ljava/lang/String;

.field private mTestResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "powerLogTag"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 59
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "powerLogTag"    # Ljava/lang/String;
    .param p2, "powerTestResult"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 53
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "tagTime":J
    const-string v2, "AUTOTEST_TEST_BEGIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 76
    sput-wide v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    goto :goto_33

    .line 77
    :cond_f
    const-string v2, "AUTOTEST_IDLE_SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    .line 78
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 79
    .local v2, "lagTime":J
    sget-wide v4, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    add-long v0, v4, v2

    .line 80
    const-string p1, "AUTOTEST_TEST_SUCCESS"

    .line 81
    .end local v2    # "lagTime":J
    :cond_21
    goto :goto_33

    :cond_22
    const-string v2, "AUTOTEST_TEST_BEGIN_DELAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    .line 82
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 83
    sget-wide v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 84
    const-string p1, "AUTOTEST_TEST_BEGIN"

    .line 87
    :goto_33
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v2, "event":Landroid/content/ContentValues;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v3, "tag"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_4d

    .line 92
    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_4d
    sget-object v3, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method private writeLogEvents()V
    .registers 10

    .line 103
    const-string v0, "value"

    sget-object v1, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 104
    .local v1, "events":[Landroid/content/ContentValues;
    sget-object v2, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_13
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v1

    if-ge v4, v5, :cond_5b

    .line 109
    aget-object v5, v1, v4

    .line 110
    .local v5, "event":Landroid/content/ContentValues;
    const-string v6, "date"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v6, "tag"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 113
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "value":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const/16 v7, 0xa

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .end local v6    # "value":Ljava/lang/String;
    :cond_52
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    nop

    .end local v5    # "event":Landroid/content/ContentValues;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 119
    .end local v4    # "i":I
    :cond_5b
    new-instance v0, Ljava/io/FileWriter;

    const-string v4, "/sdcard/autotester.log"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v0

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6b} :catch_73
    .catchall {:try_start_13 .. :try_end_6b} :catchall_71

    .line 125
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 127
    :cond_6e
    :goto_6e
    goto :goto_81

    .line 126
    :catch_6f
    move-exception v0

    .line 128
    goto :goto_81

    .line 124
    :catchall_71
    move-exception v0

    goto :goto_82

    .line 121
    :catch_73
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    :try_start_74
    const-string v3, "PowerTester"

    const-string v4, "Can\'t write sdcard log file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_71

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6e

    :try_start_7d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_6f

    goto :goto_6e

    .line 129
    :goto_81
    return-void

    .line 125
    :goto_82
    if-eqz v2, :cond_8a

    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8a

    .line 126
    :catch_88
    move-exception v3

    goto :goto_8b

    .line 127
    :cond_8a
    :goto_8a
    nop

    .line 128
    :goto_8b
    throw v0
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 6
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 133
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 134
    const-string v1, "AUTOTEST_SEQUENCE_BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 135
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 136
    :cond_14
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 137
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 140
    :cond_1e
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyPowerEvent;->writeLogEvents()V

    .line 142
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method
