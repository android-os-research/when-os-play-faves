.class public Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetAppFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String;

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetAppFrameRateEvent"

.field private static sActivityName:Ljava/lang/String;

.field private static sDuration:F

.field private static sEndFrameNo:I

.field private static sEndTime:J

.field private static sStartFrameNo:I

.field private static sStartTime:J

.field private static sTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "avgAppFrameRateOut.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    .line 53
    nop

    .line 54
    const-string v0, ".* ([0-9]*) frames rendered"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 66
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "testCaseName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 59
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 60
    sput-object p3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .registers 5
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_9

    .line 78
    int-to-float v1, p1

    div-float v0, v1, p2

    .line 80
    :cond_9
    return v0
.end method

.method private getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "noOfFrames":Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, "line":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1c

    .line 113
    sget-object v2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 114
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_1c

    .line 118
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_1b
    goto :goto_2

    .line 119
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method private writeAverageFrameRate()V
    .registers 11

    .line 87
    const-string v0, "IOException "

    const-string v1, "MonkeyGetAppFrameRateEvent"

    const/4 v2, 0x0

    .line 89
    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 91
    .local v3, "totalNumberOfFrame":I
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v4, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 93
    sget v4, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    sget v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    sub-int v3, v4, v5

    .line 94
    sget v4, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v4

    .line 95
    .local v4, "avgFrameRate":F
    const-string v5, "%s:%.2f\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_48} :catch_69
    .catchall {:try_start_6 .. :try_end_48} :catchall_67

    .line 100
    nop

    .line 101
    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 104
    goto :goto_90

    .line 102
    :catch_4d
    move-exception v5

    .line 103
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_90

    .line 99
    .end local v4    # "avgFrameRate":F
    :catchall_67
    move-exception v4

    goto :goto_91

    .line 96
    :catch_69
    move-exception v4

    .line 97
    .local v4, "e":Ljava/io/IOException;
    :try_start_6a
    const-string v5, "Can\'t write sdcard log file"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_67

    .line 100
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_8f

    .line 101
    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_8f

    .line 102
    :catch_75
    move-exception v4

    .line 103
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_90

    .line 104
    :cond_8f
    :goto_8f
    nop

    .line 106
    :goto_90
    return-void

    .line 100
    :goto_91
    if-eqz v2, :cond_b1

    .line 101
    :try_start_93
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_b1

    .line 102
    :catch_97
    move-exception v5

    .line 103
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b1
    :goto_b1
    nop

    .line 105
    :goto_b2
    throw v4
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 16
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "p":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 126
    .local v1, "result":Ljava/io/BufferedReader;
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "cmd":Ljava/lang/String;
    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v0, v4

    .line 129
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 130
    .local v4, "status":I
    if-eqz v4, :cond_35

    .line 131
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v7, "// Shell command %s status was %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v6

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    .line 131
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 134
    :cond_35
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 136
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "output":Ljava/lang/String;
    if-eqz v5, :cond_87

    .line 139
    const-string v6, "start"

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J

    goto :goto_87

    .line 142
    :cond_61
    const-string v6, "end"

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    .line 145
    sget-wide v8, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J

    sub-long/2addr v6, v8

    .line 146
    .local v6, "diff":J
    long-to-double v8, v6

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    .line 147
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->writeAverageFrameRate()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_87} :catch_9e
    .catchall {:try_start_10 .. :try_end_87} :catchall_9c

    .line 155
    .end local v4    # "status":I
    .end local v5    # "output":Ljava/lang/String;
    .end local v6    # "diff":J
    :cond_87
    :goto_87
    nop

    .line 156
    :try_start_88
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 158
    if-eqz v0, :cond_90

    .line 159
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_91

    .line 163
    :cond_90
    :goto_90
    goto :goto_d1

    .line 161
    :catch_91
    move-exception v4

    .line 162
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_d1

    .line 154
    :catchall_9c
    move-exception v3

    goto :goto_d2

    .line 150
    :catch_9e
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9f
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "// Exception from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 152
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_9f .. :try_end_c6} :catchall_9c

    .line 155
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_cb

    .line 156
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_cb
    if-eqz v0, :cond_90

    .line 159
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d0} :catch_91

    goto :goto_90

    .line 165
    :goto_d1
    return v3

    .line 155
    :goto_d2
    if-eqz v1, :cond_da

    .line 156
    :try_start_d4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_da

    .line 161
    :catch_d8
    move-exception v4

    goto :goto_e0

    .line 158
    :cond_da
    :goto_da
    if-eqz v0, :cond_ea

    .line 159
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_df} :catch_d8

    goto :goto_ea

    .line 162
    .local v4, "e":Ljava/io/IOException;
    :goto_e0
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_eb

    .line 163
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ea
    :goto_ea
    nop

    .line 164
    :goto_eb
    throw v3
.end method
