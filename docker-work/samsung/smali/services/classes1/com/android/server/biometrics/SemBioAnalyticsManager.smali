.class public Lcom/android/server/biometrics/SemBioAnalyticsManager;
.super Ljava/lang/Object;
.source "SemBioAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;,
        Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final EVT_TYPE_ALL:I = 0x3

.field public static final EVT_TYPE_DQA:I = 0x2

.field public static final EVT_TYPE_SA:I = 0x1

.field public static final FACE_APP_ID:Ljava/lang/String; = "com.samsung.android.bio.face.service"

.field public static final FACE_FEATURE_AUTH_ACCEPT:Ljava/lang/String; = "FAIS"

.field public static final FACE_FEATURE_AUTH_ACCEPT_ON_MASK:Ljava/lang/String; = "FMIS"

.field public static final FACE_FEATURE_AUTH_REJECT:Ljava/lang/String; = "FAIF"

.field public static final FACE_FEATURE_AUTH_REJECT_BRIGHTNESS_UP:Ljava/lang/String; = "FALI"

.field public static final FACE_FEATURE_AUTH_REJECT_BRIGHTNESS_UP_ON_MASK:Ljava/lang/String; = "FMLI"

.field public static final FACE_FEATURE_AUTH_REJECT_INSUFFICIENT_5:Ljava/lang/String; = "FALQ"

.field public static final FACE_FEATURE_AUTH_REJECT_INSUFFICIENT_5_ON_MASK:Ljava/lang/String; = "FMLQ"

.field public static final FACE_FEATURE_AUTH_REJECT_ON_MASK:Ljava/lang/String; = "FMIF"

.field public static final FACE_FEATURE_AUTH_REJECT_OTHERS:Ljava/lang/String; = "FANM"

.field public static final FACE_FEATURE_AUTH_REJECT_OTHERS_ON_MASK:Ljava/lang/String; = "FMNM"

.field public static final FACE_FEATURE_ENROLL:Ljava/lang/String; = "FAEN"

.field public static final FACE_FEATURE_ERROR_ON_MASK:Ljava/lang/String; = "FAMK"

.field public static final FACE_FEATURE_FOLD_AUTH_ACCEPT:Ljava/lang/String; = "FAFS"

.field public static final FACE_FEATURE_FOLD_AUTH_REJECT:Ljava/lang/String; = "FAFF"

.field public static final FACE_FEATURE_LOCKOUT:Ljava/lang/String; = "FAIB"

.field public static final FACE_FEATURE_ONLY_NON_FACE:Ljava/lang/String; = "FANF"

.field public static final FACE_FEATURE_QUALITY_BIG_FACE:Ljava/lang/String; = "FAQB"

.field public static final FACE_FEATURE_QUALITY_FAKE_FACE:Ljava/lang/String; = "FAQF"

.field public static final FACE_FEATURE_QUALITY_LOW:Ljava/lang/String; = "FAQL"

.field public static final FACE_FEATURE_QUALITY_MIS_ALIGNED:Ljava/lang/String; = "FAQM"

.field public static final FACE_FEATURE_QUALITY_NO_FACE:Ljava/lang/String; = "FAQN"

.field public static final FACE_FEATURE_QUALITY_SMALL_FACE:Ljava/lang/String; = "FAQS"

.field public static final FACE_FEATURE_REMOVE:Ljava/lang/String; = "FARM"

.field public static final FACE_FEATURE_TIMEOUT:Ljava/lang/String; = "FATO"

.field public static final FACE_TRACKING_ID:Ljava/lang/String; = "4G3-399-5448102"

.field public static final FINGERPRINT_APP_ID:Ljava/lang/String; = "com.samsung.android.fingerprint.service"

.field public static final FINGERPRINT_TRACKING_ID:Ljava/lang/String; = "4G2-399-4810151"

.field public static final FP_EXTRA_GESTURE_COLLAPSE_NOTI_PANEL:Ljava/lang/String; = "CollapseNotificationPanel"

.field public static final FP_EXTRA_GESTURE_EXPAND_NOTI_PANEL:Ljava/lang/String; = "ExpandNotificationPanel"

.field public static final FP_EXTRA_GESTURE_EXPAND_QUICK_SETTING_PANEL:Ljava/lang/String; = "ExpandQuickSettingsPanel"

.field public static final FP_EXTRA_GESTURE_SIMPLE_SPAY:Ljava/lang/String; = "SimpleSamsungPay"

.field public static final FP_FEATURE_ACCEPT_TIME:Ljava/lang/String; = "FPTS"

.field public static final FP_FEATURE_AUTH_ACCEPT:Ljava/lang/String; = "FPIS"

.field public static final FP_FEATURE_AUTH_REJECT:Ljava/lang/String; = "FPIF"

.field public static final FP_FEATURE_DQA_AUTH_ACCEPT_LCD_OFF:Ljava/lang/String; = "FPFS"

.field public static final FP_FEATURE_DQA_AUTH_ACCEPT_LCD_ON:Ljava/lang/String; = "FPOS"

.field public static final FP_FEATURE_DQA_AUTH_REJECT_LCD_OFF:Ljava/lang/String; = "FPFF"

.field public static final FP_FEATURE_DQA_AUTH_REJECT_LCD_ON:Ljava/lang/String; = "FPOF"

.field public static final FP_FEATURE_DQA_DAEMON_VERSION:Ljava/lang/String; = "FPDA"

.field public static final FP_FEATURE_DQA_MOVE_EVENT:Ljava/lang/String; = "FPMV"

.field public static final FP_FEATURE_DQA_PATTERN_DETECTED:Ljava/lang/String; = "FPPD"

.field public static final FP_FEATURE_DQA_SENSOR_STATUS:Ljava/lang/String; = "FPST"

.field public static final FP_FEATURE_DQA_SERIAL_NUMBER:Ljava/lang/String; = "FPDS"

.field public static final FP_FEATURE_ENROLL_FAIL:Ljava/lang/String; = "FPEF"

.field public static final FP_FEATURE_ENROLL_SUCCESS:Ljava/lang/String; = "FPEN"

.field public static final FP_FEATURE_ERROR_CODE:Ljava/lang/String; = "FPER"

.field public static final FP_FEATURE_GESTURE:Ljava/lang/String; = "FPGT"

.field public static final FP_FEATURE_LOCKOUT:Ljava/lang/String; = "FPIB"

.field public static final FP_FEATURE_NOMATCH_REASEON:Ljava/lang/String; = "FPNR"

.field public static final FP_FEATURE_NUMBER_OF_QUALITY:Ljava/lang/String; = "FPSQ"

.field public static final FP_FEATURE_NUMBER_OF_REJECT:Ljava/lang/String; = "FPSF"

.field public static final FP_FEATURE_QUALITY_IMAGER_DIRTY:Ljava/lang/String; = "FPQD"

.field public static final FP_FEATURE_QUALITY_INSUFFICIENT:Ljava/lang/String; = "FPQI"

.field public static final FP_FEATURE_QUALITY_LIGHT_TOUCH:Ljava/lang/String; = "FPQL"

.field public static final FP_FEATURE_QUALITY_PARTIAL:Ljava/lang/String; = "FPQP"

.field public static final FP_FEATURE_QUALITY_TOO_FAST:Ljava/lang/String; = "FPQF"

.field public static final FP_FEATURE_QUALITY_TOO_SLOW:Ljava/lang/String; = "FPQS"

.field public static final FP_FEATURE_QUALITY_WET_FINGER:Ljava/lang/String; = "FPQW"

.field public static final FP_FEATURE_REJECT_TIME:Ljava/lang/String; = "FPTF"

.field public static final FP_FEATURE_REMOVE:Ljava/lang/String; = "FPRM"

.field public static final TAG:Ljava/lang/String; = "BiometricService.AM"

.field public static final sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/biometrics/SemBioAnalyticsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

.field public mFaceQualityBigFace:I

.field public mFaceQualityFakeFace:I

.field public mFaceQualityLow:I

.field public mFaceQualityMisAligned:I

.field public mFaceQualityNoFace:I

.field public mFaceQualitySmallFace:I

.field public final mH:Landroid/os/Handler;

.field public mHasGestureEventForDQA:Z

.field public mIsFirstSensorCheckForDQA:Z

.field public mIsSensorErrorForDQA:Z

.field public mIsSupportDMA:Z

.field public mLatestAuthenticatedForDQA:I

.field public mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3eM2p-7RKBGGUEJky9ezDzhBEqA(Lcom/android/server/biometrics/SemBioAnalyticsManager;Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->lambda$faceInsertLog$2(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4hU1IP5T4L-6VlYXAh94T3CnPM(Lcom/android/server/biometrics/SemBioAnalyticsManager;Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->lambda$fpInsertLog$1(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wRyRpyeAxAN7bxKj1MuVInlMXJM(Lcom/android/server/biometrics/SemBioAnalyticsManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->lambda$onBootComplete$0(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 37
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    .line 349
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    invoke-direct {v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$1;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 366
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioAnalyticsManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .registers 1

    .line 362
    sget-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .registers 1

    .line 358
    sget-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    return-object v0
.end method

.method private synthetic lambda$faceInsertLog$2(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 3

    .line 579
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 580
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 582
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :goto_d
    return-void
.end method

.method private synthetic lambda$fpInsertLog$1(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 423
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 425
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :goto_d
    return-void
.end method

.method private synthetic lambda$onBootComplete$0(Landroid/content/Context;)V
    .registers 3

    .line 398
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 399
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 400
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->isSupportDMALogging(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSupportDMA:Z

    .line 401
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_17

    .line 404
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public faceCountHelpEvent(II)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_48

    const/16 v1, 0xb

    if-eq p1, v1, :cond_42

    const/16 v1, 0x16

    if-eq p1, v1, :cond_21

    packed-switch p1, :pswitch_data_4e

    goto :goto_4d

    .line 559
    :pswitch_f
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    goto :goto_4d

    .line 553
    :pswitch_15
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    goto :goto_4d

    .line 550
    :pswitch_1b
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    goto :goto_4d

    :cond_21
    const/16 p1, 0x3ed

    if-eq p2, p1, :cond_3c

    const/16 p1, 0x3ee

    if-eq p2, p1, :cond_36

    const/16 p1, 0x3f0

    if-eq p2, p1, :cond_36

    const/16 p1, 0x3f4

    if-eq p2, p1, :cond_36

    const/16 p1, 0x3f6

    if-eq p2, p1, :cond_36

    goto :goto_4d

    .line 570
    :cond_36
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    goto :goto_4d

    .line 564
    :cond_3c
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityFakeFace:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityFakeFace:I

    goto :goto_4d

    .line 544
    :cond_42
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    goto :goto_4d

    .line 547
    :cond_48
    iget p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityLow:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityLow:I

    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x4
        :pswitch_1b
        :pswitch_15
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public final faceHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 776
    :cond_3
    sget-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    const-string v1, "BiometricService.AM"

    if-eqz v0, :cond_21

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_21
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    if-eqz v0, :cond_2e

    iget v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2e

    .line 781
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->faceHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 785
    :cond_2e
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    if-eqz v0, :cond_c2

    iget v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c2

    .line 787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 789
    iget-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSupportDMA:Z

    const-string v3, "extra"

    const-string v4, "feature"

    if-eqz v2, :cond_7c

    .line 791
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "tracking_id"

    const-string v6, "4G3-399-5448102"

    .line 792
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v5, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz p1, :cond_5e

    .line 795
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    const-string/jumbo p1, "pkg_name"

    const-string v3, "com.android.server.biometrics.sensors.face"

    .line 797
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    const-string v3, "ev"

    .line 799
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 800
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "com.sec.android.diagmonagent"

    .line 802
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3

    .line 805
    :cond_7c
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    const-string v6, "com.samsung.android.bio.face.service"

    .line 806
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v5, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz p1, :cond_94

    .line 809
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    const-string p1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 812
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    .line 813
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.providers.context"

    .line 814
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    :goto_a3
    :try_start_a3
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a8} :catch_a9

    goto :goto_c2

    :catch_a9
    move-exception p0

    .line 819
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemAnalyticsManager.insertLog: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    return-void
.end method

.method public faceInitHelpEvent()V
    .registers 2

    const/4 v0, 0x0

    .line 531
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 532
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityLow:I

    .line 533
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityFakeFace:I

    .line 534
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 535
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 536
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    return-void
.end method

.method public final faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public faceOnAuthenticatedFailure(Ljava/lang/String;)V
    .registers 6

    .line 636
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FAIF"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 638
    :cond_1c
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FAFF"

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_26
    return-void
.end method

.method public faceOnAuthenticatedFailure(Ljava/lang/String;II)V
    .registers 7

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lt p2, v2, :cond_13

    .line 627
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FALI"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_2b

    :cond_13
    const/4 p2, 0x5

    if-lt p3, p2, :cond_21

    .line 629
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FALQ"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_2b

    .line 631
    :cond_21
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FANM"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :goto_2b
    return-void
.end method

.method public faceOnAuthenticatedFailure(Ljava/lang/String;IIILjava/lang/Boolean;)V
    .registers 10

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eqz p5, :cond_43

    .line 602
    new-instance p5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v2, 0x1

    const-string v3, "FMIF"

    invoke-direct {p5, v3, p1, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 604
    invoke-static {p2}, Landroid/hardware/face/FaceManager;->semBigDataFALICondition(I)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 605
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FMLI"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_6f

    .line 606
    :cond_27
    invoke-static {p3, p4}, Landroid/hardware/face/FaceManager;->semBigDataFALQCondition(II)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 607
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FMLQ"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_6f

    .line 609
    :cond_38
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FMNM"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_6f

    .line 612
    :cond_43
    invoke-static {p2}, Landroid/hardware/face/FaceManager;->semBigDataFALICondition(I)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 613
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FALI"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_6f

    .line 614
    :cond_54
    invoke-static {p3, p4}, Landroid/hardware/face/FaceManager;->semBigDataFALQCondition(II)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 615
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FALQ"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_6f

    .line 617
    :cond_65
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FANM"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :goto_6f
    return-void
.end method

.method public faceOnAuthenticatedSuccess(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 7

    .line 588
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FAIS"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 589
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 590
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v0, 0x1

    const-string v1, "FMIS"

    invoke-direct {p2, v1, p1, v2, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 592
    :cond_1d
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 593
    :cond_2d
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v0, "FAFS"

    invoke-direct {p2, v0, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_37
    return-void
.end method

.method public faceOnEnrollmentSuccess(Ljava/lang/String;)V
    .registers 6

    .line 681
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FAEN"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public faceOnError(Ljava/lang/String;II)V
    .registers 7

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_15

    const/16 v2, 0x3ee

    if-ne p3, v2, :cond_15

    .line 644
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FAMK"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_26

    :cond_15
    const/4 p3, 0x7

    if-eq p2, p3, :cond_1c

    const/16 p3, 0x9

    if-ne p2, p3, :cond_26

    .line 646
    :cond_1c
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string p3, "FAIB"

    invoke-direct {p2, p3, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public faceOnRemoved(Ljava/lang/String;)V
    .registers 6

    .line 685
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FARM"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public faceOnTimeout(Ljava/lang/String;)V
    .registers 7

    .line 651
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FATO"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 653
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    if-lez v0, :cond_1a

    .line 654
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v4, "FAQN"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 656
    :cond_1a
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityLow:I

    if-lez v0, :cond_28

    .line 657
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v4, "FAQL"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 659
    :cond_28
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityFakeFace:I

    if-lez v0, :cond_36

    .line 660
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v4, "FAQF"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 662
    :cond_36
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    if-lez v0, :cond_44

    .line 663
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v4, "FAQB"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 665
    :cond_44
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    if-lez v0, :cond_52

    .line 666
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v4, "FAQS"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 668
    :cond_52
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    if-lez v0, :cond_60

    .line 669
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v4, "FAQM"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 672
    :cond_60
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    if-lez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityLow:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityFakeFace:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    if-nez v0, :cond_83

    .line 674
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v1, 0x1

    const-string v3, "FANF"

    invoke-direct {v0, v3, p1, v2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 677
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInitHelpEvent()V

    return-void
.end method

.method public fpHalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-nez v0, :cond_d

    const-string v0, "FPDA"

    .line 411
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 414
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "FPDS"

    .line 415
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_18
    return-void
.end method

.method public final fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 708
    :cond_3
    sget-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    const-string v1, "BiometricService.AM"

    if-eqz v0, :cond_21

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_21
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    if-eqz v0, :cond_2e

    iget v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2e

    .line 713
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 715
    :cond_2e
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    .line 716
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mHasGestureEventForDQA:Z

    if-nez v0, :cond_43

    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v3, "FPGT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 717
    iput-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mHasGestureEventForDQA:Z

    .line 720
    :cond_43
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v3, "FPIS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 721
    iput v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    goto :goto_5d

    .line 722
    :cond_50
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v4, "FPIF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 727
    :cond_5d
    :goto_5d
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    if-eqz v0, :cond_118

    iget v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_118

    .line 729
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 731
    iget-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSupportDMA:Z

    const-string v4, "feature"

    const-string v5, "extra"

    if-eqz v2, :cond_d2

    .line 733
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "tracking_id"

    const-string v7, "4G2-399-4810151"

    .line 734
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v6, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz v4, :cond_8c

    .line 737
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_8c
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz p1, :cond_b4

    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/biometrics/Utils;->isRuneStoneApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 741
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 742
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "FINGERPRINT_IDENTIFICATION"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "personalizedData"

    .line 743
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_b4
    const-string/jumbo p1, "pkg_name"

    const-string v3, "com.android.server.biometrics.sensors.fingerprint"

    .line 745
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    const-string v3, "ev"

    .line 746
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 747
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "com.sec.android.diagmonagent"

    .line 749
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f9

    .line 752
    :cond_d2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    const-string v6, "com.samsung.android.fingerprint.service"

    .line 753
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz p1, :cond_ea

    .line 756
    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    const-string p1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 759
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    .line 760
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.providers.context"

    .line 761
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    :goto_f9
    :try_start_f9
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fe} :catch_ff

    goto :goto_118

    :catch_ff
    move-exception p0

    .line 766
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemAnalyticsManager.insertLog: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    :goto_118
    return-void
.end method

.method public final fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 431
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public fpInsertLogError(IILjava/lang/String;)V
    .registers 9

    const/4 v0, 0x1

    const-string v1, "FPER"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p1, v0, :cond_33

    const/4 v0, 0x7

    if-eq p1, v0, :cond_24

    if-eq p1, v2, :cond_14

    const/16 v0, 0x9

    if-eq p1, v0, :cond_24

    move-object p3, v3

    goto :goto_42

    .line 489
    :cond_14
    new-instance p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>()V

    .line 490
    iput-object v1, p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 491
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 492
    iput v4, p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    goto :goto_42

    .line 477
    :cond_24
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>()V

    const-string v1, "FPIB"

    .line 478
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 479
    iput-object p3, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 480
    iput v4, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    move-object p3, v0

    goto :goto_42

    .line 483
    :cond_33
    new-instance p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>()V

    .line 484
    iput-object v1, p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 486
    iput v4, p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    :goto_42
    if-eqz p3, :cond_47

    .line 496
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_47
    if-ne p1, v2, :cond_5e

    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_5e

    .line 500
    new-instance p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>()V

    const-string p2, "FPPD"

    .line 501
    iput-object p2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 502
    iput-object v3, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    const/4 p2, 0x2

    .line 503
    iput p2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_5e
    return-void
.end method

.method public fpInsertLogHelp(IILjava/lang/String;I)V
    .registers 6

    packed-switch p1, :pswitch_data_38

    goto :goto_2a

    :pswitch_4
    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_b

    const-string p1, "FPQW"

    goto :goto_2b

    :cond_b
    const/16 p1, 0x3eb

    if-ne p2, p1, :cond_12

    const-string p1, "FPQL"

    goto :goto_2b

    .line 457
    :cond_12
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsAuthenticationFailedReasonEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "FPNR"

    goto :goto_2b

    :pswitch_1b
    const-string p1, "FPQF"

    goto :goto_2b

    :pswitch_1e
    const-string p1, "FPQS"

    goto :goto_2b

    :pswitch_21
    const-string p1, "FPQD"

    goto :goto_2b

    :pswitch_24
    const-string p1, "FPQI"

    goto :goto_2b

    :pswitch_27
    const-string p1, "FPQP"

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    :goto_2b
    if-eqz p1, :cond_36

    .line 463
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v0, -0x1

    invoke-direct {p2, p1, p3, v0, p4}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_4
    .end packed-switch
.end method

.method public fpInsertLogRemove(I)V
    .registers 6

    .line 468
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    const-string p1, "ALL"

    goto :goto_c

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_c
    const/4 v2, 0x3

    const-string v3, "FPRM"

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public fpInsertLogSensorStatus(I)V
    .registers 7

    const/4 v0, 0x0

    const v1, 0x186ca

    if-ne p1, v1, :cond_60

    .line 511
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    if-nez v1, :cond_62

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pre:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";gesture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mHasGestureEventForDQA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";first:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fpInsertLogSensorStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BiometricService.AM"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-string v4, "FPST"

    invoke-direct {p1, v4, v1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    goto :goto_62

    .line 521
    :cond_60
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    .line 523
    :cond_62
    :goto_62
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    return-void
.end method

.method public injectPendingList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;",
            ">;)V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    return-void
.end method

.method public final isSupportDMALogging(Landroid/content/Context;)Z
    .registers 4

    const/4 p0, 0x0

    .line 693
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.android.diagmonagent"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 695
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_16

    const v0, 0x202fbf00

    if-lt p1, v0, :cond_15

    const/4 p0, 0x1

    :cond_15
    return p0

    :catch_16
    move-exception p1

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSupportDMALogging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService.AM"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return p0
.end method

.method public onBootComplete(Landroid/content/Context;)V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 374
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSupportDMA:Z

    .line 377
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    const/4 v1, 0x1

    .line 378
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 379
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mHasGestureEventForDQA:Z

    .line 380
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 382
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 383
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityLow:I

    .line 384
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityFakeFace:I

    .line 385
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 386
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 387
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityMisAligned:I

    return-void
.end method
