.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field public static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field public static final LOG_TAG:Ljava/lang/String; = "FullScreenMagnificationController"

.field public static final MAGNIFICATION_FADE_ANIMATION_DURATION:I = 0x3e8

.field public static final MAX_ALPHA:I = 0xff

.field public static final MIN_ALPHA:I = 0x0

.field public static SEC_DEBUG:Z = false


# instance fields
.field public final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplays:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

.field public final mMainThreadId:J

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

.field public final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMagnificationInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMainThreadId(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->logTrace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monScreenTurnedOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->traceEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterCallbackLocked(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSEC_DEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->SEC_DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 14

    .line 843
    new-instance v7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 844
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 845
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 846
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    .line 843
    invoke-direct {p0, v7, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 858
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 859
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 860
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 861
    new-instance p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 862
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 863
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 864
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method

.method public static transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .registers 1

    if-eqz p0, :cond_5

    .line 1789
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method


# virtual methods
.method public getCenterX(I)F
    .registers 3

    .line 1093
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1096
    monitor-exit v0

    return p0

    .line 1098
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1099
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getCenterY(I)F
    .registers 3

    .line 1127
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1130
    monitor-exit v0

    return p0

    .line 1132
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1133
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 3

    .line 1312
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, -0x1

    .line 1315
    monitor-exit v0

    return p0

    .line 1317
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1318
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .registers 4

    .line 1024
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_f

    .line 1027
    monitor-exit v0

    return-void

    .line 1029
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 1030
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 4

    .line 1042
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_f

    .line 1045
    monitor-exit v0

    return-void

    .line 1047
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 1048
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getOffsetX(I)F
    .registers 3

    .line 1076
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1079
    monitor-exit v0

    return p0

    .line 1081
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1082
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getOffsetY(I)F
    .registers 3

    .line 1110
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1113
    monitor-exit v0

    return p0

    .line 1115
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1116
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getPersistedScale(I)F
    .registers 2

    .line 1337
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result p0

    return p0
.end method

.method public getScale(I)F
    .registers 3

    .line 1059
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1062
    monitor-exit v0

    return p0

    .line 1064
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 1065
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public isForceShowMagnifiableBounds(I)Z
    .registers 3

    .line 1422
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1425
    monitor-exit v0

    return p0

    .line 1427
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isForceShowMagnifiableBounds()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1428
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isMagnificationFollowTypingEnabled()Z
    .registers 1

    .line 946
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    return p0
.end method

.method public isMagnifying(I)Z
    .registers 3

    .line 985
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 988
    monitor-exit v0

    return p0

    .line 990
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 991
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isRegistered(I)Z
    .registers 3

    .line 970
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 973
    monitor-exit v0

    return p0

    .line 975
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 976
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final logTrace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1496
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManagerInternal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public magnificationRegionContains(IFF)Z
    .registers 5

    .line 1005
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1008
    monitor-exit v0

    return p0

    .line 1010
    :cond_10
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1011
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyImeWindowVisibilityChanged(IZ)V
    .registers 3

    .line 1413
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onImeWindowVisibilityChanged(IZ)V

    return-void
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .registers 6

    .line 1286
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_f

    .line 1289
    monitor-exit v0

    return-void

    .line 1291
    :cond_f
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 1292
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 955
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 956
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 957
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .registers 8

    .line 921
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    if-nez v1, :cond_9

    .line 923
    monitor-exit v0

    return-void

    .line 925
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p1, :cond_15

    .line 927
    monitor-exit v0

    return-void

    .line 929
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 930
    monitor-exit v0

    return-void

    .line 932
    :cond_1d
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 933
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 934
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 935
    monitor-exit v0

    return-void

    .line 937
    :cond_2a
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onRectangleOnScreenRequested(IIII)V

    .line 938
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final onScreenTurnedOff()V
    .registers 3

    .line 1432
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;-><init>()V

    .line 1433
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1432
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1434
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public persistScale(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1325
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1326
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    return-void
.end method

.method public register(I)V
    .registers 5

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v1, :cond_12

    .line 880
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V

    .line 882
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 883
    monitor-exit v0

    return-void

    .line 885
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 886
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 889
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 4

    .line 1162
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1165
    monitor-exit v0

    return p0

    .line 1167
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 1168
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public reset(IZ)Z
    .registers 3

    if-eqz p2, :cond_5

    .line 1147
    sget-object p2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public resetAllIfNeeded(I)V
    .registers 5

    .line 1346
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1347
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1348
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1350
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public resetAllIfNeeded(Z)V
    .registers 5

    .line 1442
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1443
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1444
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1446
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public resetIfNeeded(II)Z
    .registers 4

    .line 1379
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_20

    .line 1381
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result p1

    if-eq p2, p1, :cond_1a

    goto :goto_20

    :cond_1a
    const/4 p1, 0x1

    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1386
    monitor-exit v0

    return p1

    :cond_20
    :goto_20
    const/4 p0, 0x0

    .line 1383
    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    .line 1387
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public resetIfNeeded(IZ)Z
    .registers 4

    .line 1361
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_1a

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 1366
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    const/4 p0, 0x1

    .line 1367
    monitor-exit v0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    .line 1364
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 1368
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setCenter(IFFZI)Z
    .registers 13

    .line 1213
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v1, :cond_11

    const/4 p0, 0x0

    .line 1216
    monitor-exit v0

    return p0

    :cond_11
    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz p4, :cond_18

    .line 1219
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    move-object v5, p0

    move v3, p2

    move v4, p3

    move v6, p5

    .line 1218
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    .line 1220
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public setForceShowMagnifiableBounds(IZ)V
    .registers 8

    .line 1391
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p1, :cond_f

    .line 1394
    monitor-exit v0

    return-void

    :cond_f
    if-eqz p2, :cond_2d

    .line 1397
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_magnification_activated"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1399
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1401
    :cond_2d
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setForceShowMagnifiableBounds(Z)V

    .line 1402
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2

    .line 942
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setScale(IFFFZI)Z
    .registers 14

    .line 1188
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v1, :cond_11

    const/4 p0, 0x0

    .line 1191
    monitor-exit v0

    return p0

    :cond_11
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1193
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScale(FFFZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 1194
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setScaleAndCenter(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 14

    .line 1265
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v1, :cond_11

    const/4 p0, 0x0

    .line 1268
    monitor-exit v0

    return p0

    :cond_11
    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 1270
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 1271
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .registers 14

    .line 1243
    invoke-static {p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 1242
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0
.end method

.method public setSecDebug(Z)V
    .registers 2

    .line 1501
    sput-boolean p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->SEC_DEBUG:Z

    return-void
.end method

.method public setThumbNailVisible(IZ)V
    .registers 4

    .line 1296
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1297
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_f

    .line 1299
    monitor-exit v0

    return-void

    .line 1301
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setThumbNailVisible(Z)V

    .line 1302
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationController["

    .line 1507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplays="

    .line 1508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleProvider="

    .line 1509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 1510
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final traceEnabled()Z
    .registers 3

    .line 1491
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p0

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public unregister(I)V
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 900
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 901
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public unregisterAll()V
    .registers 6

    .line 908
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 912
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 913
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 915
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final unregisterCallbackLocked(IZ)V
    .registers 4

    if-eqz p2, :cond_7

    .line 1474
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    const/4 p1, 0x0

    move p2, p1

    .line 1478
    :goto_9
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 1479
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1480
    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_23
    :goto_23
    if-nez p2, :cond_2a

    .line 1486
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->unregister()V

    :cond_2a
    return-void
.end method

.method public final unregisterLocked(IZ)V
    .registers 5

    .line 1450
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v0, :cond_b

    return-void

    .line 1454
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz p2, :cond_18

    .line 1456
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_18
    return-void

    .line 1460
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p0

    if-nez p0, :cond_23

    .line 1461
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_26

    .line 1463
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregisterPending(Z)V

    :goto_26
    return-void
.end method
