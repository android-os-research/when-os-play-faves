.class public Lcom/samsung/android/widget/SemPressGestureDetector;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    }
.end annotation


# static fields
.field private static final blacklist BIXBY_TOUCH_AUTHORITY:Ljava/lang/String; = "content://com.samsung.android.bixbytouch"

.field private static final blacklist BIXBY_TOUCH_DETECTOR_VERSION:I = 0x3

.field private static final blacklist BIXBY_TOUCH_URI:Landroid/net/Uri;

.field private static final blacklist CALL_METHOD:Ljava/lang/String; = "send_bixby_touch_event"

.field private static final blacklist CALL_REFLECT_METHOD:Ljava/lang/String; = "bixby_touch_reflect_widget"

.field private static final blacklist DEFAULT_CHECK_TOUCH_DOWN_DELAY_TIME:I = 0x64

.field private static final blacklist DEFAULT_FINGER_DOWN_THRESHOLD:I = 0x1e

.field private static final blacklist DEFAULT_LONG_LONG_PRESS_TIME:I = 0x5dc

.field private static final blacklist DEFAULT_LONG_PRESS_TIME:I = 0x1f4

.field private static final blacklist DOUBLE_FINGER_TOUCH_MODE:I = 0x2

.field private static final blacklist KEY_BIXBYTOUCH_FINGER_DOWN_THRESHOLD:Ljava/lang/String; = "bixbytouch_finger_down_threshold"

.field private static final blacklist KEY_BIXBYTOUCH_FINGER_TOUCH_TRIGGER:Ljava/lang/String; = "bixbytouch_finger_touch_mode"

.field private static final blacklist KEY_BIXBYTOUCH_LONG_PRESS_TIME:Ljava/lang/String; = "bixbytouch_long_press_timeout"

.field private static final blacklist KEY_BIXBYTOUCH_VERSION:Ljava/lang/String; = "key_bixbytouch_version"

.field private static final blacklist KEY_CHECK_FP_DELAY_TIME:Ljava/lang/String; = "check_touch_down_delay_time"

.field private static final blacklist KEY_LONG_LONG_PRESS_TIME:Ljava/lang/String; = "long_long_press_timeout"

.field private static final blacklist LONG_CLICKED_BIXBY:I = 0x1

.field private static final blacklist LONG_LONG_CANCEL_BIXBY:I = 0x3

.field private static final blacklist LONG_LONG_CLICKED_BIXBY:I = 0x2

.field private static final blacklist PERMISSION_WRITE_SECURE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final blacklist REFLECT_FIELD_LEVEL_SELF:I = 0x0

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER:I = 0x1

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER_SUPER:I = 0x2

.field private static final blacklist REFLECT_MAX_COUNT:I = 0x3

.field private static final blacklist SINGLE_FINGER_TOUCH_MODE:I = 0x1

.field private static final blacklist SUPPORT_DOUBLE_FINGER_MODE_MIN_VERSION:J = 0x11e1a300L

.field private static final blacklist TAEGET_PKG_NAME:Ljava/lang/String; = "com.samsung.android.bixbytouch"

.field private static final blacklist TAG:Ljava/lang/String; = "SemPressGestureDetector"

.field private static final blacklist TOUCH_MOVE_MAX_MM:F = 3.0f

.field private static blacklist sBixbyTouchEnable:Z

.field private static blacklist sCheckTouchDownDelayTime:I

.field private static blacklist sCurrentTouchMode:I

.field private static blacklist sFingerDownThreshold:I

.field private static blacklist sHasCallReflectCount:I

.field private static blacklist sLongLongPressTime:I

.field private static blacklist sLongPressTime:I

.field private static blacklist sPreviousPackge:Ljava/lang/String;

.field private static blacklist sRequestCode:J

.field private static blacklist sTouchMoveMaxPixel:I

.field private static blacklist sVersionCode:J

.field private static blacklist sWidgetIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sWidgetNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private blacklist mAppBounds:Landroid/graphics/Rect;

.field private blacklist mBixbyTouchVersion:J

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCallerPackage:Ljava/lang/String;

.field private blacklist mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDetachedFromWindow:Z

.field private blacklist mFindViewRestricted:Z

.field private blacklist mGetSettingRunnable:Ljava/lang/Runnable;

.field private blacklist mHasDoneLongTouch:Z

.field private blacklist mInitFailed:Z

.field private blacklist mLongLongTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mLongTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mResponeLongLongTouch:Z

.field private blacklist mResponeLongTouch:Z

.field private blacklist mTaskId:I

.field private blacklist mTouchDownRestricted:Z

.field private blacklist mTouchedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/widget/SemPressGestureDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchedRawPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/widget/SemPressGestureDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchedTime:J

.field private blacklist mTouchedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mView:Landroid/view/View;

.field private blacklist mWindowConfig:Ljava/lang/String;

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBixbyTouchVersion(Lcom/samsung/android/widget/SemPressGestureDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackage(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongLongTouchRunnable(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBixbyTouchVersion(Lcom/samsung/android/widget/SemPressGestureDetector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFindViewRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasDoneLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponeLongLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchedViews(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isFingerPrintInDisplay()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misLauncherApp(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isLauncherApp()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmatchPackage(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->matchPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseInfoFromView(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseInfoFromView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendBixbyLongClickedEvent(Lcom/samsung/android/widget/SemPressGestureDetector;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongClickedEvent(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLongLongPressTime()I
    .registers 1

    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWidgetIdList()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWidgetNameList()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCheckTouchDownDelayTime(I)V
    .registers 1

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCurrentTouchMode(I)V
    .registers 1

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsFingerDownThreshold(I)V
    .registers 1

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsHasCallReflectCount(I)V
    .registers 1

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsLongLongPressTime(I)V
    .registers 1

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsLongPressTime(I)V
    .registers 1

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsRequestCode(J)V
    .registers 2

    sput-wide p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    const-string v0, "content://com.samsung.android.bixbytouch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    .line 67
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    .line 68
    const/16 v0, 0x5dc

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    .line 69
    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    .line 70
    const/16 v0, 0x1e

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    .line 73
    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    .line 74
    const/16 v0, 0x32

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    .line 75
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackge:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    .line 79
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    .line 88
    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    .line 95
    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    .line 107
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$1;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$2;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$3;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$4;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mGetSettingRunnable:Ljava/lang/Runnable;

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->init(Landroid/content/Context;Landroid/view/View;)V

    .line 205
    return-void
.end method

.method private blacklist addTouchedPoint(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 664
    .local v0, "mTouchPointIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 665
    .local v1, "pointId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 666
    .local v2, "pointIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 667
    .local v3, "mTouchX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 668
    .local v4, "mTouchY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    .line 669
    .local v5, "mTouchRawX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v6

    .line 671
    .local v6, "mTouchRawY":F
    new-instance v7, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    invoke-direct {v7, v3, v4}, Lcom/samsung/android/widget/SemPressGestureDetector$Point;-><init>(FF)V

    .line 672
    .local v7, "touchedPoint":Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    new-instance v8, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    invoke-direct {v8, v5, v6}, Lcom/samsung/android/widget/SemPressGestureDetector$Point;-><init>(FF)V

    .line 673
    .local v8, "touchedRawPoint":Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    iget-object v9, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v9, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    return-void
.end method

.method private blacklist checkBlockApp()V
    .registers 3

    .line 562
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/widget/SemPressGestureDetector$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$5;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 572
    return-void
.end method

.method private blacklist checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "isMoved":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 680
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v2, v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 681
    .local v2, "mTouchX":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 682
    .local v3, "mTouchY":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_49

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_47

    goto :goto_49

    :cond_47
    move v4, v5

    goto :goto_4a

    :cond_49
    :goto_49
    move v4, v6

    .line 683
    .local v4, "isPointMoved":Z
    :goto_4a
    if-nez v0, :cond_4e

    if-eqz v4, :cond_4f

    :cond_4e
    move v5, v6

    :cond_4f
    move v0, v5

    .line 679
    .end local v2    # "mTouchX":F
    .end local v3    # "mTouchY":F
    .end local v4    # "isPointMoved":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 685
    .end local v1    # "i":I
    :cond_53
    return v0
.end method

.method private blacklist dispatchTouchEventDoubleFingers(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    .line 633
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 634
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    .line 637
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    .line 638
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    .line 639
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    goto :goto_64

    .line 640
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5f

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    sub-long/2addr v2, v4

    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    .line 642
    return v1

    .line 644
    :cond_41
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    .line 645
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_64

    .line 648
    :cond_5f
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-nez v0, :cond_64

    .line 649
    return v1

    .line 652
    :cond_64
    :goto_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_7d

    .line 653
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-nez v0, :cond_7a

    .line 654
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongPressDoubleFingers(Landroid/view/MotionEvent;)V

    goto :goto_7d

    .line 656
    :cond_7a
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongLongPressDoubleFingers(Landroid/view/MotionEvent;)V

    .line 659
    :cond_7d
    :goto_7d
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return v0
.end method

.method private blacklist dispatchTouchEventOneFinger(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_32

    .line 605
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    .line 608
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    .line 609
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    .line 610
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    .line 611
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_63

    .line 615
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_5e

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResponeLongTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mResponeLongLongTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_5e
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-nez v0, :cond_63

    .line 619
    return v2

    .line 622
    :cond_63
    :goto_63
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-nez v0, :cond_6b

    .line 623
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongPressOneFinger(Landroid/view/MotionEvent;)V

    goto :goto_6e

    .line 625
    :cond_6b
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongLongPressOneFinger(Landroid/view/MotionEvent;)V

    .line 627
    :goto_6e
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return v0
.end method

.method private blacklist doLongLongPressDoubleFingers(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :pswitch_7
    goto :goto_24

    .line 754
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 755
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 756
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    goto :goto_24

    .line 763
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    .line 765
    nop

    .line 769
    :cond_24
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_8
        :pswitch_19
        :pswitch_7
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private blacklist doLongLongPressOneFinger(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :pswitch_7
    goto :goto_24

    .line 710
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 711
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 712
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    goto :goto_24

    .line 718
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    .line 720
    nop

    .line 724
    :cond_24
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_8
        :pswitch_19
        :pswitch_7
        :pswitch_19
    .end packed-switch
.end method

.method private blacklist doLongPressDoubleFingers(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :pswitch_7
    goto :goto_42

    .line 741
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    .line 742
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 743
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 729
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 730
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 731
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 736
    :pswitch_33
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 737
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 738
    nop

    .line 749
    :cond_42
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_33
        :pswitch_1e
        :pswitch_33
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist doLongPressOneFinger(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    :pswitch_7
    goto :goto_2c

    .line 691
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 692
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 693
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2c

    .line 699
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 700
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 701
    nop

    .line 705
    :cond_2c
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_8
        :pswitch_1d
        :pswitch_7
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 328
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_18

    .line 329
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    .local v0, "res":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_13

    .line 331
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 333
    :cond_13
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    return-object v1

    .line 336
    .end local v0    # "res":Landroid/content/Context;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 216
    const-wide/16 v0, 0x0

    .line 218
    .local v0, "versionCode":J
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_f} :catch_11

    move-wide v0, v2

    .line 221
    goto :goto_15

    .line 219
    :catch_11
    move-exception v2

    .line 220
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 222
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_15
    return-wide v0
.end method

.method private blacklist getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .param p1, "decorContext"    # Landroid/content/Context;

    .line 341
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 342
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 343
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1d

    .line 344
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 346
    .local v2, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return-object v3

    .line 350
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_1d
    goto :goto_22

    .line 348
    :catch_1e
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 228
    :try_start_0
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 230
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 233
    :cond_25
    goto :goto_27

    .line 232
    :catch_26
    move-exception v0

    .line 234
    :goto_27
    const/4 v0, 0x0

    :try_start_28
    sget v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2e

    .line 235
    return-object v0

    .line 237
    :cond_2e
    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    .line 238
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 239
    .local v1, "clazz":Ljava/lang/Class;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getTouchedAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 241
    .local v4, "versionCode":J
    const-string/jumbo v6, "request_code"

    sget-wide v7, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    const-string v6, "caller_package"

    invoke-virtual {v3, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v6, "caller_class"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v6, "caller_version_code"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string v8, "bixby_touch_reflect_widget"

    invoke-virtual {v6, v7, v8, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 246
    .local v6, "result":Landroid/os/Bundle;
    if-eqz v6, :cond_c9

    .line 247
    const-string/jumbo v7, "reflect_field_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "fieldName":Ljava/lang/String;
    const-string/jumbo v8, "reflect_method_name"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "methodName":Ljava/lang/String;
    const-string/jumbo v9, "reflect_field_level"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 250
    .local v9, "fieldLevel":I
    if-eqz v7, :cond_b3

    .line 251
    const/4 v10, 0x0

    .line 252
    .local v10, "field":Ljava/lang/reflect/Field;
    packed-switch v9, :pswitch_data_d0

    goto :goto_a2

    .line 260
    :pswitch_84
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v10, v11

    goto :goto_a2

    .line 257
    :pswitch_92
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v10, v11

    .line 258
    goto :goto_a2

    .line 254
    :pswitch_9c
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v10, v11

    .line 255
    nop

    .line 263
    :goto_a2
    if-eqz v10, :cond_b2

    .line 264
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 265
    invoke-virtual {v10, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    .local v2, "charSequence":Ljava/lang/Object;
    if-eqz v2, :cond_b2

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    .end local v2    # "charSequence":Ljava/lang/Object;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    :cond_b2
    goto :goto_c9

    .line 271
    :cond_b3
    const/4 v2, 0x0

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 272
    .local v10, "method":Ljava/lang/reflect/Method;
    if-eqz v10, :cond_c9

    .line 273
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v10, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    .restart local v2    # "charSequence":Ljava/lang/Object;
    if-eqz v2, :cond_c9

    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_c8} :catch_ca

    return-object v0

    .line 282
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "charSequence":Ljava/lang/Object;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "versionCode":J
    .end local v6    # "result":Landroid/os/Bundle;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "fieldLevel":I
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :cond_c9
    :goto_c9
    goto :goto_ce

    .line 280
    :catch_ca
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_ce
    return-object v0

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_92
        :pswitch_84
    .end packed-switch
.end method

.method private static blacklist getTouchedAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 208
    sget-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    if-eqz p1, :cond_1a

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 209
    :cond_12
    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    .line 210
    sput-object p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackge:Ljava/lang/String;

    .line 212
    :cond_1a
    sget-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    return-wide v0
.end method

.method private blacklist isFingerPrintInDisplay()Z
    .registers 8

    .line 355
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 356
    .local v0, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v1, 0x0

    .line 357
    .local v1, "fingerPrintInDisplay":Z
    const/4 v2, 0x0

    .line 358
    .local v2, "fingerIconHeight":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1f

    .line 359
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    move v5, v3

    goto :goto_1a

    :cond_19
    move v5, v4

    :goto_1a
    move v1, v5

    .line 360
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result v2

    .line 362
    :cond_1f
    if-eqz v1, :cond_24

    if-lez v2, :cond_24

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    return v3
.end method

.method private blacklist isLauncherApp()Z
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 576
    return v1

    .line 578
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 581
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_21

    .line 582
    return v1

    .line 584
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private blacklist matchPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist mm2px(F)F
    .registers 5
    .param p1, "mm"    # F

    .line 557
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 558
    .local v0, "dpi":I
    const v1, 0x41cb3333    # 25.4f

    div-float v1, p1, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method private blacklist parseActivity()Landroid/app/Activity;
    .registers 5

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    .line 312
    .local v1, "baseContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_d

    .line 313
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    goto :goto_22

    .line 314
    :cond_d
    instance-of v2, v2, Lcom/android/internal/policy/DecorContext;

    if-eqz v2, :cond_22

    .line 315
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 316
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_22

    .line 317
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 320
    :cond_22
    :goto_22
    if-nez v0, :cond_29

    .line 321
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    return-object v2

    .line 324
    :cond_29
    return-object v0
.end method

.method private blacklist parseInfoFromView()V
    .registers 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    if-eqz v0, :cond_8d

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseActivity()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_57

    .line 291
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    .line 292
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    .line 293
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentConfig()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    .line 294
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentConfig()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentConfig()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBounds:Landroid/graphics/Rect;

    .line 296
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentConfig()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mMaxBounds:Landroid/graphics/Rect;

    .line 297
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentConfig()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    goto :goto_8d

    .line 299
    :cond_57
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    .line 301
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    .line 306
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_8d
    :goto_8d
    goto :goto_92

    .line 304
    :catch_8e
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_92
    return-void
.end method

.method private blacklist sendBixbyLongClickedEvent(I)Z
    .registers 13
    .param p1, "flag"    # I

    .line 403
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 404
    return v1

    .line 407
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "request_code"

    sget-wide v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 409
    const-string v2, "bixby_touch_flag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    const-string v2, "bixby_touch_detector_version"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1ab

    .line 412
    const-string v3, "caller_pkg"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v3, "caller_activity"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v3, "caller_process"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v3, "widget_name_list"

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 416
    const-string/jumbo v3, "widget_id_list"

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 417
    const-string v3, "caller_task_id"

    iget v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string/jumbo v3, "window_mode"

    iget v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string/jumbo v3, "window_config"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    .line 421
    .local v3, "topActivityBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBounds:Landroid/graphics/Rect;

    .line 422
    .local v4, "topActivityWindowBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mMaxBounds:Landroid/graphics/Rect;

    .line 423
    .local v5, "topActivityWindowMaxBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_85

    .line 424
    const-string/jumbo v6, "window_left"

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string/jumbo v6, "window_top"

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string/jumbo v6, "window_right"

    iget v7, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string/jumbo v6, "window_bottom"

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    :cond_85
    if-eqz v4, :cond_a7

    .line 430
    const-string/jumbo v6, "window_bounds_left"

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string/jumbo v6, "window_bounds_top"

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    const-string/jumbo v6, "window_bounds_right"

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    const-string/jumbo v6, "window_bounds_bottom"

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    :cond_a7
    if-eqz v5, :cond_c9

    .line 436
    const-string/jumbo v6, "window_max_bounds_left"

    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string/jumbo v6, "window_max_bounds_top"

    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    const-string/jumbo v6, "window_max_bounds_right"

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    const-string/jumbo v6, "window_max_bounds_bottom"

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    :cond_c9
    sget v6, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_cb} :catch_207

    const-string/jumbo v7, "touch_raw_start_y1"

    const-string/jumbo v8, "touch_raw_start_x1"

    const/4 v9, 0x2

    if-ne v6, v9, :cond_117

    .line 442
    :try_start_d4
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_139

    .line 443
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v6, v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 444
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v6, v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 445
    const-string/jumbo v6, "touch_raw_start_x2"

    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v7, v7, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 446
    const-string/jumbo v6, "touch_raw_start_y2"

    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v7, v7, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_139

    .line 449
    :cond_117
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v2, :cond_139

    .line 450
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v6, v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 451
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v6, v6, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 454
    :cond_139
    :goto_139
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1ab

    .line 455
    sget v6, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    if-ne v6, v2, :cond_153

    .line 456
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 457
    .local v6, "mTouchedView":Landroid/view/View;
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/widget/SemPressGestureDetector;->putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, v7

    .line 458
    .end local v6    # "mTouchedView":Landroid/view/View;
    goto :goto_1ab

    .line 459
    :cond_153
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_176

    .line 460
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 461
    .local v6, "view1":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_16b} :catch_207

    .line 462
    .local v7, "view2":Landroid/view/View;
    const-string v8, "fingers_touch_in_same_view"

    if-ne v6, v7, :cond_173

    .line 463
    :try_start_16f
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_176

    .line 465
    :cond_173
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    .end local v6    # "view1":Landroid/view/View;
    .end local v7    # "view2":Landroid/view/View;
    :cond_176
    :goto_176
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_177
    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1ab

    .line 470
    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 471
    .local v7, "mTouchedView":Landroid/view/View;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v8, "subBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/widget/SemPressGestureDetector;->putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v9

    move-object v8, v9

    .line 473
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "touched_view_info_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 469
    .end local v7    # "mTouchedView":Landroid/view/View;
    .end local v8    # "subBundle":Landroid/os/Bundle;
    .end local v9    # "key":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_177

    .line 479
    .end local v3    # "topActivityBounds":Landroid/graphics/Rect;
    .end local v4    # "topActivityWindowBounds":Landroid/graphics/Rect;
    .end local v5    # "topActivityWindowMaxBounds":Landroid/graphics/Rect;
    .end local v6    # "i":I
    :cond_1ab
    :goto_1ab
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo v5, "send_bixby_touch_event"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 480
    .local v3, "result":Landroid/os/Bundle;
    if-eqz v3, :cond_206

    .line 481
    if-ne p1, v2, :cond_1ff

    .line 482
    const-string v2, "key_bixbytouch_version"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 483
    .local v6, "version":J
    cmp-long v2, v6, v4

    if-eqz v2, :cond_1cd

    .line 484
    iput-wide v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    .line 486
    :cond_1cd
    const-string v2, "bixbytouch_finger_touch_mode"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    .line 487
    const-string v2, "bixbytouch_long_press_timeout"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    .line 488
    const-string v2, "long_long_press_timeout"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    .line 489
    const-string v2, "check_touch_down_delay_time"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    .line 490
    const-string v2, "bixbytouch_finger_down_threshold"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    .line 492
    .end local v6    # "version":J
    :cond_1ff
    const-string v2, "bixby_touch_response"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_205} :catch_207

    return v1

    .line 496
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_206
    goto :goto_20b

    .line 494
    :catch_207
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20b
    return v1
.end method

.method private blacklist sendBixbyLongLongCancelEvent()V
    .registers 6

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    .line 527
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, "bundle":Landroid/os/Bundle;
    sget-wide v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    const-string/jumbo v3, "request_code"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 531
    const-string v1, "bixby_touch_flag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    :try_start_20
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo v3, "send_bixby_touch_event"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2f} :catch_30

    .line 536
    goto :goto_34

    .line 534
    :catch_30
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method


# virtual methods
.method public blacklist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_38

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sBixbyTouchEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFindViewRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_38
    sget-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    if-eqz v0, :cond_45

    goto :goto_54

    .line 595
    :cond_45
    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    .line 596
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->dispatchTouchEventDoubleFingers(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_53

    .line 598
    .end local v0    # "result":Z
    :cond_4f
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->dispatchTouchEventOneFinger(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 600
    .restart local v0    # "result":Z
    :goto_53
    return v0

    .line 592
    .end local v0    # "result":Z
    :cond_54
    :goto_54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTouchedViews()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "mTouchedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_5
    sget v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_53

    .line 142
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_7a

    .line 143
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v1, v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 144
    .local v1, "mTouchedX0":F
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v2, v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 145
    .local v2, "mTouchedY0":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 146
    .local v3, "mTouchedX1":F
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 147
    .local v5, "mTouchedY1":F
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v6, v1, v2, v4}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v6

    .line 148
    .local v6, "view0":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v7, v3, v5, v4}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v4

    .line 149
    .local v4, "view1":Landroid/view/View;
    if-eqz v6, :cond_4d

    .line 150
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4d
    if-eqz v4, :cond_52

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1    # "mTouchedX0":F
    .end local v2    # "mTouchedY0":F
    .end local v3    # "mTouchedX1":F
    .end local v4    # "view1":Landroid/view/View;
    .end local v5    # "mTouchedY1":F
    .end local v6    # "view0":Landroid/view/View;
    :cond_52
    goto :goto_7a

    .line 157
    :cond_53
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_7a

    .line 158
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v1, v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 159
    .local v1, "mTouchedX":F
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v2, v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 160
    .local v2, "mTouchedY":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v2, v4}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, "mTouchedView":Landroid/view/View;
    if-eqz v3, :cond_7a

    .line 162
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7a} :catch_7b

    .line 168
    .end local v1    # "mTouchedX":F
    .end local v2    # "mTouchedY":F
    .end local v3    # "mTouchedView":Landroid/view/View;
    :cond_7a
    :goto_7a
    goto :goto_7f

    .line 166
    :catch_7b
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7f
    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/view/View;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 376
    const/4 v0, 0x1

    if-eqz p1, :cond_41

    if-nez p2, :cond_6

    goto :goto_41

    .line 381
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    .line 382
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    .line 383
    iput-object p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    .line 385
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    .line 386
    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->mm2px(F)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    .line 387
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 388
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_3d

    .line 389
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 390
    .local v3, "windowType":I
    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    .line 391
    if-eqz v0, :cond_3d

    .line 392
    return-void

    .line 395
    .end local v3    # "windowType":I
    :cond_3d
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkBlockApp()V

    .line 396
    return-void

    .line 377
    .end local v2    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_41
    :goto_41
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    .line 378
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    .line 379
    return-void
.end method

.method public blacklist isInitFailed()Z
    .registers 2

    .line 399
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    return v0
.end method

.method public blacklist onDetached()V
    .registers 3

    .line 540
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_5

    .line 541
    return-void

    .line 543
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    .line 544
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-eqz v0, :cond_13

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    .line 547
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 548
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 549
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method

.method public blacklist putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "touchedView"    # Landroid/view/View;

    .line 501
    if-eqz p2, :cond_73

    .line 503
    :try_start_2
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 504
    const-string v0, "input_type"

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    :cond_12
    const-string v0, "bixby_touch_find_text"

    invoke-virtual {p2}, Landroid/view/View;->semGetBixbyTouchFoundText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "found_widget_name"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    .line 509
    const-string v0, "found_widget_id"

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_42
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_6e

    .line 512
    move-object v0, p2

    check-cast v0, Landroid/webkit/WebView;

    .line 513
    .local v0, "webView":Landroid/webkit/WebView;
    const-string/jumbo v1, "touch_webview"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    const-string/jumbo v1, "touch_webview_url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string/jumbo v1, "touch_webview_originalUrl"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, "touch_webview_title"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_6f

    .line 520
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_6e
    goto :goto_73

    .line 518
    :catch_6f
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_73
    :goto_73
    return-object p1
.end method

.method public blacklist setBixbyTouchEnable(Z)V
    .registers 4
    .param p1, "bixbyTouchEnable"    # Z

    .line 366
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_5

    .line 367
    return-void

    .line 369
    :cond_5
    sput-boolean p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    .line 370
    if-eqz p1, :cond_13

    .line 371
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mGetSettingRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 373
    :cond_13
    return-void
.end method
