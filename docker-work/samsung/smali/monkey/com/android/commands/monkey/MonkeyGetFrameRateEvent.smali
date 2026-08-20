.class public Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/avgFrameRateOut.txt"

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetFrameRateEvent"

.field private static mDuration:F

.field private static mEndFrameNo:I

.field private static mEndTime:J

.field private static mStartFrameNo:I

.field private static mStartTime:J

.field private static mTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_FRAMERATE_CMD:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    .line 52
    nop

    .line 53
    const-string v0, ".*\\(([a-f[A-F][0-9]].*?)\\s.*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "testCaseName"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 58
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .registers 5
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_9

    .line 70
    int-to-float v1, p1

    div-float v0, v1, p2

    .line 72
    :cond_9
    return v0
.end method

.method private getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "input"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "noOfFrames":Ljava/lang/String;
    sget-object v1, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 103
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_12
    return-object v0
.end method

.method private writeAverageFrameRate()V
    .registers 11

    .line 79
    const-string v0, "IOException "

    const-string v1, "MonkeyGetFrameRateEvent"

    const/4 v2, 0x0

    .line 81
    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 83
    .local v3, "totalNumberOfFrame":I
    :try_start_6
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sdcard/avgFrameRateOut.txt"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 84
    sget v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    sub-int v3, v4, v5

    .line 85
    sget v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v4

    .line 86
    .local v4, "avgFrameRate":F
    const-string v5, "%s:%.2f\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_35} :catch_55
    .catchall {:try_start_6 .. :try_end_35} :catchall_53

    .line 92
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 95
    goto :goto_7c

    .line 93
    :catch_39
    move-exception v5

    .line 94
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

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_7c

    .line 91
    .end local v4    # "avgFrameRate":F
    :catchall_53
    move-exception v4

    goto :goto_7d

    .line 88
    :catch_55
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    :try_start_56
    const-string v5, "Can\'t write sdcard log file"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_53

    .line 92
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7b

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_7b

    .line 93
    :catch_61
    move-exception v4

    .line 94
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

    .line 96
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_7c

    .line 95
    :cond_7b
    :goto_7b
    nop

    .line 97
    :goto_7c
    return-void

    .line 92
    :goto_7d
    if-eqz v2, :cond_9d

    :try_start_7f
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_9d

    .line 93
    :catch_83
    move-exception v5

    .line 94
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

    goto :goto_9e

    .line 95
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9d
    :goto_9d
    nop

    .line 96
    :goto_9e
    throw v4
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 15
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "p":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 114
    .local v1, "result":Ljava/io/BufferedReader;
    const/4 v2, 0x1

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v0, v3

    .line 115
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 116
    .local v3, "status":I
    if-eqz v3, :cond_2d

    .line 117
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v5, "// Shell command %s status was %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 117
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 120
    :cond_2d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "output":Ljava/lang/String;
    if-eqz v4, :cond_7f

    .line 126
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v6, "start"

    const/16 v7, 0x10

    if-ne v5, v6, :cond_5b

    .line 127
    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    goto :goto_7f

    .line 129
    :cond_5b
    const-string v6, "end"

    if-ne v5, v6, :cond_7f

    .line 130
    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    .line 132
    sget-wide v7, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    sub-long/2addr v5, v7

    .line 133
    .local v5, "diff":J
    long-to-double v7, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    double-to-float v7, v7

    sput v7, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    .line 134
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->writeAverageFrameRate()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7f} :catch_96
    .catchall {:try_start_3 .. :try_end_7f} :catchall_94

    .line 142
    .end local v3    # "status":I
    .end local v4    # "output":Ljava/lang/String;
    .end local v5    # "diff":J
    :cond_7f
    :goto_7f
    nop

    .line 143
    :try_start_80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 145
    if-eqz v0, :cond_88

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_88} :catch_89

    .line 150
    :cond_88
    :goto_88
    goto :goto_cb

    .line 148
    :catch_89
    move-exception v3

    .line 149
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_cb

    .line 141
    :catchall_94
    move-exception v2

    goto :goto_cc

    .line 137
    :catch_96
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    :try_start_97
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "// Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 139
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_97 .. :try_end_c0} :catchall_94

    .line 142
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_c5

    .line 143
    :try_start_c2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 145
    :cond_c5
    if-eqz v0, :cond_88

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_89

    goto :goto_88

    .line 152
    :goto_cb
    return v2

    .line 142
    :goto_cc
    if-eqz v1, :cond_d4

    .line 143
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_d4

    .line 148
    :catch_d2
    move-exception v3

    goto :goto_da

    .line 145
    :cond_d4
    :goto_d4
    if-eqz v0, :cond_e4

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d9} :catch_d2

    goto :goto_e4

    .line 149
    .local v3, "e":Ljava/io/IOException;
    :goto_da
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_e5

    .line 150
    .end local v3    # "e":Ljava/io/IOException;
    :cond_e4
    :goto_e4
    nop

    .line 151
    :goto_e5
    throw v2
.end method
