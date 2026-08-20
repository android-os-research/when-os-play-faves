.class public Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;
    }
.end annotation


# static fields
.field public static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field public static final FLING_DISTANCE_OFFSET:I = 0x1e

.field public static final FLING_VELOCITY_THRESHOLD:I = 0x2bc

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TaskPositioner"

.field public static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field public static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field public mClientCallback:Landroid/os/IBinder;

.field public mClientChannel:Landroid/view/InputChannel;

.field public mContentOfDisplayFrame:Landroid/graphics/Rect;

.field public mCtrlType:I

.field public mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayFrame:Landroid/graphics/Rect;

.field public mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field public mDragEnded:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDragWindowHandle:Landroid/view/InputWindowHandle;

.field public mFreeformGuideViewFullscreenMargin:I

.field public mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

.field public mInputEventReceiver:Landroid/view/InputEventReceiver;

.field public mLastSnapType:I

.field public mMaxHeight:I

.field public final mMaxVisibleSize:Landroid/graphics/Point;

.field public mMaxWidth:I

.field public final mMaximumFlingVelocity:I

.field public mMinHeight:I

.field public mMinVisibleHeight:I

.field public mMinVisibleWidth:I

.field public mMinWidth:I

.field public mMinimizeFreeformPadding:I

.field public final mMinimizeTriggerBounds:Landroid/graphics/Rect;

.field public final mMinimumFlingVelocity:I

.field public mNeedToFullscreenTransition:Z

.field public final mNotAdjustedBounds:Landroid/graphics/Rect;

.field public mNotifyStartFreeformResize:Z

.field public mNotifyStopFreeformResize:Z

.field public mPreserveOrientation:Z

.field public mResizing:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnappingBounds:Landroid/graphics/Rect;

.field public final mSnappingOtherBounds:Landroid/graphics/Rect;

.field public final mStableRect:Landroid/graphics/Rect;

.field public mStartDragX:F

.field public mStartDragY:F

.field public mStartOrientationWasLandscape:Z

.field public mStartX:I

.field public mStartY:I

.field public mTask:Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

.field public mTaskOrientation:I

.field public final mTmpDisplaySize:Landroid/graphics/Rect;

.field public mTmpRect:Landroid/graphics/Rect;

.field public final mVelocity:Landroid/graphics/PointF;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVisibleFrame:Landroid/graphics/Rect;

.field public mWindow:Lcom/android/server/wm/WindowState;

.field public final mWindowDragBounds:Landroid/graphics/Rect;

.field public final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$I3O8oJmE3lAlQ3epMAisCanCg0k(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->lambda$unregister$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$K323arD56shsNs8CnuvKMBCM7UM(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QW1F2BpX-6F_9AgFYajOCHn2fAo(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->onMotionInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lfe4lMBr2fnZNYWuiFAMc0f7e1o(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->lambda$register$0(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 151
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    .line 156
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStartFreeformResize:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStopFreeformResize:Z

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    .line 163
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 164
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnapType:I

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpDisplaySize:Landroid/graphics/Rect;

    .line 166
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mVisibleFrame:Landroid/graphics/Rect;

    .line 170
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    .line 175
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    .line 182
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    .line 187
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNeedToFullscreenTransition:Z

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayFrame:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotAdjustedBounds:Landroid/graphics/Rect;

    .line 197
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 200
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinimumFlingVelocity:I

    .line 202
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mMaximumFlingVelocity:I

    return-void
.end method

.method public static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .registers 2

    .line 876
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_b

    .line 877
    new-instance v0, Lcom/android/server/wm/TaskPositioner$2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$2;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 880
    :cond_b
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$register$0(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 447
    new-instance p1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    return-void
.end method

.method private synthetic lambda$startDrag$3(Landroid/graphics/Rect;)V
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    return-void
.end method

.method private synthetic lambda$toggleFreeformWindowingMode$4(Landroid/os/IBinder;)V
    .registers 2

    .line 1354
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendToggleFreeformTransaction(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$unregister$1(Lcom/android/server/wm/DexSnappingGuideWindow;)V
    .registers 3

    const-string v0, "TaskPositioner"

    const-string v1, "dismiss snapping window"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/android/server/wm/DexSnappingGuideWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$unregister$2()V
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz v0, :cond_16

    .line 510
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "TaskPositioner"

    const-string v1, "TaskPositioner unregister: dismiss guideWindow"

    .line 511
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz p0, :cond_16

    .line 514
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->dismiss()V

    :cond_16
    return-void
.end method

.method public static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .registers 1

    .line 872
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    return-void
.end method


# virtual methods
.method public addMovementToVelocityTracker(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    return-void

    .line 1190
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final adjustFreeformGuideSize()V
    .registers 11

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    .line 996
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    if-gt v1, v4, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 997
    :goto_1c
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    if-lt v4, v5, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v2

    .line 998
    :goto_29
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    if-lt v5, v6, :cond_35

    move v5, v3

    goto :goto_36

    :cond_35
    move v5, v2

    :goto_36
    if-eqz v0, :cond_50

    .line 1000
    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_47

    .line 1001
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    goto :goto_50

    .line 1003
    :cond_47
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    :cond_50
    :goto_50
    if-eqz v1, :cond_6b

    .line 1007
    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_62

    .line 1008
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    goto :goto_6b

    .line 1010
    :cond_62
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    :cond_6b
    :goto_6b
    if-eqz v4, :cond_85

    .line 1014
    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_7c

    .line 1015
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    goto :goto_85

    .line 1017
    :cond_7c
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    :cond_85
    :goto_85
    if-eqz v5, :cond_9c

    .line 1021
    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_95

    .line 1022
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    iput v8, v7, Landroid/graphics/Rect;->top:I

    goto :goto_9c

    .line 1024
    :cond_95
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1029
    :cond_9c
    :goto_9c
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 1030
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_ca

    .line 1032
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_c0

    .line 1033
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto :goto_c8

    .line 1035
    :cond_c0
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    :goto_c8
    move v6, v3

    goto :goto_cb

    :cond_ca
    move v6, v2

    :goto_cb
    if-eqz v0, :cond_d1

    if-eqz v1, :cond_d1

    move v0, v3

    goto :goto_d2

    :cond_d1
    move v0, v2

    :goto_d2
    if-eqz v4, :cond_d8

    if-eqz v5, :cond_d8

    move v1, v3

    goto :goto_d9

    :cond_d8
    move v1, v2

    :goto_d9
    if-nez v0, :cond_df

    if-nez v1, :cond_df

    if-eqz v6, :cond_e0

    :cond_df
    move v2, v3

    .line 1044
    :cond_e0
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->updateGuideState(I)Z

    return-void
.end method

.method public binderDied()V
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    return-void
.end method

.method public final canMovePosition()Z
    .registers 2

    .line 1363
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1369
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    goto :goto_1a

    :cond_12
    const/4 p0, 0x1

    goto :goto_1a

    .line 1373
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    :goto_1a
    return p0
.end method

.method public final checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public final detectFlingGesture()Z
    .registers 7

    .line 1201
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/16 v2, 0x3e8

    .line 1203
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1205
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v2, "TaskPositioner"

    if-eqz v0, :cond_49

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectFlingGesture: velocityX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " velocityY="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinimumFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 1210
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinimumFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_68

    goto :goto_69

    :cond_68
    return v1

    .line 1211
    :cond_69
    :goto_69
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_72

    const-string v0, "Fling gesture is detected."

    .line 1212
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_7e

    move v2, v3

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    if-eqz v2, :cond_8b

    .line 1216
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_97

    :cond_8b
    if-nez v2, :cond_98

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_98

    :cond_97
    return v1

    .line 1220
    :cond_98
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x442f0000    # 700.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_bf

    if-eqz v2, :cond_b0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, -0x1e

    if-lt v0, v4, :cond_be

    :cond_b0
    if-nez v2, :cond_bf

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p0, p0, 0x1e

    if-le v0, p0, :cond_bf

    :cond_be
    return v1

    :cond_bf
    return v3
.end method

.method public final endDragLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 668
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 669
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 672
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-nez v0, :cond_1b

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 674
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->getSaveFreeformBoundsCallback()Landroid/os/IRemoteCallback;

    move-result-object p0

    .line 673
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/FreeformController;->notifyFreeformTaskMoveEnded(Lcom/android/server/wm/Task;Landroid/os/IRemoteCallback;)V

    :cond_1b
    return-void
.end method

.method public final excludeNavigationBarGestureBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 764
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 765
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/4 v0, 0x5

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x6

    .line 768
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 769
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x4

    .line 770
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    .line 771
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v0, :cond_39

    .line 773
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 774
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_39
    if-eqz v1, :cond_45

    .line 776
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 777
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_45
    if-eqz p0, :cond_51

    .line 779
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 780
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_51
    return-void
.end method

.method public final getSaveFreeformBoundsCallback()Landroid/os/IRemoteCallback;
    .registers 2

    .line 681
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskPositioner$1;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    return-object v0
.end method

.method public getWindowDragBounds()Landroid/graphics/Rect;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public initOrResetVelocityTracker()V
    .registers 2

    .line 1179
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 1180
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 1182
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method public final minimizeIfNeeded(II)V
    .registers 13

    .line 1396
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1399
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v3

    .line 1400
    :goto_18
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    if-gt v1, v4, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    :goto_25
    if-eqz v0, :cond_e9

    if-eqz v1, :cond_e9

    .line 1402
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinimizeFreeformPadding:I

    add-int/2addr v4, v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 1407
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1408
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 p1, 0x31

    .line 1409
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "Freeform resize gesture"

    .line 1407
    invoke-interface/range {v4 .. v9}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    .line 1411
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz p1, :cond_69

    .line 1412
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->dismiss()V

    .line 1414
    :cond_69
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 1415
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 1416
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1417
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 1418
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 1419
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    .line 1417
    invoke-virtual {p2, v0, v3, v2, v1}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;ZII)Z

    .line 1420
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_72 .. :try_end_97} :catchall_9b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_e9

    :catchall_9b
    move-exception p0

    :try_start_9c
    monitor-exit p1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1422
    :cond_a1
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1423
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1424
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    .line 1426
    iget p2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_cf

    .line 1427
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_d6

    .line 1429
    :cond_cf
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_d6
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_e2

    .line 1432
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_e9

    .line 1434
    :cond_e2
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    :cond_e9
    :goto_e9
    return-void
.end method

.method public notifyMoveLocked(FF)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 698
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "TaskPositioner"

    if-eqz v0, :cond_28

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMoveLocked: {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4d

    .line 704
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyMoveLocked: mTask="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is detached."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 709
    :cond_4d
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 710
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 712
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz p1, :cond_5a

    return v1

    .line 717
    :cond_5a
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return v1

    .line 726
    :cond_60
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 734
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->isNavigationBarSideBottomGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 735
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragMoving()Z

    move-result v0

    if-nez v0, :cond_80

    .line 736
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskPositioner;->excludeNavigationBarGestureBounds(Landroid/graphics/Rect;)V

    .line 741
    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 758
    :cond_cc
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    return v1
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .registers 10

    .line 210
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_226

    .line 211
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_f

    goto/16 :goto_226

    .line 214
    :cond_f
    check-cast p1, Landroid/view/MotionEvent;

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    return v3

    .line 222
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v5, 0x3

    if-eqz p1, :cond_14e

    if-eq p1, v3, :cond_123

    if-eq p1, v2, :cond_5a

    if-eq p1, v5, :cond_2e

    goto/16 :goto_17c

    .line 292
    :cond_2e
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz p1, :cond_56

    const-string p1, "TaskPositioner"

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_CANCEL @ {"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_56
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto/16 :goto_17c

    .line 241
    :cond_5a
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz p1, :cond_82

    const-string p1, "TaskPositioner"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE @ {"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_82
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 245
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 247
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_11d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 250
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz p1, :cond_a1

    move p1, v3

    goto :goto_a2

    :cond_a1
    move p1, v1

    :goto_a2
    if-eqz p1, :cond_fa

    .line 252
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz p1, :cond_fa

    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p1

    if-nez p1, :cond_fa

    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartX:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mStartY:I

    .line 253
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 254
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz p1, :cond_cc

    .line 255
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->initialize(I)V

    goto :goto_d1

    .line 257
    :cond_cc
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->initialize()V

    .line 259
    :goto_d1
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17c

    .line 260
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE:Z

    if-eqz p1, :cond_e6

    .line 261
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mNotAdjustedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    :cond_e6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->adjustFreeformGuideSize()V

    .line 264
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE:Z

    if-eqz p1, :cond_f5

    float-to-int p1, v4

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->snapToFullscreenIfNeeded(I)V

    float-to-int v0, v0

    .line 266
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskPositioner;->minimizeIfNeeded(II)V

    .line 268
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->showFreeformGuideView()V

    goto/16 :goto_17c

    .line 272
    :cond_fa
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17c

    const-string/jumbo p1, "wm.TaskPositioner.resizeTask"

    const-wide/16 v6, 0x20

    .line 273
    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 277
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_17c

    :catchall_11d
    move-exception p0

    .line 247
    :try_start_11e
    monitor-exit p1
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 284
    :cond_123
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz p1, :cond_14b

    const-string p1, "TaskPositioner"

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP @ {"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_14b
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto :goto_17c

    :cond_14e
    float-to-int p1, v0

    .line 229
    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mStartX:I

    float-to-int p1, v4

    .line 230
    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mStartY:I

    .line 234
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz p1, :cond_17c

    const-string p1, "TaskPositioner"

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN @ {"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_17c
    :goto_17c
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    if-eqz p1, :cond_225

    .line 301
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_187
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 305
    monitor-exit v0
    :try_end_195
    .catchall {:try_start_187 .. :try_end_195} :catchall_21f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p1, :cond_1eb

    .line 306
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1eb

    .line 309
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1a9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v2, :cond_1bb

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1bb

    .line 311
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 312
    :cond_1bb
    monitor-exit p1
    :try_end_1bc
    .catchall {:try_start_1a9 .. :try_end_1bc} :catchall_1e5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 316
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE:Z

    if-eqz p1, :cond_1cb

    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mNeedToFullscreenTransition:Z

    if-eqz p1, :cond_1cb

    .line 317
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    goto :goto_1eb

    .line 318
    :cond_1cb
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p1

    if-nez p1, :cond_1d7

    .line 319
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->resizeFreeformTask()V

    goto :goto_1eb

    .line 324
    :cond_1d7
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_1eb

    :catchall_1e5
    move-exception p0

    .line 312
    :try_start_1e6
    monitor-exit p1
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 330
    :cond_1eb
    :goto_1eb
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE:Z

    if-eqz p1, :cond_217

    .line 331
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1f4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 333
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStopFreeformResize:Z

    if-nez v0, :cond_20d

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_206

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v0, :cond_206

    .line 335
    invoke-interface {v0, v1}, Landroid/view/IWindow;->freeformResizeGuideViewChanged(Z)V

    .line 337
    :cond_206
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStartFreeformResize:Z

    .line 338
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStopFreeformResize:Z
    :try_end_20a
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_20a} :catch_20d
    .catchall {:try_start_1f4 .. :try_end_20a} :catchall_20b

    goto :goto_20d

    :catchall_20b
    move-exception p0

    goto :goto_212

    .line 342
    :catch_20d
    :cond_20d
    :goto_20d
    :try_start_20d
    monitor-exit p1
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_20b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_217

    :goto_212
    :try_start_212
    monitor-exit p1
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_20b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 348
    :cond_217
    :goto_217
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    goto :goto_225

    :catchall_21f
    move-exception p0

    .line 305
    :try_start_220
    monitor-exit v0
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_225
    :goto_225
    return v3

    :cond_226
    :goto_226
    return v1
.end method

.method public final onMotionInputEvent(Landroid/view/InputEvent;)Z
    .registers 10

    .line 1053
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_17f

    .line 1054
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_f

    goto/16 :goto_17f

    .line 1057
    :cond_f
    check-cast p1, Landroid/view/MotionEvent;

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1a

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->recycleVelocityTracker()V

    return v3

    .line 1063
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 1065
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v5, :cond_55

    const-string v5, "TaskPositioner"

    .line 1066
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-static {v7}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_af

    if-eq v5, v3, :cond_9c

    if-eq v5, v2, :cond_66

    const/4 p1, 0x3

    if-eq v5, p1, :cond_63

    goto :goto_c3

    .line 1106
    :cond_63
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto :goto_c3

    .line 1080
    :cond_66
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 1081
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz p1, :cond_c3

    .line 1082
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1083
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 1084
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->canMovePosition()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskMotionController;->movePosition(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 1089
    :cond_91
    monitor-exit p1
    :try_end_92
    .catchall {:try_start_72 .. :try_end_92} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_c3

    :catchall_96
    move-exception p0

    :try_start_97
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1099
    :cond_9c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 1100
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz p1, :cond_ab

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->detectFlingGesture()Z

    move-result p1

    if-eqz p1, :cond_ab

    move p1, v3

    goto :goto_ac

    :cond_ab
    move p1, v1

    .line 1102
    :goto_ac
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto :goto_c4

    .line 1072
    :cond_af
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 1073
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->supportTaskMotion(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->initOrResetVelocityTracker()V

    :cond_c3
    :goto_c3
    move p1, v1

    .line 1110
    :goto_c4
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    if-eqz v0, :cond_17e

    .line 1111
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_cd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    if-eqz p1, :cond_ed

    .line 1114
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz v2, :cond_ed

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 1115
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskPositioner;->supportTaskMotion(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1116
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mVelocity:Landroid/graphics/PointF;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/TaskMotionController;->flingToSnapTarget(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/PointF;)V

    goto :goto_151

    .line 1118
    :cond_ed
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1119
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 1120
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 1121
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-nez v2, :cond_12d

    .line 1122
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z

    move-result v2

    .line 1123
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_124

    move v7, v3

    goto :goto_125

    :cond_124
    move v7, v1

    :goto_125
    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/android/server/wm/TaskMotionController;->stashToSnapTarget(Lcom/android/server/wm/Task;Landroid/graphics/Rect;ZZ)Z

    move-result v4

    if-eqz v2, :cond_12c

    goto :goto_12d

    :cond_12c
    move v1, v4

    :cond_12d
    :goto_12d
    if-nez v1, :cond_151

    .line 1134
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayPolicy;->setMovingFreeformTask(Lcom/android/server/wm/Task;)V

    const-string/jumbo v2, "wm.TaskPositioner.resizeTask"

    const-wide/16 v4, 0x20

    .line 1135
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1137
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 1139
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1145
    :cond_151
    :goto_151
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isDragMoving()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 1146
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->endDragMoving()V
    :try_end_15e
    .catchall {:try_start_cd .. :try_end_15e} :catchall_178

    :cond_15e
    if-nez p1, :cond_169

    if-nez v1, :cond_169

    .line 1151
    :try_start_162
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_169
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_169} :catch_169
    .catchall {:try_start_162 .. :try_end_169} :catchall_178

    .line 1155
    :catch_169
    :cond_169
    :try_start_169
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_178

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1159
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->recycleVelocityTracker()V

    goto :goto_17e

    :catchall_178
    move-exception p0

    .line 1155
    :try_start_179
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_17e
    :goto_17e
    return v3

    :cond_17f
    :goto_17f
    return v1
.end method

.method public recycleVelocityTracker()V
    .registers 2

    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    return-void

    .line 1196
    :cond_5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1197
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 4

    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Z)V
    .registers 10

    .line 369
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "TaskPositioner"

    if-eqz v0, :cond_b

    const-string v0, "Registering task positioner"

    .line 370
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_15

    const-string p0, "Task positioner already registered"

    .line 374
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez p3, :cond_4c

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    .line 384
    new-instance v0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 385
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 386
    invoke-virtual {v4}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    goto :goto_6a

    .line 389
    :cond_4c
    new-instance v0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 390
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 391
    invoke-virtual {v4}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 394
    :goto_6a
    new-instance v0, Landroid/view/InputApplicationHandle;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    sget v3, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 397
    new-instance v0, Landroid/view/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 398
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 399
    iput-object v1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x7e0

    iput v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 402
    sget v1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 403
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/4 v1, 0x4

    or-int/lit16 v1, v1, 0x100

    .line 410
    iput v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 415
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 418
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x2f2cdacf

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_c7
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->pause()V

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskPositioningController;->showInputSurface(I)V

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 425
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 426
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x3a

    .line 427
    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    const/16 v3, 0x20

    .line 428
    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Point;->set(II)V

    .line 431
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 436
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    .line 439
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x1

    .line 438
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    if-eqz p3, :cond_13c

    .line 443
    iget-object p3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_13c
    :try_start_13c
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 464
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_147} :catch_150

    .line 470
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 471
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-void

    .line 467
    :catch_150
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    return-void
.end method

.method public resizeDrag(FF)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 793
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget-boolean v9, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final resizeFreeformTask()V
    .registers 6

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 900
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 901
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 903
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 904
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 905
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_6b

    .line 907
    :try_start_2e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 908
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DexDockingController;->resizeOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 911
    :cond_47
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z
    :try_end_55
    .catchall {:try_start_2e .. :try_end_55} :catchall_5d

    .line 914
    :try_start_55
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    goto :goto_66

    :catchall_5d
    move-exception v1

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 915
    throw v1

    .line 918
    :cond_66
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6b
    move-exception p0

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final resizeTaskForDex()V
    .registers 7

    .line 1284
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    if-nez v0, :cond_5

    return-void

    .line 1289
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2c

    .line 1290
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexCompatUiFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    goto :goto_5c

    .line 1293
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    if-eq v0, v3, :cond_24

    if-ne v0, v1, :cond_5b

    :cond_24
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnapType:I

    if-ne v0, v1, :cond_5b

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    goto :goto_5b

    .line 1298
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1299
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iput v2, v0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    .line 1300
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    .line 1302
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5c

    .line 1304
    :cond_4a
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnapType:I

    if-ne v0, v1, :cond_52

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    goto :goto_5c

    :cond_52
    if-eqz v0, :cond_5b

    .line 1308
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5b
    :goto_5b
    move v2, v3

    :goto_5c
    if-eqz v2, :cond_f0

    .line 1313
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1314
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1315
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 1319
    :cond_7f
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1320
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_af

    .line 1321
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_af

    .line 1322
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->offset(II)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 1326
    :cond_af
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 1327
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_e1

    .line 1328
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnapType:I

    if-ne v0, v3, :cond_c1

    move-object v2, v1

    goto :goto_c3

    :cond_c1
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    :goto_c3
    if-ne v0, v3, :cond_c7

    .line 1329
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 1330
    :cond_c7
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mVisibleFrame:Landroid/graphics/Rect;

    .line 1331
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1330
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wm/DexDockingController;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1332
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexDockingController;->setCandidateTask(Lcom/android/server/wm/Task;)V

    .line 1334
    :cond_e1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DexController;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    :cond_f0
    return-void
.end method

.method public showFreeformGuideView()V
    .registers 4

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mNeedToFullscreenTransition:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;Z)V

    .line 1442
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1444
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStartFreeformResize:Z

    if-nez v0, :cond_2a

    .line 1445
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v0, :cond_25

    .line 1446
    invoke-interface {v0, v1}, Landroid/view/IWindow;->freeformResizeGuideViewChanged(Z)V

    .line 1448
    :cond_25
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStartFreeformResize:Z

    const/4 v0, 0x0

    .line 1449
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mNotifyStopFreeformResize:Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    return-void
.end method

.method public final showSnappingGuide(Landroid/view/MotionEvent;)V
    .registers 13

    .line 1233
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    if-nez v0, :cond_5

    return-void

    .line 1236
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 1237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 1239
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpDisplaySize:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 1240
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1a

    move v4, v5

    .line 1239
    :cond_1a
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/wm/DexSnappingGuideWindow;->getSnapType(FFLandroid/graphics/Rect;Z)I

    move-result p1

    .line 1252
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnapType:I

    if-ne p1, v0, :cond_2b

    return-void

    .line 1256
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1259
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_86

    if-nez p1, :cond_62

    .line 1261
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getSnappingGuideBounds(Landroid/graphics/Rect;)V

    .line 1262
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DexSnappingGuideWindow;->calculateGuideSize(FFILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1264
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1265
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexSnappingGuideWindow;->show(Landroid/graphics/Rect;)V

    goto :goto_a9

    :cond_62
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_6a

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_a9

    .line 1267
    :cond_6a
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 1268
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v10, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move v6, p1

    .line 1267
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DexSnappingGuideWindow;->calculateGuideSize(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DexSnappingGuideWindow;->show(Landroid/graphics/Rect;I)V

    goto :goto_a9

    :cond_86
    if-nez p1, :cond_8e

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DexSnappingGuideWindow;->dismiss()V

    goto :goto_a9

    .line 1275
    :cond_8e
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v10, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move v6, p1

    .line 1275
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DexSnappingGuideWindow;->calculateGuideSize(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DexSnappingGuideWindow;->show(Landroid/graphics/Rect;I)V

    .line 1280
    :cond_a9
    :goto_a9
    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnapType:I

    return-void
.end method

.method public final snapToFullscreenIfNeeded(I)V
    .registers 5

    .line 1381
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1384
    :cond_9
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p1, v0, :cond_28

    .line 1385
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideViewFullscreenMargin:I

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 1389
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mNeedToFullscreenTransition:Z

    goto :goto_2b

    :cond_28
    const/4 p1, 0x0

    .line 1391
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mNeedToFullscreenTransition:Z

    :goto_2b
    return-void
.end method

.method public startDrag(ZZFF)V
    .registers 10

    .line 552
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_43

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDrag: win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preserveOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskPositioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz v0, :cond_55

    if-nez p1, :cond_55

    .line 562
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskMotionController;->getStartBounds(Landroid/graphics/Rect;)V

    .line 564
    :cond_55
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE:Z

    if-eqz v0, :cond_8e

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 567
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideViewFullscreenMargin:I

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinimizeFreeformPadding:I

    .line 576
    :cond_8e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    if-nez p1, :cond_98

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 580
    :cond_98
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    :cond_9d
    const/4 v1, 0x0

    .line 584
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 585
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 586
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 587
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 592
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/16 v2, 0x8

    .line 593
    invoke-static {v2, p2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    const/4 v4, 0x7

    .line 594
    invoke-static {v4, p2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p2

    add-int/2addr p2, v3

    .line 595
    invoke-virtual {v0, v3, p2, v3, v3}, Landroid/graphics/Rect;->inset(IIII)V

    const/4 v4, 0x1

    if-eqz p1, :cond_f9

    .line 600
    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_ca

    .line 601
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 603
    :cond_ca
    iget p1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_d7

    .line 604
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 606
    :cond_d7
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_e4

    .line 607
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 609
    :cond_e4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_f0

    .line 610
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 612
    :cond_f0
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz p1, :cond_f6

    move p1, v4

    goto :goto_f7

    :cond_f6
    move p1, v1

    :goto_f7
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    :cond_f9
    neg-int p1, v3

    neg-int p2, p2

    .line 617
    invoke-virtual {v0, p1, p2, p1, p1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 625
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-lt p1, p2, :cond_109

    move v1, v4

    :cond_109
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 628
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->updateMinMaxSize()V

    .line 631
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 636
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz p1, :cond_11a

    .line 637
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 653
    :cond_11a
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 656
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-nez p1, :cond_130

    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz p1, :cond_130

    .line 657
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/wm/TaskMotionController;->prepareMotion(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 659
    :cond_130
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-nez p1, :cond_14b

    .line 660
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->startDragMoving()V

    .line 661
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    new-instance p2, Landroid/graphics/Point;

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-direct {p2, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/FreeformController;->notifyFreeformTaskMoveStarted(Lcom/android/server/wm/Task;Landroid/graphics/Point;)V

    :cond_14b
    return-void
.end method

.method public final supportTaskMotion(Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 1166
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1167
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .registers 1

    const-string p0, "TaskPositioner"

    return-object p0
.end method

.method public final toggleFreeformWindowingMode()V
    .registers 3

    .line 1343
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1344
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1346
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1350
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_23

    .line 1356
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    .line 1350
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregister()V
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    if-eqz v0, :cond_9

    .line 478
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskMotionController;->finishMotion(Lcom/android/server/wm/Task;)V

    .line 480
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->recycleVelocityTracker()V

    .line 483
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "TaskPositioner"

    if-eqz v0, :cond_17

    const-string v0, "Unregistering task positioner"

    .line 484
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_21

    const-string p0, "Task positioner not registered"

    .line 501
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 507
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz v0, :cond_31

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskPositioningController;->hideInputSurface(I)V

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 527
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 528
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 530
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 531
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    const/4 v1, 0x1

    .line 532
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 535
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 538
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x54cdeb55

    invoke-static {v1, v3, v2, v0, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :cond_77
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 540
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    if-eqz v1, :cond_89

    .line 542
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 544
    :cond_89
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public final updateDraggedBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 801
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateMinMaxSize()V
    .registers 6

    .line 922
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 927
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050132

    .line 928
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 930
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 932
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v1, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 933
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 935
    :cond_28
    iget v1, v1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eq v1, v3, :cond_2e

    .line 936
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 938
    :cond_2e
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 939
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 940
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 941
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    .line 942
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 944
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    .line 946
    :cond_57
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mMaxWidth:I

    if-ltz v2, :cond_69

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v2, v4, :cond_64

    goto :goto_69

    .line 947
    :cond_64
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mMaxWidth:I

    goto :goto_6d

    :cond_69
    :goto_69
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_6d
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 948
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-ltz v2, :cond_81

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_7c

    goto :goto_81

    .line 949
    :cond_7c
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto :goto_85

    :cond_81
    :goto_81
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_85
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 950
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 951
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 953
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 954
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 956
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 955
    invoke-virtual {v2, v4, v1, v0}, Lcom/android/server/wm/DexDockingController;->calculateMaxWidth(Lcom/android/server/wm/Task;II)I

    move-result v0

    if-eq v0, v3, :cond_c1

    .line 958
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 962
    :cond_c1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_e9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d9

    goto :goto_eb

    .line 972
    :cond_d9
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v0, :cond_df

    move v0, v2

    goto :goto_e0

    :cond_df
    move v0, v3

    .line 974
    :goto_e0
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    goto :goto_eb

    .line 965
    :cond_e3
    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const/4 v0, 0x0

    .line 966
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    goto :goto_eb

    .line 969
    :cond_e9
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    .line 978
    :goto_eb
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const v1, 0x3f99999a    # 1.2f

    if-ne v0, v3, :cond_101

    .line 979
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 980
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    goto :goto_111

    :cond_101
    if-ne v0, v2, :cond_111

    .line 982
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 983
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 986
    :cond_111
    :goto_111
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_159

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDrag: mTaskOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Min=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Max=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskPositioner"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_159
    return-void
.end method

.method public final updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 10

    int-to-float p1, p1

    .line 833
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    .line 834
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 837
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v0, v1

    .line 838
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v2, v1

    .line 842
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 843
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr p3, v3

    .line 845
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 846
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 848
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_54

    .line 850
    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_5a

    .line 853
    :cond_54
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v5, v3

    .line 855
    :goto_5a
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 859
    :cond_5e
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    .line 860
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    .line 861
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 859
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 863
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz p1, :cond_9a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateWindowDragBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskPositioner"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return-void
.end method
