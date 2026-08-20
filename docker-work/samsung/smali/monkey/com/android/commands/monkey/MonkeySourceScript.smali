.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureAppFramerate"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_ROTATION:Ljava/lang/String; = "RotateScreen"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureAppFramerate"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_LINE_BY_LINE:Ljava/lang/String; = "linebyline"

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z = false


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mLastX:[F

.field private mLastY:[F

.field private mMonkeyStartTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mReadScriptLineByLine:Z

.field private mScriptFileName:Ljava/lang/String;

.field private mScriptStartTime:J

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 144
    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .registers 15
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "profileWaitTime"    # J
    .param p8, "deviceSleepTime"    # J

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 50
    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 52
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 64
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 66
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 68
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 70
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 72
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 75
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 146
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 148
    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 157
    const/4 v0, 0x2

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    .line 159
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    .line 161
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    .line 163
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    .line 173
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 175
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 176
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 177
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .registers 12
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyKeyEvent;

    .line 892
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 893
    return-void

    .line 895
    :cond_b
    const-wide/16 v0, 0x0

    .line 896
    .local v0, "thisDownTime":J
    const-wide/16 v4, 0x0

    .line 897
    .local v4, "thisEventTime":J
    const-wide/16 v6, 0x0

    .line 899
    .local v6, "expectedDelay":J
    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v2, v8, v2

    if-gtz v2, :cond_1d

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 902
    move-wide v2, v0

    .end local v4    # "thisEventTime":J
    .local v2, "thisEventTime":J
    goto :goto_44

    .line 904
    .end local v2    # "thisEventTime":J
    .restart local v4    # "thisEventTime":J
    :cond_1d
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2c

    .line 905
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v0

    goto :goto_2e

    .line 907
    :cond_2c
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 909
    :goto_2e
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v2, v8

    double-to-long v6, v2

    .line 910
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long/2addr v2, v6

    .line 912
    .end local v4    # "thisEventTime":J
    .restart local v2    # "thisEventTime":J
    const-wide/16 v4, 0x10

    sub-long v4, v6, v4

    invoke-direct {p0, v4, v5}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    .line 914
    :goto_44
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 915
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 916
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 917
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 918
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 919
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 920
    return-void
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .registers 8
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 928
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 929
    .local v0, "thisEventTime":J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v2

    .line 931
    .local v2, "thisDownTime":J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    .line 933
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_1b

    .line 936
    :cond_14
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 938
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 939
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 942
    :goto_1b
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 943
    return-void
.end method

.method private closeFile()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 805
    :try_start_3
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 806
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_d} :catch_e

    .line 809
    goto :goto_f

    .line 807
    :catch_e
    move-exception v0

    .line 810
    :goto_f
    return-void
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 46
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 281
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "DispatchKey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v0, :cond_87

    array-length v0, v3

    if-ne v0, v4, :cond_87

    .line 283
    :try_start_1b
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, " old key\n"

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 284
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 285
    .local v14, "downTime":J
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 286
    .local v16, "eventTime":J
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 287
    .local v18, "action":I
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "code":I
    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 289
    .local v20, "repeat":I
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 290
    .local v21, "metaState":I
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 291
    .local v22, "device":I
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 293
    .local v23, "scancode":I
    new-instance v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    move-object v13, v4

    move/from16 v19, v0

    invoke-direct/range {v13 .. v23}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 295
    .local v4, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v5, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Key code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 297
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 298
    sget-object v5, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v6, "Added key up \n"

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_84} :catch_85

    .line 300
    .end local v0    # "code":I
    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v14    # "downTime":J
    .end local v16    # "eventTime":J
    .end local v18    # "action":I
    .end local v20    # "repeat":I
    .end local v21    # "metaState":I
    .end local v22    # "device":I
    .end local v23    # "scancode":I
    goto :goto_86

    .line 299
    :catch_85
    move-exception v0

    .line 301
    :goto_86
    return-void

    .line 305
    :cond_87
    const-string v0, "DispatchPointer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "Pointer"

    const/16 v16, 0xa

    const-string v15, "DispatchTrackball"

    const/16 v4, 0xc

    const/16 v5, 0x9

    if-gez v13, :cond_9f

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_129

    :cond_9f
    array-length v13, v3

    if-ne v13, v4, :cond_129

    .line 308
    :try_start_a2
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v22, v20

    .line 309
    .local v22, "downTime":J
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 310
    .local v11, "eventTime":J
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "action":I
    aget-object v4, v3, v9

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    .line 312
    .local v26, "x":F
    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    .line 313
    .local v27, "y":F
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 314
    .local v28, "pressure":F
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 315
    .local v29, "size":F
    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 316
    .local v4, "metaState":I
    const/16 v6, 0x8

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 317
    .local v6, "xPrecision":F
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 318
    .local v5, "yPrecision":F
    aget-object v7, v3, v16

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 319
    .local v7, "device":I
    const/16 v8, 0xb

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 322
    .local v8, "edgeFlags":I
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_fd

    .line 323
    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v9, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .local v9, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_102

    .line 325
    .end local v9    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_fd
    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v9, v0}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .line 328
    .restart local v9    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_102
    move-wide/from16 v13, v22

    .end local v22    # "downTime":J
    .local v13, "downTime":J
    invoke-virtual {v9, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 329
    invoke-virtual {v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 330
    invoke-virtual {v10, v4}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 331
    invoke-virtual {v10, v6, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 332
    invoke-virtual {v10, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 333
    invoke-virtual {v10, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x0

    .line 334
    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 335
    iget-object v10, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v10, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_126
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_126} :catch_127

    .line 337
    .end local v0    # "action":I
    .end local v4    # "metaState":I
    .end local v5    # "yPrecision":F
    .end local v6    # "xPrecision":F
    .end local v7    # "device":I
    .end local v8    # "edgeFlags":I
    .end local v9    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v11    # "eventTime":J
    .end local v13    # "downTime":J
    .end local v26    # "x":F
    .end local v27    # "y":F
    .end local v28    # "pressure":F
    .end local v29    # "size":F
    goto :goto_128

    .line 336
    :catch_127
    move-exception v0

    .line 338
    :goto_128
    return-void

    .line 342
    :cond_129
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v20, 0x0

    if-gez v0, :cond_137

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2a6

    :cond_137
    array-length v0, v3

    const/16 v13, 0xd

    if-ne v0, v13, :cond_2a6

    .line 345
    :try_start_13c
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v24, v22

    .line 346
    .local v24, "downTime":J
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v26, v22

    .line 347
    .local v26, "eventTime":J
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    .restart local v0    # "action":I
    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 349
    .local v9, "x":F
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 350
    .local v7, "y":F
    aget-object v10, v3, v8

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v38

    .line 351
    .local v38, "pressure":F
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    .line 352
    .local v39, "size":F
    const/4 v10, 0x7

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 353
    .local v10, "metaState":I
    const/16 v13, 0x8

    aget-object v13, v3, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 354
    .local v13, "xPrecision":F
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 355
    .restart local v5    # "yPrecision":F
    aget-object v15, v3, v16

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 356
    .local v15, "device":I
    const/16 v16, 0xb

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    .line 357
    .local v17, "edgeFlags":I
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 360
    .local v4, "pointerId":I
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_1c6

    .line 361
    if-ne v0, v8, :cond_1ab

    .line 362
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    shl-int/lit8 v16, v4, 0x8

    or-int/lit8 v8, v16, 0x5

    invoke-direct {v14, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 364
    invoke-virtual {v14, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    .local v8, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_1b0

    .line 366
    .end local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_1ab
    new-instance v8, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v8, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 368
    .restart local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1b0
    move/from16 v16, v7

    .end local v7    # "y":F
    .local v16, "y":F
    iget-wide v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    cmp-long v6, v6, v20

    if-gez v6, :cond_1c3

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    .line 370
    move-wide/from16 v6, v26

    .end local v26    # "eventTime":J
    .local v6, "eventTime":J
    iput-wide v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    goto :goto_1cf

    .line 368
    .end local v6    # "eventTime":J
    .restart local v26    # "eventTime":J
    :cond_1c3
    move-wide/from16 v6, v26

    .end local v26    # "eventTime":J
    .restart local v6    # "eventTime":J
    goto :goto_1cf

    .line 373
    .end local v6    # "eventTime":J
    .end local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v16    # "y":F
    .restart local v7    # "y":F
    .restart local v26    # "eventTime":J
    :cond_1c6
    move/from16 v16, v7

    move-wide/from16 v6, v26

    .end local v7    # "y":F
    .end local v26    # "eventTime":J
    .restart local v6    # "eventTime":J
    .restart local v16    # "y":F
    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v8, v0}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .line 376
    .restart local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1cf
    if-ne v4, v12, :cond_219

    .line 377
    move-wide/from16 v11, v24

    .end local v24    # "downTime":J
    .local v11, "downTime":J
    invoke-virtual {v8, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 378
    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 379
    invoke-virtual {v14, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 380
    invoke-virtual {v14, v13, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 381
    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 382
    move/from16 v3, v17

    .end local v17    # "edgeFlags":I
    .local v3, "edgeFlags":I
    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v34

    const/16 v35, 0x0

    iget-object v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    const/16 v17, 0x0

    aget v36, v14, v17

    iget-object v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aget v37, v14, v17

    .line 383
    invoke-virtual/range {v34 .. v39}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v28

    const/16 v29, 0x1

    .line 384
    move/from16 v30, v9

    move/from16 v31, v16

    move/from16 v32, v38

    move/from16 v33, v39

    invoke-virtual/range {v28 .. v33}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 385
    iget-object v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    const/16 v17, 0x1

    aput v9, v14, v17

    .line 386
    iget-object v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aput v16, v14, v17

    move/from16 v17, v0

    move/from16 v18, v3

    goto :goto_26b

    .line 387
    .end local v3    # "edgeFlags":I
    .end local v11    # "downTime":J
    .restart local v17    # "edgeFlags":I
    .restart local v24    # "downTime":J
    :cond_219
    move/from16 v3, v17

    move-wide/from16 v11, v24

    .end local v17    # "edgeFlags":I
    .end local v24    # "downTime":J
    .restart local v3    # "edgeFlags":I
    .restart local v11    # "downTime":J
    if-nez v4, :cond_267

    .line 388
    invoke-virtual {v8, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 389
    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 390
    invoke-virtual {v14, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 391
    invoke-virtual {v14, v13, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 392
    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    .line 393
    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v28

    const/16 v29, 0x0

    .line 394
    move/from16 v30, v9

    move/from16 v31, v16

    move/from16 v32, v38

    move/from16 v33, v39

    invoke-virtual/range {v28 .. v33}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 395
    const/4 v14, 0x6

    if-ne v0, v14, :cond_259

    .line 396
    iget-object v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    move/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "action":I
    .local v17, "action":I
    aget v14, v14, v0

    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    move/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "edgeFlags":I
    .local v18, "edgeFlags":I
    aget v0, v0, v3

    invoke-virtual {v8, v3, v14, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_25d

    .line 395
    .end local v17    # "action":I
    .end local v18    # "edgeFlags":I
    .restart local v0    # "action":I
    .restart local v3    # "edgeFlags":I
    :cond_259
    move/from16 v17, v0

    move/from16 v18, v3

    .line 398
    .end local v0    # "action":I
    .end local v3    # "edgeFlags":I
    .restart local v17    # "action":I
    .restart local v18    # "edgeFlags":I
    :goto_25d
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    const/4 v3, 0x0

    aput v9, v0, v3

    .line 399
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aput v16, v0, v3

    goto :goto_26b

    .line 387
    .end local v17    # "action":I
    .end local v18    # "edgeFlags":I
    .restart local v0    # "action":I
    .restart local v3    # "edgeFlags":I
    :cond_267
    move/from16 v17, v0

    move/from16 v18, v3

    .line 404
    .end local v0    # "action":I
    .end local v3    # "edgeFlags":I
    .restart local v17    # "action":I
    .restart local v18    # "edgeFlags":I
    :goto_26b
    iget-boolean v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    if-eqz v0, :cond_299

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 406
    .local v19, "curUpTime":J
    move v0, v4

    .end local v4    # "pointerId":I
    .local v0, "pointerId":I
    iget-wide v3, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    sub-long v3, v19, v3

    .line 407
    .local v3, "realElapsedTime":J
    move v14, v9

    move/from16 v22, v10

    .end local v9    # "x":F
    .end local v10    # "metaState":I
    .local v14, "x":F
    .local v22, "metaState":I
    iget-wide v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    sub-long v26, v6, v9

    .line 408
    .local v26, "scriptElapsedTime":J
    cmp-long v9, v3, v26

    if-gez v9, :cond_294

    .line 409
    sub-long v9, v26, v3

    .line 410
    .local v9, "waitDuration":J
    move/from16 v21, v0

    .end local v0    # "pointerId":I
    .local v21, "pointerId":I
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-wide/from16 v23, v3

    .end local v3    # "realElapsedTime":J
    .local v23, "realElapsedTime":J
    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v3, v9, v10}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_29e

    .line 408
    .end local v9    # "waitDuration":J
    .end local v21    # "pointerId":I
    .end local v23    # "realElapsedTime":J
    .restart local v0    # "pointerId":I
    .restart local v3    # "realElapsedTime":J
    :cond_294
    move/from16 v21, v0

    move-wide/from16 v23, v3

    .end local v0    # "pointerId":I
    .end local v3    # "realElapsedTime":J
    .restart local v21    # "pointerId":I
    .restart local v23    # "realElapsedTime":J
    goto :goto_29e

    .line 404
    .end local v14    # "x":F
    .end local v19    # "curUpTime":J
    .end local v21    # "pointerId":I
    .end local v22    # "metaState":I
    .end local v23    # "realElapsedTime":J
    .end local v26    # "scriptElapsedTime":J
    .restart local v4    # "pointerId":I
    .local v9, "x":F
    .restart local v10    # "metaState":I
    :cond_299
    move/from16 v21, v4

    move v14, v9

    move/from16 v22, v10

    .line 413
    .end local v4    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "metaState":I
    .restart local v14    # "x":F
    .restart local v21    # "pointerId":I
    .restart local v22    # "metaState":I
    :goto_29e
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v0, v8}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_2a3
    .catch Ljava/lang/NumberFormatException; {:try_start_13c .. :try_end_2a3} :catch_2a4

    .line 415
    .end local v5    # "yPrecision":F
    .end local v6    # "eventTime":J
    .end local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v11    # "downTime":J
    .end local v13    # "xPrecision":F
    .end local v14    # "x":F
    .end local v15    # "device":I
    .end local v16    # "y":F
    .end local v17    # "action":I
    .end local v18    # "edgeFlags":I
    .end local v21    # "pointerId":I
    .end local v22    # "metaState":I
    .end local v38    # "pressure":F
    .end local v39    # "size":F
    goto :goto_2a5

    .line 414
    :catch_2a4
    move-exception v0

    .line 416
    :goto_2a5
    return-void

    .line 420
    :cond_2a6
    const-string v0, "RotateScreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2db

    move-object/from16 v3, p2

    array-length v0, v3

    if-ne v0, v10, :cond_2dd

    .line 422
    const/4 v0, 0x0

    :try_start_2b4
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "rotationDegree":I
    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 424
    .local v5, "persist":I
    if-eqz v0, :cond_2c9

    if-eq v0, v4, :cond_2c9

    if-eq v0, v10, :cond_2c9

    if-ne v0, v9, :cond_2d8

    .line 428
    :cond_2c9
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v6, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v5, :cond_2d1

    const/4 v11, 0x1

    goto :goto_2d2

    :cond_2d1
    const/4 v11, 0x0

    :goto_2d2
    invoke-direct {v6, v0, v11}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    invoke-virtual {v4, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_2d8
    .catch Ljava/lang/NumberFormatException; {:try_start_2b4 .. :try_end_2d8} :catch_2d9

    .line 432
    .end local v0    # "rotationDegree":I
    .end local v5    # "persist":I
    :cond_2d8
    goto :goto_2da

    .line 431
    :catch_2d9
    move-exception v0

    .line 433
    :goto_2da
    return-void

    .line 420
    :cond_2db
    move-object/from16 v3, p2

    .line 437
    :cond_2dd
    const-string v0, "Tap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v4, "// "

    if-ltz v0, :cond_370

    array-length v0, v3

    if-lt v0, v10, :cond_370

    .line 439
    const/4 v0, 0x0

    :try_start_2eb
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 440
    .local v13, "x":F
    const/4 v0, 0x1

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 441
    .local v14, "y":F
    const-wide/16 v5, 0x0

    .line 442
    .local v5, "tapDuration":J
    array-length v0, v3

    if-ne v0, v9, :cond_304

    .line 443
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v5, v7

    .line 447
    :cond_304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 448
    .local v7, "downTime":J
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 449
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x40a00000    # 5.0f

    .line 451
    invoke-virtual/range {v11 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 452
    .local v0, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v9, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 453
    cmp-long v9, v5, v20

    if-lez v9, :cond_332

    .line 454
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v10, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v10, v5, v6}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 456
    :cond_332
    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 457
    invoke-virtual {v9, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 458
    invoke-virtual {v9, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40a00000    # 5.0f

    .line 459
    move/from16 v17, v13

    move/from16 v18, v14

    invoke-virtual/range {v15 .. v20}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 460
    .local v9, "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v10, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v10, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_353
    .catch Ljava/lang/NumberFormatException; {:try_start_2eb .. :try_end_353} :catch_354

    .line 463
    .end local v0    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5    # "tapDuration":J
    .end local v7    # "downTime":J
    .end local v9    # "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v13    # "x":F
    .end local v14    # "y":F
    goto :goto_36f

    .line 461
    :catch_354
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 464
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_36f
    return-void

    .line 468
    :cond_370
    const-string v0, "PressAndHold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3fb

    array-length v0, v3

    if-ne v0, v9, :cond_3fb

    .line 470
    const/4 v0, 0x0

    :try_start_37c
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 471
    .restart local v13    # "x":F
    const/4 v0, 0x1

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 472
    .restart local v14    # "y":F
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 475
    .local v5, "pressDuration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 477
    .restart local v7    # "downTime":J
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 478
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x40a00000    # 5.0f

    .line 480
    invoke-virtual/range {v11 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 481
    .local v0, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v9, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v9, v5, v6}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 482
    .local v9, "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v10, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v11, v7, v5

    .line 483
    invoke-virtual {v10, v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    add-long v11, v7, v5

    .line 484
    invoke-virtual {v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40a00000    # 5.0f

    .line 485
    move/from16 v17, v13

    move/from16 v18, v14

    invoke-virtual/range {v15 .. v20}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 486
    .local v10, "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v11, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v11, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 487
    iget-object v11, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v11, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 488
    iget-object v11, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v11, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_3de
    .catch Ljava/lang/NumberFormatException; {:try_start_37c .. :try_end_3de} :catch_3df

    .line 492
    .end local v0    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5    # "pressDuration":J
    .end local v7    # "downTime":J
    .end local v9    # "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v10    # "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v13    # "x":F
    .end local v14    # "y":F
    goto :goto_3fa

    .line 490
    :catch_3df
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 493
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3fa
    return-void

    .line 497
    :cond_3fb
    const-string v0, "Drag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4bf

    array-length v0, v3

    if-ne v0, v8, :cond_4bf

    .line 498
    const/4 v0, 0x0

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 499
    .local v0, "xStart":F
    const/4 v6, 0x1

    aget-object v11, v3, v6

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 500
    .local v6, "yStart":F
    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 501
    .local v11, "xEnd":F
    aget-object v12, v3, v9

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 502
    .local v12, "yEnd":F
    aget-object v13, v3, v7

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 504
    .local v13, "stepCount":I
    move/from16 v26, v0

    .line 505
    .local v26, "x":F
    move/from16 v27, v6

    .line 506
    .restart local v27    # "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 507
    .local v14, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 509
    .local v7, "eventTime":J
    if-lez v13, :cond_4bd

    .line 510
    sub-float v21, v11, v0

    int-to-float v9, v13

    div-float v21, v21, v9

    .line 511
    .local v21, "xStep":F
    sub-float v9, v12, v6

    int-to-float v5, v13

    div-float/2addr v9, v5

    .line 513
    .local v9, "yStep":F
    new-instance v5, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 514
    invoke-virtual {v5, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 515
    invoke-virtual {v5, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x40a00000    # 5.0f

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 516
    .local v5, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v10, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v10, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    const/4 v10, 0x0

    move/from16 v33, v26

    move/from16 v34, v27

    .end local v26    # "x":F
    .end local v27    # "y":F
    .local v10, "i":I
    .local v33, "x":F
    .local v34, "y":F
    :goto_45f
    if-ge v10, v13, :cond_493

    .line 519
    add-float v33, v33, v21

    .line 520
    add-float v34, v34, v9

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 522
    move/from16 v35, v0

    .end local v0    # "xStart":F
    .local v35, "xStart":F
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move-object/from16 v36, v5

    const/4 v5, 0x2

    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .local v36, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    invoke-direct {v0, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x40a00000    # 5.0f

    move/from16 v26, v33

    move/from16 v27, v34

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v5

    .line 524
    .end local v36    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v35

    goto :goto_45f

    .end local v35    # "xStart":F
    .restart local v0    # "xStart":F
    :cond_493
    move/from16 v35, v0

    move-object/from16 v36, v5

    .line 527
    .end local v0    # "xStart":F
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v10    # "i":I
    .restart local v35    # "xStart":F
    .restart local v36    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 528
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x40a00000    # 5.0f

    move/from16 v26, v33

    move/from16 v27, v34

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 530
    .end local v36    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .local v0, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_4bf

    .line 509
    .end local v9    # "yStep":F
    .end local v21    # "xStep":F
    .end local v33    # "x":F
    .end local v34    # "y":F
    .end local v35    # "xStart":F
    .local v0, "xStart":F
    .restart local v26    # "x":F
    .restart local v27    # "y":F
    :cond_4bd
    move/from16 v35, v0

    .line 535
    .end local v0    # "xStart":F
    .end local v6    # "yStart":F
    .end local v7    # "eventTime":J
    .end local v11    # "xEnd":F
    .end local v12    # "yEnd":F
    .end local v13    # "stepCount":I
    .end local v14    # "downTime":J
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_4bf
    :goto_4bf
    const-string v0, "PinchZoom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_61a

    array-length v0, v3

    const/16 v5, 0x9

    if-ne v0, v5, :cond_61a

    .line 537
    const/4 v0, 0x0

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 538
    .local v0, "pt1xStart":F
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 539
    .local v5, "pt1yStart":F
    const/4 v6, 0x2

    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 540
    .local v6, "pt1xEnd":F
    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 542
    .local v7, "pt1yEnd":F
    const/4 v8, 0x4

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 543
    .local v8, "pt2xStart":F
    const/4 v9, 0x5

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 544
    .local v9, "pt2yStart":F
    const/4 v10, 0x6

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 545
    .local v10, "pt2xEnd":F
    const/4 v11, 0x7

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 547
    .local v11, "pt2yEnd":F
    const/16 v12, 0x8

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 549
    .local v12, "stepCount":I
    move v13, v0

    .line 550
    .local v13, "x1":F
    move v15, v5

    .line 551
    .local v15, "y1":F
    move/from16 v17, v8

    .line 552
    .local v17, "x2":F
    move/from16 v18, v9

    .line 554
    .local v18, "y2":F
    move/from16 v21, v15

    .end local v15    # "y1":F
    .local v21, "y1":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 555
    .restart local v14    # "downTime":J
    move-object/from16 v30, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 557
    .local v3, "eventTime":J
    if-lez v12, :cond_605

    .line 558
    sub-float v24, v6, v0

    move/from16 v31, v0

    .end local v0    # "pt1xStart":F
    .local v31, "pt1xStart":F
    int-to-float v0, v12

    div-float v0, v24, v0

    .line 559
    .local v0, "pt1xStep":F
    sub-float v24, v7, v5

    move/from16 v33, v5

    .end local v5    # "pt1yStart":F
    .local v33, "pt1yStart":F
    int-to-float v5, v12

    div-float v5, v24, v5

    .line 561
    .local v5, "pt1yStep":F
    sub-float v24, v10, v8

    move/from16 v34, v6

    .end local v6    # "pt1xEnd":F
    .local v34, "pt1xEnd":F
    int-to-float v6, v12

    div-float v6, v24, v6

    .line 562
    .local v6, "pt2xStep":F
    sub-float v24, v11, v9

    move/from16 v35, v7

    .end local v7    # "pt1yEnd":F
    .local v35, "pt1yEnd":F
    int-to-float v7, v12

    div-float v7, v24, v7

    .line 564
    .local v7, "pt2yStep":F
    move/from16 v36, v8

    .end local v8    # "pt2xStart":F
    .local v36, "pt2xStart":F
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move/from16 v37, v9

    .end local v9    # "pt2yStart":F
    .local v37, "pt2yStart":F
    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v38, v10

    const/4 v10, 0x0

    .end local v10    # "pt2xEnd":F
    .local v38, "pt2xEnd":F
    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v9, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 565
    invoke-virtual {v9, v3, v4}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x40a00000    # 5.0f

    move/from16 v26, v13

    move/from16 v27, v21

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 564
    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 567
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v10, 0x105

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 568
    invoke-virtual {v9, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 569
    move-wide/from16 v24, v3

    move/from16 v10, v21

    const/4 v3, 0x0

    .end local v3    # "eventTime":J
    .end local v21    # "y1":F
    .local v10, "y1":F
    .local v24, "eventTime":J
    invoke-virtual {v9, v3, v13, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    move/from16 v3, v17

    move/from16 v9, v18

    const/4 v10, 0x1

    .end local v10    # "y1":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .local v3, "x2":F
    .local v9, "y2":F
    .restart local v21    # "y1":F
    invoke-virtual {v4, v10, v3, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 567
    invoke-virtual {v8, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 571
    const/4 v4, 0x0

    move v10, v3

    move v8, v4

    move v3, v9

    move/from16 v9, v21

    move-wide/from16 v17, v24

    .end local v21    # "y1":F
    .end local v24    # "eventTime":J
    .local v3, "y2":F
    .local v8, "i":I
    .local v9, "y1":F
    .local v10, "x2":F
    .local v17, "eventTime":J
    :goto_591
    if-ge v8, v12, :cond_5db

    .line 572
    add-float/2addr v13, v0

    .line 573
    add-float/2addr v9, v5

    .line 574
    add-float/2addr v10, v6

    .line 575
    add-float/2addr v3, v7

    .line 577
    move/from16 v39, v5

    .end local v5    # "pt1yStep":F
    .local v39, "pt1yStep":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 578
    .end local v17    # "eventTime":J
    .local v4, "eventTime":J
    move/from16 v40, v0

    .end local v0    # "pt1xStep":F
    .local v40, "pt1xStep":F
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move/from16 v41, v6

    .end local v6    # "pt2xStep":F
    .local v41, "pt2xStep":F
    new-instance v6, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v42, v7

    const/4 v7, 0x2

    .end local v7    # "pt2yStep":F
    .local v42, "pt2yStep":F
    invoke-direct {v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v6, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    .line 579
    invoke-virtual {v6, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x40a00000    # 5.0f

    move/from16 v26, v13

    move/from16 v27, v9

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v26, v10

    move/from16 v27, v3

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    .line 578
    invoke-virtual {v0, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 571
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v17, v4

    move/from16 v5, v39

    move/from16 v0, v40

    move/from16 v6, v41

    move/from16 v7, v42

    goto :goto_591

    .end local v4    # "eventTime":J
    .end local v39    # "pt1yStep":F
    .end local v40    # "pt1xStep":F
    .end local v41    # "pt2xStep":F
    .end local v42    # "pt2yStep":F
    .restart local v0    # "pt1xStep":F
    .restart local v5    # "pt1yStep":F
    .restart local v6    # "pt2xStep":F
    .restart local v7    # "pt2yStep":F
    .restart local v17    # "eventTime":J
    :cond_5db
    move/from16 v40, v0

    move/from16 v39, v5

    move/from16 v41, v6

    move/from16 v42, v7

    .line 582
    .end local v0    # "pt1xStep":F
    .end local v5    # "pt1yStep":F
    .end local v6    # "pt2xStep":F
    .end local v7    # "pt2yStep":F
    .end local v8    # "i":I
    .restart local v39    # "pt1yStep":F
    .restart local v40    # "pt1xStep":F
    .restart local v41    # "pt2xStep":F
    .restart local v42    # "pt2yStep":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 583
    .end local v17    # "eventTime":J
    .restart local v4    # "eventTime":J
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v6, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 584
    invoke-virtual {v6, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v13, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    .line 585
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v10, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    .line 583
    invoke-virtual {v0, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_61c

    .line 557
    .end local v4    # "eventTime":J
    .end local v31    # "pt1xStart":F
    .end local v33    # "pt1yStart":F
    .end local v34    # "pt1xEnd":F
    .end local v35    # "pt1yEnd":F
    .end local v36    # "pt2xStart":F
    .end local v37    # "pt2yStart":F
    .end local v38    # "pt2xEnd":F
    .end local v39    # "pt1yStep":F
    .end local v40    # "pt1xStep":F
    .end local v41    # "pt2xStep":F
    .end local v42    # "pt2yStep":F
    .local v0, "pt1xStart":F
    .local v3, "eventTime":J
    .local v5, "pt1yStart":F
    .local v6, "pt1xEnd":F
    .local v7, "pt1yEnd":F
    .local v8, "pt2xStart":F
    .local v9, "pt2yStart":F
    .local v10, "pt2xEnd":F
    .local v17, "x2":F
    .restart local v18    # "y2":F
    .restart local v21    # "y1":F
    :cond_605
    move/from16 v31, v0

    move-wide/from16 v24, v3

    move/from16 v33, v5

    move/from16 v34, v6

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v3, v17

    move/from16 v9, v18

    .end local v0    # "pt1xStart":F
    .end local v5    # "pt1yStart":F
    .end local v6    # "pt1xEnd":F
    .end local v7    # "pt1yEnd":F
    .end local v8    # "pt2xStart":F
    .end local v10    # "pt2xEnd":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .local v3, "x2":F
    .local v9, "y2":F
    .restart local v24    # "eventTime":J
    .restart local v31    # "pt1xStart":F
    .restart local v33    # "pt1yStart":F
    .restart local v34    # "pt1xEnd":F
    .restart local v35    # "pt1yEnd":F
    .restart local v36    # "pt2xStart":F
    .restart local v37    # "pt2yStart":F
    .restart local v38    # "pt2xEnd":F
    goto :goto_61c

    .line 535
    .end local v3    # "x2":F
    .end local v9    # "y2":F
    .end local v11    # "pt2yEnd":F
    .end local v12    # "stepCount":I
    .end local v13    # "x1":F
    .end local v14    # "downTime":J
    .end local v21    # "y1":F
    .end local v24    # "eventTime":J
    .end local v31    # "pt1xStart":F
    .end local v33    # "pt1yStart":F
    .end local v34    # "pt1xEnd":F
    .end local v35    # "pt1yEnd":F
    .end local v36    # "pt2xStart":F
    .end local v37    # "pt2yStart":F
    .end local v38    # "pt2xEnd":F
    :cond_61a
    move-object/from16 v30, v4

    .line 590
    :goto_61c
    const-string v0, "DispatchFlip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_63c

    move-object/from16 v3, p2

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_63e

    .line 591
    const/4 v0, 0x0

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 592
    .local v0, "keyboardOpen":Z
    new-instance v4, Lcom/android/commands/monkey/MonkeyFlipEvent;

    invoke-direct {v4, v0}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 593
    .local v4, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_63e

    .line 590
    .end local v0    # "keyboardOpen":Z
    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_63c
    move-object/from16 v3, p2

    .line 597
    :cond_63e
    :goto_63e
    const-string v0, "LaunchActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_69c

    array-length v0, v3

    const/4 v4, 0x2

    if-lt v0, v4, :cond_69c

    .line 598
    const/4 v0, 0x0

    aget-object v4, v3, v0

    .line 599
    .local v4, "pkg_name":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v5, v3, v0

    .line 600
    .local v5, "cl_name":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 602
    .local v6, "alarmTime":J
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    .line 604
    .local v8, "mApp":Landroid/content/ComponentName;
    array-length v0, v3

    const/4 v9, 0x2

    if-le v0, v9, :cond_682

    .line 606
    :try_start_65c
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_662
    .catch Ljava/lang/NumberFormatException; {:try_start_65c .. :try_end_662} :catch_664

    move-wide v6, v9

    .line 610
    goto :goto_682

    .line 607
    :catch_664
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v9, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 609
    return-void

    .line 613
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_682
    :goto_682
    array-length v0, v3

    const/4 v9, 0x2

    if-ne v0, v9, :cond_691

    .line 614
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    invoke-direct {v0, v8}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 615
    .local v0, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v9, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 616
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    goto :goto_69b

    .line 617
    :cond_691
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    invoke-direct {v0, v8, v6, v7}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 618
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v9, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 620
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :goto_69b
    return-void

    .line 624
    .end local v4    # "pkg_name":Ljava/lang/String;
    .end local v5    # "cl_name":Ljava/lang/String;
    .end local v6    # "alarmTime":J
    .end local v8    # "mApp":Landroid/content/ComponentName;
    :cond_69c
    const-string v0, "DeviceWakeUp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_70b

    .line 625
    const-string v0, "com.google.android.powerutil"

    .line 626
    .local v0, "pkg_name":Ljava/lang/String;
    const-string v4, "com.google.android.powerutil.WakeUpScreen"

    .line 627
    .local v4, "cl_name":Ljava/lang/String;
    iget-wide v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 630
    .local v5, "deviceSleepTime":J
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v7, "mApp":Landroid/content/ComponentName;
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyActivityEvent;

    invoke-direct {v9, v7, v5, v6}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 634
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 635
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v11, 0x1

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 639
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v10, 0xbb8

    add-long/2addr v10, v5

    invoke-direct {v9, v10, v11}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 642
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v10, 0x52

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 643
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v12, 0x1

    invoke-direct {v9, v12, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 646
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v10, 0x4

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 647
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v9, v12, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 649
    return-void

    .line 653
    .end local v0    # "pkg_name":Ljava/lang/String;
    .end local v4    # "cl_name":Ljava/lang/String;
    .end local v5    # "deviceSleepTime":J
    .end local v7    # "mApp":Landroid/content/ComponentName;
    :cond_70b
    const-string v0, "LaunchInstrumentation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_728

    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_728

    .line 654
    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 655
    .local v0, "test_name":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    .line 656
    .local v4, "runner_name":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    invoke-direct {v5, v0, v4}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .local v5, "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 658
    return-void

    .line 662
    .end local v0    # "test_name":Ljava/lang/String;
    .end local v4    # "runner_name":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    :cond_728
    const-string v0, "UserWait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_749

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_749

    .line 664
    const/4 v0, 0x0

    :try_start_735
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 665
    .local v4, "sleeptime":J
    new-instance v0, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v0, v4, v5}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 666
    .local v0, "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_746
    .catch Ljava/lang/NumberFormatException; {:try_start_735 .. :try_end_746} :catch_747

    .line 668
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v4    # "sleeptime":J
    goto :goto_748

    .line 667
    :catch_747
    move-exception v0

    .line 669
    :goto_748
    return-void

    .line 674
    :cond_749
    const-string v0, "ProfileWait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_75e

    .line 675
    new-instance v0, Lcom/android/commands/monkey/MonkeyWaitEvent;

    iget-wide v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    invoke-direct {v0, v4, v5}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 676
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 677
    return-void

    .line 681
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_75e
    const-string v0, "DispatchPress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_78c

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_78c

    .line 682
    const/4 v0, 0x0

    aget-object v4, v3, v0

    .line 683
    .local v4, "key_name":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v5

    .line 684
    .local v5, "keyCode":I
    if-nez v5, :cond_774

    .line 685
    return-void

    .line 687
    :cond_774
    new-instance v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v6, v0, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object v0, v6

    .line 688
    .local v0, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 689
    new-instance v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object v0, v6

    .line 690
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 691
    return-void

    .line 695
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v4    # "key_name":Ljava/lang/String;
    .end local v5    # "keyCode":I
    :cond_78c
    const-string v0, "LongPress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7ba

    .line 697
    new-instance v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 698
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 699
    new-instance v5, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v6, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 700
    .local v5, "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 701
    new-instance v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object v0, v6

    .line 702
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 706
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v5    # "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_7ba
    const-string v0, "PowerLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7e9

    array-length v0, v3

    if-lez v0, :cond_7e9

    .line 707
    const/4 v0, 0x0

    aget-object v4, v3, v0

    .line 710
    .local v4, "power_log_type":Ljava/lang/String;
    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7d7

    .line 711
    new-instance v0, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v0, v4}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    goto :goto_7e9

    .line 713
    :cond_7d7
    array-length v0, v3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7e9

    .line 714
    const/4 v0, 0x1

    aget-object v5, v3, v0

    .line 715
    .local v5, "test_case_status":Ljava/lang/String;
    new-instance v0, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v0, v4, v5}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    nop

    .line 721
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v4    # "power_log_type":Ljava/lang/String;
    .end local v5    # "test_case_status":Ljava/lang/String;
    :cond_7e9
    :goto_7e9
    const-string v0, "WriteLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7fb

    .line 722
    new-instance v0, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    .line 723
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 727
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_7fb
    const-string v0, "RunCmd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_814

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_814

    .line 728
    const/4 v0, 0x0

    aget-object v4, v3, v0

    .line 729
    .local v4, "cmd":Ljava/lang/String;
    new-instance v0, Lcom/android/commands/monkey/MonkeyCommandEvent;

    invoke-direct {v0, v4}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 734
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v4    # "cmd":Ljava/lang/String;
    :cond_814
    const-string v0, "DispatchString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_841

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_841

    .line 735
    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 736
    .local v0, "input":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input text "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 737
    .restart local v4    # "cmd":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyCommandEvent;

    invoke-direct {v5, v4}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v5, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 739
    return-void

    .line 742
    .end local v0    # "input":Ljava/lang/String;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    :cond_841
    const-string v0, "StartCaptureFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v4, "start"

    if-ltz v0, :cond_856

    .line 743
    new-instance v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    invoke-direct {v0, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 745
    return-void

    .line 748
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_856
    const-string v0, "EndCaptureFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v5, "end"

    if-ltz v0, :cond_872

    array-length v0, v3

    const/4 v6, 0x1

    if-ne v0, v6, :cond_872

    .line 749
    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 750
    .local v0, "input":Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    invoke-direct {v4, v5, v0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .local v4, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 752
    return-void

    .line 755
    .end local v0    # "input":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_872
    const-string v0, "StartCaptureAppFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_88d

    array-length v0, v3

    const/4 v6, 0x1

    if-ne v0, v6, :cond_88d

    .line 756
    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 757
    .local v0, "app":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    invoke-direct {v5, v4, v0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 758
    .local v4, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 759
    return-void

    .line 762
    .end local v0    # "app":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_88d
    const-string v0, "EndCaptureAppFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8ab

    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8ab

    .line 763
    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 764
    .restart local v0    # "app":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    .line 765
    .local v4, "label":Ljava/lang/String;
    new-instance v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    invoke-direct {v6, v5, v0, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 766
    .local v5, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 767
    return-void

    .line 771
    .end local v0    # "app":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_8ab
    return-void
.end method

.method private needSleep(J)V
    .registers 5
    .param p1, "time"    # J

    .line 850
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 851
    return-void

    .line 854
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 856
    goto :goto_c

    .line 855
    :catch_b
    move-exception v0

    .line 857
    :goto_c
    return-void
.end method

.method private processLine(Ljava/lang/String;)V
    .registers 7
    .param p1, "line"    # Ljava/lang/String;

    .line 780
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 781
    .local v0, "index1":I
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 783
    .local v1, "index2":I
    if-ltz v0, :cond_30

    if-gez v1, :cond_11

    goto :goto_30

    .line 787
    :cond_11
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    array-length v4, v2

    if-ge v3, v4, :cond_2c

    .line 790
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 789
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 793
    .end local v3    # "i":I
    :cond_2c
    invoke-direct {p0, p1, v2}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 794
    return-void

    .line 784
    .end local v2    # "args":[Ljava/lang/String;
    :cond_30
    :goto_30
    return-void
.end method

.method private readHeader()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 200
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 201
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 202
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    .line 206
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_b0

    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 209
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ""

    if-ltz v4, :cond_67

    .line 211
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_4e} :catch_4f

    .line 216
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_23

    .line 213
    :catch_4f
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 215
    return v3

    .line 217
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_67
    const-string v4, "speed="

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_9b

    .line 219
    :try_start_6f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_82} :catch_83

    .line 224
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_23

    .line 221
    :catch_83
    move-exception v0

    .line 222
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 223
    return v3

    .line 225
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9b
    const-string v2, "linebyline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a7

    .line 226
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    goto/16 :goto_23

    .line 227
    :cond_a7
    const-string v2, "start data >>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_23

    .line 228
    return v0

    .line 232
    .end local v1    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    :cond_b0
    return v3
.end method

.method private readLines()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x64

    if-ge v0, v1, :cond_17

    .line 244
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 246
    return v0

    .line 248
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 249
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "i":I
    .end local v1    # "line":Ljava/lang/String;
    :cond_17
    return v1
.end method

.method private readNextBatch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    const/4 v0, 0x0

    .line 827
    .local v0, "linesRead":I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_b

    .line 828
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 829
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    .line 832
    :cond_b
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    if-eqz v1, :cond_14

    .line 833
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readOneLine()I

    move-result v0

    goto :goto_18

    .line 835
    :cond_14
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    .line 838
    :goto_18
    if-nez v0, :cond_1d

    .line 839
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 841
    :cond_1d
    return-void
.end method

.method private readOneLine()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 263
    const/4 v1, 0x0

    return v1

    .line 265
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 266
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    return v1
.end method

.method private resetValue()V
    .registers 5

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 184
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 185
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 186
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 187
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 188
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 189
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 6

    .line 957
    const-wide/16 v0, -0x1

    .line 960
    .local v0, "recordedEventTime":J
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 962
    :try_start_b
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    .line 965
    goto :goto_11

    .line 963
    :catch_f
    move-exception v2

    .line 964
    .local v2, "e":Ljava/io/IOException;
    return-object v3

    .line 969
    .end local v2    # "e":Ljava/io/IOException;
    :cond_11
    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeyEvent;

    .line 970
    .local v2, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/util/NoSuchElementException; {:try_start_11 .. :try_end_1e} :catch_41

    .line 973
    nop

    .line 975
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v3

    if-nez v3, :cond_2c

    .line 976
    move-object v3, v2

    check-cast v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    goto :goto_40

    .line 977
    :cond_2c
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3a

    .line 978
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_40

    .line 979
    :cond_3a
    move-object v3, v2

    check-cast v3, Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    .line 981
    :cond_40
    :goto_40
    return-object v2

    .line 971
    .end local v2    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :catch_41
    move-exception v2

    .line 972
    .local v2, "e":Ljava/util/NoSuchElementException;
    return-object v3
.end method

.method public setVerbose(I)V
    .registers 2
    .param p1, "verbose"    # I

    .line 882
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 883
    return-void
.end method

.method public validate()Z
    .registers 6

    .line 868
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v0

    .line 869
    .local v0, "validHeader":Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_33

    .line 872
    nop

    .line 874
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v1, :cond_32

    .line 875
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events with speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 877
    :cond_32
    return v0

    .line 870
    .end local v0    # "validHeader":Z
    :catch_33
    move-exception v0

    .line 871
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method
