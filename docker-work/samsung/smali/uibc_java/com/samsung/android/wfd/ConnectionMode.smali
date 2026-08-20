.class public abstract Lcom/samsung/android/wfd/ConnectionMode;
.super Ljava/lang/Object;
.source "ConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/ConnectionMode$ModeType;
    }
.end annotation


# static fields
.field static blacklist DEBUG:Z = false

.field protected static final blacklist DEFAULT_DEVICE_ID:I = 0x0

.field protected static final blacklist HIDDEN_DISPLAY_UPDATE:Ljava/lang/String; = "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

.field protected static final blacklist INPUT_GENERIC_SCROLL_HORIZONTAL:I = 0x7

.field protected static final blacklist INPUT_GENERIC_SCROLL_VERTICAL:I = 0x6

.field private static final blacklist KEY_MAX_EVENTS:I = 0xf

.field private static final blacklist PRESENTATION_START_ACTION:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START"

.field private static final blacklist PRESENTATION_STOP_ACTION:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_STOP"

.field private static final blacklist RECEIVE_PACKAGE:Ljava/lang/String; = "com.samsung.android.wfd"

.field private static final blacklist TAG:Ljava/lang/String; = "ConnectionMode"

.field private static final blacklist UIBC_META_SHIFT_ON:I = 0x800

.field protected static blacklist mContext:Landroid/content/Context;

.field protected static blacklist mIsPortraitMode:Z


# instance fields
.field protected blacklist mAction:I

.field protected blacklist mActionIndex:I

.field private blacklist mCapsLock:Z

.field private blacklist mCurrentTime:J

.field private blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field protected blacklist mEventFlag:I

.field protected blacklist mExternalDisplayHeight:F

.field protected blacklist mExternalDisplayID:I

.field protected blacklist mExternalDisplayRatio:F

.field protected blacklist mExternalDisplayWidth:F

.field protected blacklist mHiddenDisplayID:I

.field protected blacklist mIsSamsungMobile:Z

.field protected blacklist mKeyDownTime:J

.field private blacklist mKeyInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

.field private blacklist mMetaFlag:I

.field protected blacklist mMetaKey:I

.field protected blacklist mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

.field private blacklist mNumLock:Z

.field protected blacklist mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field protected blacklist mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field protected blacklist mPresentDisplayID:I

.field protected blacklist mPresentationObjectCnt:I

.field protected blacklist mPrimaryDisplayHeight:F

.field protected blacklist mPrimaryDisplayRatio:F

.field protected blacklist mPrimaryDisplayWidth:F

.field protected final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mRepeatCount:I

.field protected blacklist mRotationInput:Ljava/lang/Integer;

.field protected blacklist mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

.field protected blacklist mScrollTime:J

.field protected blacklist mScrollValue:I

.field protected blacklist mToolType:I

.field protected blacklist mTouchDownTime:J

.field protected blacklist mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

.field protected blacklist mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

.field protected blacklist mTouchPointerTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->mIsPortraitMode:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    .line 48
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    .line 49
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayRatio:F

    .line 50
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    .line 51
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    .line 52
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 55
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    .line 57
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsSamsungMobile:Z

    .line 63
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    .line 64
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 67
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 68
    const/high16 v4, 0x8000000

    iput v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 70
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 74
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    .line 75
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    .line 77
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    .line 78
    iput-wide v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollTime:J

    .line 79
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollValue:I

    .line 81
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0xf

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    .line 94
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 95
    iput-wide v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    .line 165
    new-instance v0, Lcom/samsung/android/wfd/ConnectionMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/ConnectionMode$2;-><init>(Lcom/samsung/android/wfd/ConnectionMode;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_65

    .line 99
    const-string v0, "ConnectionMode"

    invoke-static {v0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_65
    return-void
.end method

.method private blacklist convertShiftKey()V
    .registers 3

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 373
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v0, v0, 0x800

    if-lez v0, :cond_1d

    .line 374
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 375
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 376
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    .line 378
    :cond_1d
    return-void
.end method

.method private blacklist getMetaFlag(IZ)V
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "isDown"    # Z

    .line 444
    const/16 v0, 0x77

    const/4 v1, 0x1

    const/16 v2, 0x72

    const/16 v3, 0x71

    const/16 v4, 0x3a

    const/16 v5, 0x39

    const/16 v6, 0x3c

    const/16 v7, 0x3b

    if-eqz p2, :cond_62

    .line 445
    if-eq p1, v7, :cond_15

    if-ne p1, v6, :cond_28

    .line 446
    :cond_15
    iget v8, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/2addr v1, v8

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 447
    if-ne p1, v7, :cond_20

    .line 448
    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 450
    :cond_20
    if-ne p1, v6, :cond_28

    .line 451
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 454
    :cond_28
    if-eq p1, v5, :cond_2c

    if-ne p1, v4, :cond_40

    .line 455
    :cond_2c
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 456
    if-ne p1, v5, :cond_38

    .line 457
    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 459
    :cond_38
    if-ne p1, v4, :cond_40

    .line 460
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 463
    :cond_40
    if-eq p1, v3, :cond_44

    if-ne p1, v2, :cond_58

    .line 464
    :cond_44
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 465
    if-ne p1, v3, :cond_50

    .line 466
    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 468
    :cond_50
    if-ne p1, v2, :cond_58

    .line 469
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 472
    :cond_58
    if-ne p1, v0, :cond_eb

    .line 473
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    goto/16 :goto_eb

    .line 476
    :cond_62
    if-eq p1, v7, :cond_66

    if-ne p1, v6, :cond_7a

    .line 477
    :cond_66
    iget v8, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 478
    if-ne p1, v7, :cond_72

    .line 479
    and-int/lit8 v7, v8, -0x41

    iput v7, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 481
    :cond_72
    if-ne p1, v6, :cond_7a

    .line 482
    iget v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 485
    :cond_7a
    if-eq p1, v5, :cond_7e

    if-ne p1, v4, :cond_92

    .line 486
    :cond_7e
    iget v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 487
    if-ne p1, v5, :cond_8a

    .line 488
    and-int/lit8 v5, v6, -0x11

    iput v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 490
    :cond_8a
    if-ne p1, v4, :cond_92

    .line 491
    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 494
    :cond_92
    if-eq p1, v3, :cond_96

    if-ne p1, v2, :cond_aa

    .line 495
    :cond_96
    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 496
    if-ne p1, v3, :cond_a2

    .line 497
    and-int/lit16 v3, v4, -0x2001

    iput v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 499
    :cond_a2
    if-ne p1, v2, :cond_aa

    .line 500
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 503
    :cond_aa
    if-ne p1, v0, :cond_b2

    .line 504
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 506
    :cond_b2
    const/16 v0, 0x73

    const/4 v2, 0x0

    if-ne p1, v0, :cond_cf

    .line 507
    iget-boolean v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    if-nez v0, :cond_c5

    .line 508
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 509
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    goto :goto_cf

    .line 511
    :cond_c5
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const v3, -0x100001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 512
    iput-boolean v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    .line 515
    :cond_cf
    :goto_cf
    const/16 v0, 0x8f

    if-ne p1, v0, :cond_eb

    .line 516
    iget-boolean v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    if-nez v0, :cond_e1

    .line 517
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 518
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    goto :goto_eb

    .line 520
    :cond_e1
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 521
    iput-boolean v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    .line 525
    :cond_eb
    :goto_eb
    return-void
.end method

.method private blacklist isDisplayUpdateRequired()Z
    .registers 5

    .line 284
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    const/4 v1, 0x1

    if-gez v0, :cond_6

    .line 285
    return v1

    .line 288
    :cond_6
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    if-lez v0, :cond_7a

    .line 289
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 290
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    sget-boolean v2, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_52

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PresentDisplayID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", WFDMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v3}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PresentationOwner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 292
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    const-string v3, "ConnectionMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_52
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v2, v2, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    const-string v3, ""

    if-nez v2, :cond_67

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 295
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 296
    return v1

    .line 297
    :cond_67
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v2, v2, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    if-eqz v2, :cond_7a

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 298
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 299
    return v1

    .line 302
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_7a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidScrollAction()Z
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    if-eqz v0, :cond_12

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist removeTouchPointerInActionUp()V
    .registers 4

    .line 343
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4f

    .line 345
    :cond_c
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove Pointer, Action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_4f
    return-void
.end method

.method static blacklist setPortraitMode(Z)V
    .registers 3
    .param p0, "isPortraitMode"    # Z

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPortraitMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sput-boolean p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsPortraitMode:Z

    .line 210
    return-void
.end method

.method private blacklist setScrollPointerProp()V
    .registers 4

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollTime:J

    .line 551
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 552
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 553
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, v2

    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 554
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 555
    return-void
.end method

.method private blacklist setTouchPointerPropAndCoords()V
    .registers 7

    .line 306
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 310
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 311
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 312
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 314
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 315
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    if-ne v2, v3, :cond_53

    .line 316
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    .line 319
    :cond_53
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mToolType:I

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 321
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 323
    .local v2, "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 324
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    iget v4, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 325
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/16 v4, 0x8

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 326
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 327
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    const v5, 0x3d23d70a    # 0.04f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 328
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 329
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x6

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 331
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 310
    .end local v2    # "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    .line 334
    .end local v1    # "j":I
    :cond_cb
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_119

    .line 335
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_d0
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_119

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 340
    .end local v1    # "j":I
    :cond_119
    return-void
.end method

.method private blacklist updateKeyEventValue()V
    .registers 7

    .line 381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 382
    iput-wide v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 384
    const/high16 v1, 0x8000000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 386
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    const-string v2, "ConnectionMode"

    const/4 v3, 0x1

    if-nez v1, :cond_a8

    .line 387
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 388
    const-string v1, "KeyEvent.ACTION_DOWN"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    .line 391
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 392
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v4, 0xf

    if-ge v1, v4, :cond_5b

    .line 393
    new-instance v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;

    invoke-direct {v1}, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;-><init>()V

    .line 394
    .local v1, "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    iget-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    iput-wide v4, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyTime:J

    .line 395
    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    iput v4, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    .line 396
    iput v0, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    .line 397
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v1    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    :cond_5b
    iget-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    iput-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 400
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    goto :goto_a0

    .line 402
    :cond_62
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;

    .line 403
    .local v0, "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    or-int/2addr v1, v4

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    .line 404
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    .line 405
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    if-lt v1, v3, :cond_88

    .line 406
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    .line 408
    :cond_88
    iget-wide v4, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyTime:J

    iput-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 409
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    iget v4, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 410
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 411
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_a0

    .line 412
    const-string v1, "Long press detected"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/wfd/ConnectionMode;->getMetaFlag(IZ)V

    goto :goto_ff

    .line 416
    :cond_a8
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    if-ne v1, v3, :cond_ff

    .line 417
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_b7

    .line 418
    const-string v1, "KeyEvent.ACTION_UP"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_b7
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 421
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;

    .line 422
    .restart local v1    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    iget-wide v3, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyTime:J

    iput-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 423
    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    iget v4, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 424
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 425
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v1    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    goto :goto_f8

    .line 427
    :cond_f2
    iget-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    iput-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 428
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 430
    :goto_f8
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/wfd/ConnectionMode;->getMetaFlag(IZ)V

    .line 433
    :cond_ff
    :goto_ff
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_14d

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DownTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RepeatCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMetaFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_14d
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    if-nez v0, :cond_155

    .line 439
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 441
    :cond_155
    return-void
.end method


# virtual methods
.method blacklist closeConnection()V
    .registers 4

    .line 218
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_b

    .line 219
    const-string v0, "unregisterReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_b
    :try_start_b
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_12} :catch_13

    .line 225
    goto :goto_19

    .line 223
    :catch_13
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "unregisterReceiver::mReceiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_19
    return-void
.end method

.method abstract blacklist convertActionByMotionEvent()Z
.end method

.method abstract blacklist getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method blacklist handleKeyEvent(Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;)V
    .registers 5
    .param p1, "keyInput"    # Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    .line 354
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    .line 355
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_20

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received KeyEvent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_20
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    if-gez v0, :cond_27

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 363
    :cond_27
    :try_start_27
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->convertShiftKey()V

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateKeyEventValue()V

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->injectInputKeyEvent()V
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_30} :catch_31

    .line 368
    goto :goto_39

    .line 366
    :catch_31
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_39
    return-void
.end method

.method blacklist handleRotationEvent(Ljava/lang/Integer;)V
    .registers 11
    .param p1, "rotationInput"    # Ljava/lang/Integer;

    .line 558
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 559
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_20

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Rotation Event"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_20
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 564
    .local v0, "accel":I
    sget-object v4, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    sget-object v4, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 566
    .local v3, "rotation":I
    sget-boolean v4, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v4, :cond_5c

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current rotation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_5c
    mul-int/lit8 v4, v3, 0x5a

    iget-object v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 571
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x168

    rem-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 572
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_8b

    .line 573
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 576
    :cond_8b
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x2d

    const/16 v8, 0x13b

    if-le v4, v8, :cond_9f

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v6, :cond_af

    :cond_9f
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 577
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_b0

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v7, :cond_b0

    .line 578
    :cond_af
    const/4 v3, 0x0

    .line 580
    :cond_b0
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x87

    if-le v4, v7, :cond_c3

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v6, :cond_c3

    .line 581
    const/4 v3, 0x1

    .line 583
    :cond_c3
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xe1

    if-le v4, v6, :cond_d6

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v7, :cond_d6

    .line 584
    const/4 v3, 0x2

    .line 586
    :cond_d6
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v7, :cond_e7

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_e7

    .line 587
    const/4 v3, 0x3

    .line 589
    :cond_e7
    sget-boolean v4, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v4, :cond_101

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation set to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_101
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    return-void
.end method

.method blacklist handleScrollEvent(Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;)V
    .registers 4
    .param p1, "scrollInput"    # Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    .line 528
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    .line 529
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Scroll Event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_20
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    if-gez v0, :cond_27

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 537
    :cond_27
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->isValidScrollAction()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->setScrollPointerProp()V

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->setScrollPointerCoords()V

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->injectInputScrollEvent()V

    .line 542
    :cond_36
    return-void
.end method

.method blacklist handleTouchEvent(Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;)V
    .registers 5
    .param p1, "touchInput"    # Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    .line 254
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    .line 255
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_20

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received TouchEvent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_20
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->isDisplayUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 264
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateTouchPointerTable()Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_2d} :catch_42

    if-nez v0, :cond_30

    .line 265
    return-void

    .line 270
    :cond_30
    nop

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->setTouchPointerPropAndCoords()V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->convertActionByMotionEvent()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 275
    return-void

    .line 278
    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->injectInputTouchEvent()V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->removeTouchPointerInActionUp()V

    .line 281
    return-void

    .line 267
    :catch_42
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method abstract blacklist injectInputKeyEvent()V
.end method

.method abstract blacklist injectInputScrollEvent()V
.end method

.method abstract blacklist injectInputTouchEvent()V
.end method

.method blacklist isDexMode()Z
    .registers 3

    .line 196
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method blacklist registerDisplayChangedListener()V
    .registers 4

    .line 104
    const-string v0, "ConnectionMode"

    const-string v1, "registerDisplayChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/samsung/android/wfd/ConnectionMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/ConnectionMode$1;-><init>(Lcom/samsung/android/wfd/ConnectionMode;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 122
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 123
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_20

    .line 124
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 126
    :cond_20
    return-void
.end method

.method blacklist registerIntentFilter()V
    .registers 4

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method protected blacklist sendHiddenDisplayIntent(Z)V
    .registers 7
    .param p1, "isStart"    # Z

    .line 137
    const-string v0, "ConnectionMode"

    const-string v1, "com.samsung.android.wfd"

    const-string v2, "update"

    const-string v3, "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

    if-eqz p1, :cond_29

    .line 138
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 139
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    const-string v4, "displayID"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    const-string v1, "update hidden display msg send"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_43

    .line 145
    :cond_29
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 146
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    const-string v1, "destroy hidden display msg send"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 152
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_43
    return-void
.end method

.method blacklist setExternalDisplay(FF)V
    .registers 4
    .param p1, "externalDisplayWidth"    # F
    .param p2, "externalDisplayHeight"    # F

    .line 200
    iput p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    .line 201
    iput p2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    .line 202
    div-float v0, p1, p2

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 205
    return-void
.end method

.method abstract blacklist setScrollPointerCoords()V
.end method

.method blacklist setSinkDevice(Z)V
    .registers 4
    .param p1, "isSamsungMobile"    # Z

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSinkDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-boolean p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsSamsungMobile:Z

    .line 215
    return-void
.end method

.method blacklist unregisterDisplayChangedListener()V
    .registers 3

    .line 129
    const-string v0, "ConnectionMode"

    const-string v1, "unregisterDisplayChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 131
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_18

    .line 132
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 134
    :cond_18
    return-void
.end method

.method abstract blacklist updateDisplayInformation()V
.end method

.method protected blacklist updateDisplayValue()V
    .registers 7

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 231
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    .line 232
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    .line 233
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayRatio:F

    .line 235
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v2, v1, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;

    if-eqz v2, :cond_25

    .line 236
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    goto :goto_2c

    .line 238
    :cond_25
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    .line 241
    :goto_2c
    instance-of v1, v1, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;

    if-eqz v1, :cond_34

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wfd/ConnectionMode;->sendHiddenDisplayIntent(Z)V

    .line 245
    :cond_34
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_96

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrimaryDisplay Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Ratio : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayRatio:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ConnectionMode"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExternalDisplay Width : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_96
    return-void
.end method

.method abstract blacklist updateTouchPointerTable()Z
.end method
