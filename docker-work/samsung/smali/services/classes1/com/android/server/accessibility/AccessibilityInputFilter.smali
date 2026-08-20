.class public Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FEATURES_AFFECTING_MOTION_EVENTS:I = -0x70ffe425

.field public static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field public static final FLAG_FEATURE_AUTO_ACTION:I = 0x800

.field public static final FLAG_FEATURE_BOUNCE_KEYS:I = 0x4000000

.field public static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field public static final FLAG_FEATURE_CORNER_ACTION:I = 0x1000

.field public static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field public static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field public static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field public static final FLAG_FEATURE_SLOW_KEYS:I = 0x8000000

.field public static final FLAG_FEATURE_STICKY_KEYS:I = 0x2000000

.field public static final FLAG_FEATURE_TAP_DURATION:I = -0x80000000

.field public static final FLAG_FEATURE_TOUCH_BLOCKING:I = 0x1000000

.field public static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field public static final FLAG_FEATURE_TRIGGERED_SCREEN_MAGNIFIER:I = 0x40

.field public static final FLAG_REQUEST_2_FINGER_PASSTHROUGH:I = 0x200

.field public static final FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x100

.field public static final FLAG_SEND_MOTION_EVENTS:I = 0x400

.field public static final FLAG_SERVICE_HANDLES_DOUBLE_TAP:I = 0x80

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

.field public mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field public mBounceKeys:Lcom/android/server/accessibility/SamsungBounceKeys;

.field public final mContext:Landroid/content/Context;

.field public mEnabledFeatures:I

.field public final mEventHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;"
        }
    .end annotation
.end field

.field public mInstalled:Z

.field public mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field public mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field public final mMagnificationGestureHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mMotionEventInjectors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;"
        }
    .end annotation
.end field

.field public final mMouseStreamStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;",
            ">;"
        }
    .end annotation
.end field

.field public final mPm:Landroid/os/PowerManager;

.field public mSlowKeys:Lcom/android/server/accessibility/SamsungSlowKeys;

.field public mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

.field public mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

.field public mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

.field public final mTouchExplorer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/gestures/TouchExplorer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTouchScreenStreamStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 5

    .line 262
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .registers 6

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/accessibility/AccessibilityManagerService;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;)V"
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 268
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo p2, "power"

    .line 270
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 271
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;Landroid/os/Looper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/accessibility/AccessibilityManagerService;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p4}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 230
    new-instance p4, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 232
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 235
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 249
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 251
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 282
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 283
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo p2, "power"

    .line 284
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 285
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 4

    .line 737
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_e

    .line 739
    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_11

    .line 741
    :cond_e
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 744
    :goto_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final clearEventStreamHandler(II)V
    .registers 3

    .line 447
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_d

    .line 449
    invoke-interface {p0, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_d
    return-void
.end method

.method public clearEvents(I)V
    .registers 2

    return-void
.end method

.method public final createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    .registers 16

    .line 837
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    move v9, v3

    goto :goto_b

    :cond_a
    move v9, v2

    :goto_b
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_11

    move v10, v3

    goto :goto_12

    :cond_11
    move v10, v2

    .line 842
    :goto_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3c

    const/16 v0, 0x7f7

    .line 844
    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v5

    .line 846
    new-instance p2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 847
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v7

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 848
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v8

    move-object v4, p2

    move v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZI)V

    goto :goto_67

    :cond_3c
    const/16 v0, 0x7eb

    .line 851
    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v5

    .line 853
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 854
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 855
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 856
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v8

    new-instance v11, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v11, p2, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;-><init>(Landroid/content/Context;I)V

    move-object v4, v0

    move v12, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;I)V

    move-object p2, v0

    :goto_67
    return-object p2
.end method

.method public final disableDisplayIndependentFeatures()V
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 790
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 791
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_13

    .line 795
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 796
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 800
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    if-eqz v0, :cond_1c

    .line 801
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->onDestroy()V

    .line 802
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 807
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    if-eqz v0, :cond_25

    .line 808
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTapDuration;->onDestroy()V

    .line 809
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 814
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    if-eqz v0, :cond_2e

    .line 815
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onDestroy()V

    .line 816
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 820
    :cond_2e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

    if-eqz v0, :cond_37

    .line 821
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->onDestroy()V

    .line 822
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 824
    :cond_37
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mBounceKeys:Lcom/android/server/accessibility/SamsungBounceKeys;

    if-eqz v0, :cond_40

    .line 825
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungBounceKeys;->onDestroy()V

    .line 826
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mBounceKeys:Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 828
    :cond_40
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSlowKeys:Lcom/android/server/accessibility/SamsungSlowKeys;

    if-eqz v0, :cond_49

    .line 829
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungSlowKeys;->onDestroy()V

    .line 830
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSlowKeys:Lcom/android/server/accessibility/SamsungSlowKeys;

    :cond_49
    return-void
.end method

.method public final disableFeatures()V
    .registers 4

    .line 748
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1e

    .line 751
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 753
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 754
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableDisplayIndependentFeatures()V

    .line 756
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    return-void
.end method

.method public final disableFeaturesForDisplay(I)V
    .registers 3

    .line 764
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v0, :cond_12

    .line 766
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 767
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 770
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v0, :cond_24

    .line 772
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDestroy()V

    .line 773
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 776
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v0, :cond_36

    .line 778
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 779
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 782
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_45

    .line 784
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_45
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 1179
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "A11yInputFilter Info : "

    .line 1182
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1183
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1185
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1186
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_90

    .line 1187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 1188
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v4, :cond_8a

    const-string v5, "Enabled features of Display ["

    .line 1190
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1191
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v3, "] = "

    .line 1192
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1194
    new-instance v3, Ljava/util/StringJoiner;

    const-string v5, ","

    const-string v6, "["

    const-string v7, "]"

    invoke-direct {v3, v5, v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_4b
    if-eqz v4, :cond_83

    .line 1197
    instance-of v5, v4, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v5, :cond_57

    const-string v5, "MagnificationGesture"

    .line 1198
    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7e

    .line 1199
    :cond_57
    instance-of v5, v4, Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v5, :cond_61

    const-string v5, "KeyboardInterceptor"

    .line 1200
    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7e

    .line 1201
    :cond_61
    instance-of v5, v4, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v5, :cond_6b

    const-string v5, "TouchExplorer"

    .line 1202
    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7e

    .line 1203
    :cond_6b
    instance-of v5, v4, Lcom/android/server/accessibility/AutoclickController;

    if-eqz v5, :cond_75

    const-string v5, "AutoclickController"

    .line 1204
    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7e

    .line 1205
    :cond_75
    instance-of v5, v4, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v5, :cond_7e

    const-string v5, "MotionEventInjector"

    .line 1206
    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1208
    :cond_7e
    :goto_7e
    invoke-interface {v4}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    goto :goto_4b

    .line 1210
    :cond_83
    invoke-virtual {v3}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1212
    :cond_8a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1216
    :cond_90
    :try_start_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnabledFeatures : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0x%08X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1217
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_cb

    .line 1218
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v0, :cond_cb

    .line 1220
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1223
    :cond_cb
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 1224
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v0, :cond_e0

    .line 1226
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1229
    :cond_e0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-eqz v0, :cond_e7

    .line 1230
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1232
    :cond_e7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    if-eqz v0, :cond_ee

    .line 1233
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1235
    :cond_ee
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_f5

    .line 1236
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1238
    :cond_f5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    if-eqz v0, :cond_fc

    .line 1239
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1241
    :cond_fc
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    if-eqz v0, :cond_103

    .line 1242
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1244
    :cond_103
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

    if-eqz v0, :cond_10a

    .line 1245
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1247
    :cond_10a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mBounceKeys:Lcom/android/server/accessibility/SamsungBounceKeys;

    if-eqz v0, :cond_111

    .line 1248
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1250
    :cond_111
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSlowKeys:Lcom/android/server/accessibility/SamsungSlowKeys;

    if-eqz p0, :cond_118

    .line 1251
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_118} :catch_118

    :catch_118
    :cond_118
    return-void
.end method

.method public final enableDisplayIndependentFeatures()V
    .registers 4

    .line 715
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 716
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 719
    :cond_d
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    .line 720
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 721
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    const/4 v1, 0x0

    .line 725
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_28
    return-void
.end method

.method public final enableFeatures()V
    .registers 4

    .line 593
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    .line 595
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_1d

    .line 598
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 600
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableDisplayIndependentFeatures()V

    return-void
.end method

.method public final enableFeaturesForDisplay(Landroid/view/Display;)V
    .registers 8

    .line 608
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 609
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 611
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2a

    .line 612
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-nez v1, :cond_25

    .line 613
    new-instance v1, Lcom/android/server/accessibility/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 614
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 616
    :cond_25
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 619
    :cond_2a
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7b

    .line 620
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 621
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_41

    .line 622
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceHandlesDoubleTap(Z)V

    .line 624
    :cond_41
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4a

    .line 625
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setMultiFingerGesturesEnabled(Z)V

    .line 627
    :cond_4a
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_53

    .line 628
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTwoFingerPassthroughEnabled(Z)V

    .line 630
    :cond_53
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5c

    .line 631
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setSendMotionEventsEnabled(Z)V

    .line 634
    :cond_5c
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_65

    move v4, v3

    goto :goto_66

    :cond_65
    move v4, v5

    :goto_66
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6b

    goto :goto_6c

    :cond_6b
    move v3, v5

    :goto_6c
    if-nez v4, :cond_70

    if-eqz v3, :cond_73

    .line 639
    :cond_70
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->adjustDetermineUserIntentTimeoutWithDelay()V

    .line 642
    :cond_73
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 643
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    :cond_7b
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_89

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_89

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_95

    .line 650
    :cond_89
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object v0

    .line 652
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 653
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    :cond_95
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b4

    .line 657
    new-instance v0, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 658
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 659
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 660
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 664
    :cond_b4
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c9

    .line 665
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTapDuration;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 668
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 673
    :cond_c9
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_de

    .line 674
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 682
    :cond_de
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f9

    .line 683
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

    if-nez v0, :cond_f4

    .line 684
    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 688
    :cond_f4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mStickyKeys:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 690
    :cond_f9
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10e

    .line 691
    new-instance v0, Lcom/android/server/accessibility/SamsungBounceKeys;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungBounceKeys;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mBounceKeys:Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 694
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 696
    :cond_10e
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_123

    .line 697
    new-instance v0, Lcom/android/server/accessibility/SamsungSlowKeys;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungSlowKeys;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSlowKeys:Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 700
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 706
    :cond_123
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v1, v0, 0x800

    if-nez v1, :cond_12d

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_13b

    .line 708
    :cond_12d
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/autoaction/AutoActionController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 709
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_13b
    return-void
.end method

.method public final getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .registers 5

    .line 398
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 399
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v0

    const/16 v2, 0x2002

    .line 401
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 402
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez p1, :cond_25

    .line 404
    new-instance p1, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    .line 405
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_25
    return-object p1

    :cond_26
    const/16 v2, 0x1002

    .line 410
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 412
    check-cast p1, Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4b

    iget p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_4a

    const/16 v2, 0x8

    if-eq p1, v2, :cond_4a

    const/16 v2, 0x800

    if-eq p1, v2, :cond_4a

    const/16 v2, 0x1000

    if-ne p1, v2, :cond_4b

    :cond_4a
    return-object v1

    .line 418
    :cond_4b
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez p1, :cond_5f

    .line 420
    new-instance p1, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    .line 421
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5f
    return-object p1

    .line 435
    :cond_60
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_7a

    const/16 v0, 0x101

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 437
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez p1, :cond_77

    .line 438
    new-instance p1, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 440
    :cond_77
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object p0

    :cond_7a
    return-object v1
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 481
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 482
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    .line 485
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isDisplayIdValid(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    move v3, v1

    :cond_1b
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_27

    .line 487
    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_2f

    .line 489
    :cond_27
    sget-object p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "handleMotionEvent eventHandler is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_2f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final isDisplayIdValid(I)Z
    .registers 2

    .line 499
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public magnificationDisactivate(I)V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 582
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz p0, :cond_15

    .line 584
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->magnificationDisactivate()V

    :cond_15
    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .registers 3

    .line 571
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 572
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz p0, :cond_15

    .line 574
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->notifyShortcutTriggered()V

    :cond_15
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    const/4 v0, 0x0

    .line 562
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 563
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_16

    .line 565
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onDisplayAdded(Landroid/view/Display;)V
    .registers 3

    .line 311
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_e

    .line 312
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    :cond_e
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 318
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_a

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    :cond_a
    return-void
.end method

.method public onDoubleTap(I)V
    .registers 3

    .line 1164
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1165
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap()V

    :cond_13
    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 3

    .line 1170
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1171
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold()V

    :cond_13
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 9

    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onInputEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 348
    :cond_43
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_4f

    .line 350
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 354
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    if-nez v0, :cond_59

    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 360
    :cond_59
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    .line 361
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-nez v3, :cond_70

    .line 363
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 364
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    .line 365
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 369
    :cond_70
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 370
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    .line 373
    :cond_7d
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    move-result v1

    if-nez v1, :cond_87

    .line 374
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 378
    :cond_87
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_9d

    .line 379
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const v2, -0x70ffe425

    and-int/2addr v1, v2

    if-eqz v1, :cond_99

    .line 380
    check-cast p1, Landroid/view/MotionEvent;

    .line 381
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    return-void

    .line 384
    :cond_99
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_a6

    .line 386
    :cond_9d
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_a6

    .line 387
    check-cast p1, Landroid/view/KeyEvent;

    .line 388
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    :cond_a6
    :goto_a6
    return-void
.end method

.method public onInstalled()V
    .registers 2

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 297
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 4

    .line 514
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_8

    .line 515
    invoke-virtual {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_21

    .line 517
    :cond_8
    sget-object p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onKeyEvent mInstalled : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 505
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz p2, :cond_8

    .line 506
    invoke-virtual {p0, p1, p3}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_21

    .line 508
    :cond_8
    sget-object p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onMotionEvent mInstalled : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public onUninstalled()V
    .registers 2

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 306
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 307
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    return-void
.end method

.method public final processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .registers 4

    .line 467
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 468
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 474
    :cond_a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 454
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 455
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 459
    :cond_12
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    .line 463
    :cond_19
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public refreshMagnificationMode(Landroid/view/Display;)V
    .registers 6

    .line 901
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 903
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-nez v1, :cond_f

    return-void

    .line 907
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v3

    if-ne v2, v3, :cond_1c

    return-void

    .line 910
    :cond_1c
    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 911
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 913
    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 912
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object p1

    .line 914
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 916
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public requestDelegating(I)V
    .registers 3

    .line 1158
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1159
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestDelegating()V

    :cond_13
    return-void
.end method

.method public requestDragging(II)V
    .registers 4

    .line 1152
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1153
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestDragging(I)V

    :cond_13
    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 3

    .line 1146
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1147
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->requestTouchExploration()V

    :cond_13
    return-void
.end method

.method public resetAllStreamState()V
    .registers 4

    .line 863
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1e

    .line 866
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 869
    :cond_1e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz p0, :cond_25

    .line 870
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    :cond_25
    return-void
.end method

.method public resetStreamStateForDisplay(I)V
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_12

    .line 877
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 878
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 881
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_24

    .line 883
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 884
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 4

    if-eqz p2, :cond_15

    .line 1128
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1129
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V

    :cond_15
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    return-void
.end method

.method public setSecDebug(Z)V
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 328
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v2, :cond_16

    .line 330
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setSecDebug(Z)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 4

    .line 1140
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1141
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    :cond_13
    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 4

    if-eqz p2, :cond_15

    .line 1134
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1135
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V

    :cond_15
    return-void
.end method

.method public setUserAndEnabledFeatures(II)V
    .registers 4

    .line 548
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_9

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_9

    return-void

    .line 551
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_10

    .line 552
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 554
    :cond_10
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 555
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 556
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz p1, :cond_1b

    .line 557
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    :cond_1b
    return-void
.end method

.method public final switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 5

    .line 923
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-ne v0, p2, :cond_1a

    .line 928
    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 929
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_32

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_32

    .line 932
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p0

    if-ne p0, p2, :cond_2d

    .line 933
    invoke-interface {v0, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 934
    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void

    .line 937
    :cond_2d
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    goto :goto_1a

    :cond_32
    :goto_32
    return-void
.end method
