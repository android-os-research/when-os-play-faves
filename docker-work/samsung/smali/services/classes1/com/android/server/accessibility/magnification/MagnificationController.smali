.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;,
        Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static SEC_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MagnificationController"


# instance fields
.field public final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationCapabilities:I

.field public final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mSupportWindowMagnification:Z

.field public final mTempPoint:Landroid/graphics/PointF;

.field public final mTransitionModes:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field public mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

.field public final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationButton(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSEC_DEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    .line 168
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 169
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 106
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 108
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 112
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 114
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 116
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 125
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 128
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 148
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 149
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 150
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 151
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 152
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 153
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->setUiChangesForAccessibilityCallbacks(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    .line 155
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    return-void
.end method


# virtual methods
.method public final assignMagnificationWindowManagerDelegateByMode(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 401
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 402
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    .line 401
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    .line 404
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 406
    :cond_1a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :goto_1f
    return-void
.end method

.method public final disableFullScreenMagnificationIfNeeded(I)V
    .registers 6

    .line 524
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 527
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    if-nez v1, :cond_17

    .line 528
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 530
    :cond_17
    invoke-virtual {v0, p1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    :cond_1a
    return-void
.end method

.method public final disableWindowMagnificationIfNeeded(I)V
    .registers 4

    .line 561
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 562
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    .line 563
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    :cond_f
    return-void
.end method

.method public final getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_22

    .line 754
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz p2, :cond_21

    .line 755
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_21

    .line 758
    :cond_f
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 759
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterY(I)F

    move-result p1

    .line 758
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3e

    :cond_21
    :goto_21
    return-object v0

    .line 761
    :cond_22
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p2, :cond_41

    .line 762
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_41

    .line 765
    :cond_2d
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 766
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result p1

    .line 765
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 768
    :goto_3e
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object p0

    :cond_41
    :goto_41
    return-object v0
.end method

.method public final getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .registers 2

    .line 685
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object p0
.end method

.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .registers 9

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v1, :cond_1c

    .line 719
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 720
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v2, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 722
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_20

    .line 723
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object p0

    :catchall_20
    move-exception p0

    .line 722
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getLastMagnificationActivatedMode(I)I
    .registers 4

    .line 581
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 584
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getTargetModeScaleFromCurrentMagnification(II)F
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 370
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result p0

    return p0

    .line 372
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result p0

    return p0
.end method

.method public getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .registers 9

    .line 742
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v1, :cond_1c

    .line 744
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 745
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 748
    :cond_1c
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 749
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final handleUserInteractionChanged(II)V
    .registers 5

    .line 194
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    return-void

    .line 197
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 198
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    :cond_13
    return-void
.end method

.method public hasDisableMagnificationCallback(I)Z
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    .line 386
    monitor-exit v0

    return p0

    .line 388
    :cond_c
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isActivated(II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_23

    .line 782
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_7
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez p2, :cond_d

    .line 784
    monitor-exit v2

    return v1

    .line 786
    :cond_d
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isForceShowMagnifiableBounds(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 789
    :cond_1d
    :goto_1d
    monitor-exit v2

    move v1, v0

    goto :goto_38

    :catchall_20
    move-exception p0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 791
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 792
    :try_start_29
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez p0, :cond_2f

    .line 793
    monitor-exit p2

    return v1

    .line 795
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    .line 796
    monitor-exit p2

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return v1
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 733
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public logMagnificationModeWithIme(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 607
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    return-void
.end method

.method public final logMagnificationModeWithImeOnIfNeeded(I)V
    .registers 6

    .line 700
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 703
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_1a

    if-nez v1, :cond_15

    goto :goto_1a

    .line 707
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    .line 708
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    return-void

    .line 705
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    .line 707
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public logMagnificationUsageState(IJ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 596
    invoke-static {p1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJ)V

    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .registers 3

    const/4 v0, 0x2

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .registers 3

    .line 464
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 647
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_a

    .line 649
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    .line 651
    :cond_a
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_11

    .line 652
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->onDisplayRemoved(I)V

    .line 654
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 655
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 656
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 657
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 658
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2c

    .line 659
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onDisplayRemoved(I)V

    return-void

    :catchall_2c
    move-exception p0

    .line 658
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public onFullScreenMagnificationActivationState(IZ)V
    .registers 8

    const/4 v0, 0x1

    if-eqz p2, :cond_22

    .line 537
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 538
    :try_start_6
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 539
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 541
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    monitor-exit p2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1f

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableWindowMagnificationIfNeeded(I)V

    goto :goto_38

    :catchall_1f
    move-exception p0

    .line 543
    :try_start_20
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 548
    :cond_22
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 549
    :try_start_26
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 552
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 553
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3c

    .line 554
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    .line 556
    :goto_38
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void

    :catchall_3c
    move-exception p0

    .line 553
    :try_start_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 483
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_c
    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 571
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 572
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->onImeWindowVisibilityChanged(IZ)V

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    return-void

    :catchall_14
    move-exception p0

    .line 571
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onPerformScaleAction(IF)V
    .registers 4

    .line 174
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScale(IF)V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->persistScale(I)V

    return-void
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .registers 13

    .line 415
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    .line 417
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_17

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 419
    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIII)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 417
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onRequestMagnificationSpec(II)V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_7

    .line 428
    :try_start_5
    monitor-exit v0

    return-void

    :cond_7
    const/4 p2, 0x1

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 431
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 432
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    if-eqz p0, :cond_14

    const/4 p2, 0x0

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 432
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x2

    .line 469
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 470
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 471
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 473
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v0

    .line 475
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_3a
    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .registers 3

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    return-void
.end method

.method public onTouchInteractionStart(II)V
    .registers 3

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 666
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserRemoved(I)V

    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .registers 8

    const/4 v0, 0x2

    if-eqz p2, :cond_22

    .line 441
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 442
    :try_start_6
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 443
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 445
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    monitor-exit p2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1f

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_38

    :catchall_1f
    move-exception p0

    .line 447
    :try_start_20
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 452
    :cond_22
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 453
    :try_start_26
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 456
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3c

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    .line 459
    :goto_38
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void

    :catchall_3c
    move-exception p0

    .line 456
    :try_start_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final setCurrentMagnificationModeAndSwitchDelegate(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->assignMagnificationWindowManagerDelegateByMode(II)V

    return-void
.end method

.method public final setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .registers 4

    .line 690
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    sget-boolean p0, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    if-eqz p0, :cond_28

    .line 692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDisableMagnificationCallbackLocked displayId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callback = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MagnificationController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public setMagnificationCapabilities(I)V
    .registers 2

    .line 670
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 3

    .line 679
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setMagnificationFollowTypingEnabled(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    return-void
.end method

.method public setSecDebug(Z)V
    .registers 2

    .line 218
    sput-boolean p1, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    return-void
.end method

.method public final setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_d

    if-nez p1, :cond_d

    .line 359
    :try_start_7
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_16

    .line 361
    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    :goto_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final shouldNotifyMagnificationChange(II)Z
    .registers 8

    .line 500
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 502
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    .line 503
    :goto_12
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v4, :cond_1e

    .line 504
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 505
    :goto_1f
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-ne p2, v3, :cond_2b

    if-nez v1, :cond_30

    :cond_2b
    const/4 p1, 0x2

    if-ne p2, p1, :cond_34

    if-eqz v4, :cond_34

    :cond_30
    if-nez p0, :cond_34

    .line 509
    monitor-exit v0

    return v3

    :cond_34
    if-nez v1, :cond_3c

    if-nez v4, :cond_3c

    if-nez p0, :cond_3c

    .line 513
    monitor-exit v0

    return v3

    :cond_3c
    if-eqz p0, :cond_46

    .line 515
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_46

    .line 516
    monitor-exit v0

    return v3

    .line 518
    :cond_46
    monitor-exit v0

    return v2

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public supportWindowMagnification()Z
    .registers 1

    .line 224
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    return p0
.end method

.method public transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V
    .registers 16

    .line 293
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "MagnificationController"

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionMagnificationConfigMode displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_26
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v1

    .line 299
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v2

    .line 300
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v4

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz v2, :cond_62

    .line 302
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 303
    iget v4, v2, Landroid/graphics/PointF;->x:F

    goto :goto_4e

    .line 304
    :cond_4a
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v4

    .line 305
    :goto_4e
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 306
    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_5f

    .line 307
    :cond_5b
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    .line 308
    :goto_5f
    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 312
    :cond_62
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string v4, "MagnificationController"

    const-string v5, "Discard previous animation request"

    .line 314
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 318
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    .line 319
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v4

    .line 320
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 321
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result p2

    goto :goto_8d

    .line 322
    :cond_89
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result p2
    :try_end_8d
    .catchall {:try_start_26 .. :try_end_8d} :catchall_df

    :goto_8d
    move v6, p2

    const/4 p2, 0x0

    .line 324
    :try_start_8f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v5, 0x2

    const/4 v7, 0x0

    if-ne v1, v5, :cond_b2

    .line 327
    invoke-virtual {v2, p1, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 328
    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_ab

    .line 330
    sget-object p3, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    move-object v9, p3

    goto :goto_ac

    :cond_ab
    move-object v9, p2

    :goto_ac
    move v5, p1

    move v10, p4

    .line 328
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    goto :goto_cd

    :cond_b2
    const/4 v5, 0x1

    if-ne v1, v5, :cond_cd

    .line 332
    invoke-virtual {v4, p1, v7, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 333
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 334
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 336
    :cond_c1
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    move-object v1, v2

    move v2, p1

    move v3, v6

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z
    :try_end_cd
    .catchall {:try_start_8f .. :try_end_cd} :catchall_d6

    .line 342
    :cond_cd
    :goto_cd
    :try_start_cd
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 344
    monitor-exit v0

    return-void

    :catchall_d6
    move-exception p3

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 343
    throw p3

    :catchall_df
    move-exception p0

    .line 344
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_cd .. :try_end_e1} :catchall_df

    throw p0
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .registers 15

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v6

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v6, :cond_11

    if-nez v0, :cond_11

    .line 242
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    :cond_11
    const-string v2, "MagnificationController"

    if-eqz v0, :cond_25

    .line 247
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->-$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result p0

    if-ne p0, p2, :cond_1f

    .line 248
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    return-void

    :cond_1f
    const-string p0, "discard duplicate request"

    .line 251
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    if-nez v6, :cond_30

    const-string p0, "Invalid center, ignore it"

    .line 257
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 262
    :cond_30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v8

    .line 266
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v9

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v5

    .line 268
    new-instance v10, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_59

    .line 272
    invoke-virtual {v8, p1, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_5d

    :cond_59
    const/4 p2, 0x0

    .line 274
    invoke-virtual {v9, p1, p2, v10}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 277
    :goto_5d
    invoke-virtual {p0, p1, v10}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method public final updateMagnificationButton(II)V
    .registers 6

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_12

    .line 206
    :try_start_9
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_26

    :cond_12
    const/4 v0, 0x0

    .line 208
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_10

    if-eqz v0, :cond_1e

    .line 210
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    goto :goto_25

    .line 212
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    :goto_25
    return-void

    .line 208
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_10

    throw p0
.end method

.method public updateUserIdIfNeeded(I)V
    .registers 6

    .line 617
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_5

    return-void

    .line 620
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 623
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 625
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 626
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 627
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 628
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 629
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 630
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_34

    .line 632
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserChanged(I)V

    if-eqz v1, :cond_2e

    const/4 p0, 0x0

    .line 634
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    :cond_2e
    if-eqz v2, :cond_33

    .line 637
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableAllWindowMagnifiers()V

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 630
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method
