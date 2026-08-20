.class public Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;,
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;,
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;
    }
.end annotation


# static fields
.field private static CONFIG_TARGET_NAME:Ljava/lang/String; = null

.field private static final DEBUG_HISTORY_SIZE:I = 0x32

.field private static final FEATURE_SETTING_MOTION_2013:Ljava/lang/String; = "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

.field private static final FEATURE_SETTING_MOTION_2014:Ljava/lang/String; = "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

.field private static final GESTURE_LOGGING_APP_ID:Ljava/lang/String; = "com.android.server.palmMotion"

.field private static final GESTURE_LOGGING_FEATURE:Ljava/lang/String; = "PALM"

.field private static final INTENT_RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final PALM_CONFIG_FILE:Ljava/lang/String; = "etc/palm_config.xml"

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final VIEW_COVER_CLOSED:I = -0x2


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDebugDisplayId:I

.field private final mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray<",
            "Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field public mEventCnt:J

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsShowingSIP:Z

.field private mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

.field private mPalmInputEventReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

.field private mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

.field private mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

.field private mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 83
    const-string v0, "default"

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmInputEventReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 88
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    .line 95
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    .line 99
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 289
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugDisplayId:I

    .line 111
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDisplayId:I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PalmMotion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method private CheckPalmForDebugInfo(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "sumMajor":F
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    .line 643
    .local v9, "toolType":I
    const/4 v2, 0x0

    .line 646
    .local v2, "palmFlag":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 647
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1b

    .line 648
    const/4 v2, 0x1

    .line 649
    move v10, v2

    goto :goto_24

    .line 651
    :cond_1b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v4

    add-float/2addr v0, v4

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_23
    move v10, v2

    .line 653
    .end local v2    # "palmFlag":Z
    .end local v3    # "i":I
    .local v10, "palmFlag":Z
    :goto_24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 654
    .local v11, "startX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 655
    .local v1, "startY":F
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweep()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-gez v2, :cond_3b

    if-eqz v10, :cond_b9

    .line 656
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM] SIP mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", toolType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sumMajor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Palmflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 656
    const-string v3, "PalmMotion"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_b9

    .line 662
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo-IA;)V

    move-object v12, v2

    .line 663
    .local v12, "info":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->setTime(J)V

    .line 664
    iget-boolean v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    move-object v2, v12

    move v3, v9

    move v4, v0

    move v5, v10

    move v6, v11

    move v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->setDebugInfo(IFZFFZ)V

    .line 665
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    invoke-virtual {v2, v12}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    .line 668
    .end local v12    # "info":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    :cond_b9
    return-void
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .registers 8
    .param p1, "time"    # J

    .line 674
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 675
    const-string v0, ""

    return-object v0

    .line 677
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 680
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_74

    .line 681
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 682
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 684
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    .end local v3    # "month":I
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extra"    # Ljava/lang/String;

    .line 541
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 542
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 543
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    const-string v2, "com.android.server.palmMotion"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "feature"

    const-string v2, "PALM"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-eqz p1, :cond_2c

    .line 546
    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_2c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_43
    return-void
.end method

.method private onRecognition(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    return-void

    .line 193
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 195
    .local v0, "action":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    if-eqz v1, :cond_a6

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    if-nez v2, :cond_1d

    goto/16 :goto_a6

    .line 200
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateAction(I)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->readyPalm()V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->readyPalm()V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v1

    if-nez v1, :cond_4b

    .line 208
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->variableInitialize()V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->initPalm()V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->initPalm()V

    .line 214
    :cond_4b
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->isReadyPalmTouch()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isReadyPalmSweep()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 216
    :cond_5b
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getPalmTouchCnt()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getPalmSweepCnt()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->update(II)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->isReadyPalmTouch()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 219
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->processPalm()V

    .line 221
    :cond_79
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isReadyPalmSweep()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 222
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->processPalm()V

    .line 225
    :cond_86
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a5

    .line 226
    :cond_8c
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setSweepDown(Z)V

    .line 227
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setPalmTouchDown(Z)V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setLargePalmTouchDown(Z)V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setReadyPalmSweep(Z)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setReadyPalmTouch(Z)V

    .line 233
    :cond_a5
    return-void

    .line 196
    :cond_a6
    :goto_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM] Warning! palmData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sweep is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", palmTouch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PalmMotion"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method private readPalmConfig()V
    .registers 11

    .line 426
    const-string v0, "Exception while close configuration file."

    const-string v1, "PalmMotion"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/palm_config.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v2, "configFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 430
    .local v3, "configReader":Ljava/io/FileReader;
    :try_start_10
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_17

    move-object v3, v4

    .line 433
    goto :goto_1d

    .line 431
    :catch_17
    move-exception v4

    .line 432
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "[PALM] USE DEFAULT CONFIGURATION."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1d
    :try_start_1d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 437
    .local v4, "configParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 438
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 440
    .local v5, "type":I
    :goto_28
    const/4 v6, 0x1

    if-eq v5, v6, :cond_ca

    .line 441
    const/4 v6, 0x2

    if-ne v5, v6, :cond_c3

    .line 442
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "palmconfigs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 446
    const-string v6, "deviceName"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "tmpStr":Ljava/lang/String;
    if-eqz v6, :cond_45

    sput-object v6, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    .line 449
    :cond_45
    const-string v8, "thresholdPalmCount"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 450
    if-eqz v6, :cond_57

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setThresholdPalmCount(I)V

    .line 452
    :cond_57
    const-string v8, "thresholdMajorTouch"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 453
    if-eqz v6, :cond_69

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setThresholdMajorTouch(F)V

    .line 455
    :cond_69
    const-string v8, "thresholdMajorSweepPortrait"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 456
    if-eqz v6, :cond_7b

    .line 457
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdMajorSweepPortrait(F)V

    .line 459
    :cond_7b
    const-string v8, "thresholdMajorSweepLandscape"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 460
    if-eqz v6, :cond_8d

    .line 461
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdMajorSweepLandscape(F)V

    .line 463
    :cond_8d
    const-string v8, "thresholdEccenSweepPortrait"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 464
    if-eqz v6, :cond_9f

    .line 465
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenSweepPortrait(F)V

    .line 467
    :cond_9f
    const-string v8, "thresholdEccenSweepLandscape"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 468
    if-eqz v6, :cond_b1

    .line 469
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenSweepLandscape(F)V

    .line 471
    :cond_b1
    const-string v8, "ignoreCheckMajorSweepEntry"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 472
    if-eqz v6, :cond_c3

    .line 473
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setIgnoreCheckMajorSweepEntry(Z)V

    .line 475
    .end local v6    # "tmpStr":Ljava/lang/String;
    :cond_c3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_c7} :catch_e5
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_c7} :catch_d9
    .catchall {:try_start_1d .. :try_end_c7} :catchall_d6

    move v5, v6

    goto/16 :goto_28

    .line 483
    .end local v5    # "type":I
    :cond_ca
    if-eqz v3, :cond_d5

    .line 484
    :try_start_cc
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d5

    .line 486
    :catch_d0
    move-exception v5

    .line 487
    .local v5, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v5    # "ioe":Ljava/io/IOException;
    goto :goto_f7

    .line 488
    :cond_d5
    :goto_d5
    goto :goto_f7

    .line 482
    .end local v4    # "configParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_d6
    move-exception v4

    goto/16 :goto_22e

    .line 479
    :catch_d9
    move-exception v4

    .line 480
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_da
    const-string v5, "[PALM] IOException on readingConfig."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_d6

    .line 483
    .end local v4    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_f6

    .line 484
    :try_start_e1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_f1

    goto :goto_f6

    .line 477
    :catch_e5
    move-exception v4

    .line 478
    .local v4, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e6
    const-string v5, "[PALM] XmlPullParserException on readingConfig."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_d6

    .line 483
    .end local v4    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_f6

    .line 484
    :try_start_ed
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_f6

    .line 486
    :catch_f1
    move-exception v4

    .line 487
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v4    # "ioe":Ljava/io/IOException;
    goto :goto_f7

    .line 488
    :cond_f6
    :goto_f6
    nop

    .line 491
    :goto_f7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdMajorSweep(F)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenSweep(F)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG DEVICE_NAME_IN_FILE             : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_PALM_COUNT            : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdPalmCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_TOUCH           : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdMajorTouch()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_SWEEP_PORTRAIT  : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_SWEEP_LANDSCAPE : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweepLandscape()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_ECCEN_SWEEP_PORTRAIT  : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_ECCEN_SWEEP_LANDSCAPE : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweepLandscape()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG IGNORE_CHECK_MAJOR_SWEEP_ENTRY  : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isIgnoreCheckMajorSweepEntry()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG ACCEPTED : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdPalmCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    .line 503
    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdMajorTouch()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 504
    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweep()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 505
    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweep()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 483
    :goto_22e
    if-eqz v3, :cond_239

    .line 484
    :try_start_230
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_233} :catch_234

    goto :goto_239

    .line 486
    :catch_234
    move-exception v5

    .line 487
    .restart local v5    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23a

    .line 488
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_239
    :goto_239
    nop

    .line 489
    :goto_23a
    throw v4
.end method

.method private setContentObserver()V
    .registers 7

    .line 306
    const-string v0, "PalmMotion"

    const-string v1, "[PALM] setContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "surface_palm_touch"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 310
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_merged_mute_pause"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_7a

    .line 315
    :cond_30
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 317
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_7a

    .line 323
    :cond_55
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "palm_touch_to_sleep"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 331
    :goto_7a
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "surface_palm_swipe"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 336
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 562
    const-string v0, " ---------------------------------------------- "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, " : PalmMotion Config"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v0, " : PalmMotion does not support"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public enablePalmLogging()V
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-nez v0, :cond_a

    goto/16 :goto_ad

    .line 520
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PALM_PASS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getPassCnt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_AREA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntArea()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_DIST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntDist()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_ECC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 521
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntEccen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_REVERSE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntReverse()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_TIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 522
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_VAR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntVar()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setPassCnt(I)V

    .line 527
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntArea(I)V

    .line 528
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntDist(I)V

    .line 529
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntEccen(I)V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntReverse(I)V

    .line 531
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntTime(I)V

    .line 532
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntVar(I)V

    .line 533
    return-void

    .line 517
    .end local v0    # "result":Ljava/lang/String;
    :cond_ad
    :goto_ad
    return-void
.end method

.method public enablePalmMotion(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    .line 146
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDisplayId:I

    const-string v2, "PalmMotion"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    .line 148
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmInputEventReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

    .line 170
    return-void
.end method

.method public setPocketModeEvent(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .registers 4
    .param p1, "pocketModeEvent"    # Lcom/samsung/android/gesture/PocketModeEvent;

    .line 236
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-eqz v0, :cond_8

    .line 238
    iput-object p1, v0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 240
    :cond_8
    const-string v0, "PalmMotion"

    const-string v1, "setPocketModeEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public declared-synchronized settingOnChanged(Z)V
    .registers 13
    .param p1, "selfChange"    # Z

    monitor-enter p0

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "settingPalmEngine":I
    const/4 v1, 0x0

    .line 348
    .local v1, "settingPalmTouch":I
    const/4 v2, 0x0

    .line 349
    .local v2, "settingPalmSweep":I
    const/4 v3, 0x0

    .line 351
    .local v3, "settingPalmScreenOff":I
    :try_start_5
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    if-eqz v4, :cond_1da

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-nez v5, :cond_f

    goto/16 :goto_1da

    .line 357
    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setEnabledPalmTouch(Z)V

    .line 358
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setEnabledPalmScreenOff(Z)V

    .line 359
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setEnabledPalmSweep(Z)V

    .line 361
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_63

    .line 363
    const/4 v0, 0x1

    .line 364
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_merged_mute_pause"

    invoke-static {v4, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 366
    .local v4, "settingMerged":I
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "surface_palm_touch"

    invoke-static {v8, v9, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    and-int v1, v4, v8

    .line 369
    const-string v8, "PalmMotion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PALM] 2014 - SURFACE_MOTION_ENGINE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MOTION_MERGED_MUTE_PAUSE & SURFACE_PALM_TOUCH: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    nop

    .end local v4    # "settingMerged":I
    goto/16 :goto_e3

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    :cond_63
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 374
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_motion_engine"

    invoke-static {v4, v8, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    move v0, v4

    .line 376
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_palm_touch"

    invoke-static {v4, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    move v1, v4

    .line 379
    const-string v4, "PalmMotion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PALM] 2013 - SURFACE_MOTION_ENGINE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SURFACE_PALM_TOUCH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 384
    :cond_a4
    const/4 v0, 0x1

    .line 385
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_palm_touch"

    invoke-static {v4, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    move v1, v4

    .line 388
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "palm_touch_to_sleep"

    invoke-static {v4, v8, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    move v3, v4

    .line 391
    const-string v4, "PalmMotion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PALM] SURFACE_MOTION_ENGINE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SURFACE_PALM_TOUCH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PALM_TOUCH_TO_SLEEP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_e3
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_palm_swipe"

    invoke-static {v4, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    move v2, v4

    .line 397
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mobile_keyboard"

    invoke-static {v4, v8, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 400
    .local v4, "settingKeyBoard":I
    const-string v5, "PalmMotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PALM] SURFACE_PALM_SWEEP: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " Mobile Keyboard : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-ne v0, v7, :cond_11f

    if-ne v1, v7, :cond_11f

    .line 403
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setEnabledPalmTouch(Z)V

    .line 405
    :cond_11f
    if-ne v0, v7, :cond_12a

    if-ne v2, v7, :cond_12a

    if-nez v4, :cond_12a

    .line 406
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setEnabledPalmSweep(Z)V

    .line 414
    :cond_12a
    const-string v5, "PalmMotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM] SETTINGS : [TOUCH: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->isEnabledPalmTouch()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [SWEEP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isEnabledPalmSweep()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [PalmScreenOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->isEnabledPalmScreenOff()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v5, "PalmMotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM] ACCEPTED : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] PALM_CNT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    .line 416
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdPalmCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", M_TOUCH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    .line 417
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdMajorTouch()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", M_SWEEP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 418
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweep()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", E_SWEEP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 419
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweep()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IGNORE_M_SWEEP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 420
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isIgnoreCheckMajorSweepEntry()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catchall {:try_start_5 .. :try_end_1d8} :catchall_202

    .line 421
    monitor-exit p0

    return-void

    .line 352
    .end local v4    # "settingKeyBoard":I
    :cond_1da
    :goto_1da
    :try_start_1da
    const-string v4, "PalmMotion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PALM] PalmMotion does not support (PalmTouch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PalmSweep: )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_200
    .catchall {:try_start_1da .. :try_end_200} :catchall_202

    .line 354
    monitor-exit p0

    return-void

    .line 345
    .end local v0    # "settingPalmEngine":I
    .end local v1    # "settingPalmTouch":I
    .end local v2    # "settingPalmSweep":I
    .end local v3    # "settingPalmScreenOff":I
    .end local p1    # "selfChange":Z
    :catchall_202
    move-exception p1

    monitor-exit p0

    throw p1
.end method
