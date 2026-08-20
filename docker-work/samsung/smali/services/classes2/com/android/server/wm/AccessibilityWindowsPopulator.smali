.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator;
.super Landroid/window/WindowInfosListener;
.source "AccessibilityWindowsPopulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;,
        Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;
    }
.end annotation


# static fields
.field public static final SURFACE_FLINGER_CALLBACK_WINDOWS_STABLE_TIMES_MS:I = 0x23

.field public static final TAG:Ljava/lang/String;

.field public static final WINDOWS_CHANGED_NOTIFICATION_MAX_DURATION_TIMES_MS:I = 0x1f4

.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field public final mCurrentMagnificationSpec:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayInfos:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreviousMagnificationSpec:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempFloat1:[F

.field public final mTempFloat2:[F

.field public final mTempFloat3:[F

.field public final mTempMatrix1:Landroid/graphics/Matrix;

.field public final mTempMatrix2:Landroid/graphics/Matrix;

.field public final mVisibleWindows:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowsNotificationEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mWindowsTransformMatrixMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HdjT-v-zZzVJXmnk_kJrQCg9LLc(Lcom/android/server/wm/AccessibilityWindowsPopulator;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->lambda$onWindowInfosChanged$0([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->forceUpdateWindows()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsTempFloats()[F
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 57
    const-class v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 66
    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V
    .registers 5

    .line 96
    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 91
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    new-array v1, v0, [F

    .line 92
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    new-array v0, v0, [F

    .line 93
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 99
    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 508
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 510
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 511
    invoke-static {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 515
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t inverse the magnification spec matrix with the magnification spec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :cond_2a
    return-void
.end method

.method public static getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 305
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 306
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 307
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 309
    invoke-static {v2, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public static hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3d

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_e

    goto :goto_3d

    .line 322
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_3c

    .line 327
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputWindowHandle;

    .line 328
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputWindowHandle;

    .line 330
    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    return v0

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_3c
    return v2

    :cond_3d
    :goto_3d
    return v0
.end method

.method private synthetic lambda$onWindowInfosChanged$0([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 3

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public static transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 525
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 526
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public final computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 463
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 464
    invoke-static {p2, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 466
    new-instance p2, Landroid/graphics/Matrix;

    iget-object p1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct {p2, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 467
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 468
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 470
    invoke-virtual {p2, p4}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method public final findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 344
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 345
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 347
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    if-nez v3, :cond_1c

    goto :goto_47

    .line 351
    :cond_1c
    new-instance v4, Landroid/view/MagnificationSpec;

    invoke-direct {v4}, Landroid/view/MagnificationSpec;-><init>()V

    .line 352
    invoke-virtual {v4, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 354
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    if-nez v3, :cond_3c

    .line 357
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 358
    invoke-static {v4, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 359
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_47

    .line 362
    :cond_3c
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 363
    invoke-virtual {v1, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 365
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4a
    return-void
.end method

.method public final forceUpdateWindows()V
    .registers 5

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 542
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 543
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 546
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_26

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void

    :catchall_26
    move-exception p0

    .line 546
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_25

    .line 378
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 379
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 380
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 382
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 383
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    goto :goto_25

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_25
    :goto_25
    return-void
.end method

.method public final generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 423
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 426
    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 429
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 430
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 432
    invoke-static {p2, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 438
    iget-object p3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 439
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 440
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    iget p3, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 441
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 445
    :cond_34
    invoke-static {p3, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 449
    :cond_37
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 394
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 399
    :cond_10
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;)",
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 194
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 195
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 196
    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 195
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    if-eqz v3, :cond_11

    .line 198
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 199
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    sget-object v5, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 201
    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 205
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_52
    move-exception p0

    .line 206
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyWindowsChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 532
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 533
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 534
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 533
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 9

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_27

    aget-object v4, p1, v3

    .line 158
    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_14

    const/4 v5, 0x1

    goto :goto_15

    :cond_14
    move v5, v2

    :goto_15
    if-eqz v5, :cond_24

    .line 159
    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v5

    if-eqz v5, :cond_24

    iget-boolean v5, v4, Landroid/view/InputWindowHandle;->isClone:Z

    if-nez v5, :cond_24

    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 164
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 168
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 171
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 174
    array-length p1, p2

    :goto_48
    if-ge v2, p1, :cond_56

    aget-object v0, p2, v2

    .line 175
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    iget v4, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 178
    :cond_56
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_6d

    .line 179
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 180
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V

    .line 186
    :cond_6d
    monitor-exit v1

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_2e .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public final populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 265
    iget v3, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2b

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget v4, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    :cond_2b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 274
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 281
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    .line 282
    :goto_42
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 283
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 284
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 287
    :cond_5a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_72

    .line 289
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_72
    return-void

    .line 295
    :cond_73
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;",
            ">;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1c

    .line 118
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 120
    monitor-exit v2

    return-void

    .line 122
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 124
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowInfosListener$DisplayInfo;

    if-eqz v4, :cond_37

    .line 126
    iget-object v4, v4, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_52

    .line 128
    :cond_37
    sget-object v4, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The displayInfo of this displayId ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") called back from the surface fligner is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_87

    .line 133
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 134
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ShellRoot;

    if-eqz p1, :cond_6b

    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getAccessibilityWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_6c

    :cond_6b
    const/4 p1, 0x0

    .line 138
    :goto_6c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputWindowHandle;

    .line 139
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 140
    invoke-static {v4, v3, v0, p1, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    move-result-object v3

    .line 143
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_86
    return-void

    :catchall_87
    move-exception p0

    .line 131
    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public final releaseResources()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 481
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 482
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    .line 484
    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 486
    aget v2, p0, v0

    aget v3, p2, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x2

    .line 488
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 490
    aget v5, p0, v3

    aget v3, p2, v3

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v5, 0x5

    .line 492
    aget v6, p0, v5

    aget p1, p1, v5

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 494
    aget p0, p0, v5

    aget p2, p2, v5

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr v4, p1

    add-float/2addr v3, p0

    .line 501
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_54

    .line 502
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_55

    .line 503
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_55

    :cond_54
    const/4 v0, 0x1

    :cond_55
    return v0
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    if-nez v1, :cond_1c

    .line 243
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 244
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    monitor-exit v0

    return-void

    .line 250
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    if-nez v2, :cond_30

    .line 252
    new-instance v2, Landroid/view/MagnificationSpec;

    invoke-direct {v2}, Landroid/view/MagnificationSpec;-><init>()V

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :cond_30
    invoke-virtual {v2, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 256
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 257
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public setWindowsNotification(Z)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-ne v1, p1, :cond_9

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_1d

    .line 223
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object p1

    .line 224
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    goto :goto_23

    .line 226
    :cond_1d
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->releaseResources()V

    .line 229
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method
