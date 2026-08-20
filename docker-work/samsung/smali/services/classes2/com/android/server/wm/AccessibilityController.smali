.class public final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;,
        Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;,
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    }
.end annotation


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final STATIC_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "AccessibilityController"

.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

.field public mAllObserversInitialized:Z

.field public final mDisplayMagnifiers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusedDisplay:I

.field public mFocusedWindow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowsForAccessibilityObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetSTATIC_LOCK()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smpopulateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 143
    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedDisplay:I

    .line 150
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 156
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 158
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 160
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    return-void
.end method

.method public static getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
    .registers 1

    .line 137
    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getLetterboxBounds(Lcom/android/server/wm/WindowState;)Landroid/graphics/Region;
    .registers 3

    .line 1453
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_a

    .line 1455
    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0}, Landroid/graphics/Region;-><init>()V

    return-object p0

    .line 1457
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1459
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1460
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1462
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-object v0
.end method

.method public static getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;
    .registers 2

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    const/4 v0, 0x1

    .line 1448
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1449
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_16

    :cond_14
    sget-object p0, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_16
    return-object p0
.end method

.method public static isUntouchableNavigationBar(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)Z
    .registers 4

    .line 1436
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1441
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1443
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 3

    .line 536
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeeded(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".drawMagnifiedRegionBorderIfNeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; transaction={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 450
    :cond_41
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_4e

    .line 452
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 540
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v1, :cond_30

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Magnification display# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 544
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mWindowsForAccessibilityObserver="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedDisplay:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 9

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".getMagnificationRegion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; outMagnificationRegion={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 298
    :cond_41
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_4e

    .line 300
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegion(Landroid/graphics/Region;)V

    :cond_4e
    return-void
.end method

.method public getMagnificationSpecForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 8

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".getMagnificationSpecForWindow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowState={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 486
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 487
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_4d

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object p0

    return-object p0

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Matrix;",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 460
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 461
    new-instance v2, Landroid/view/MagnificationSpec;

    invoke-direct {v2}, Landroid/view/MagnificationSpec;-><init>()V

    .line 463
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_3a

    const/16 v3, 0x9

    new-array v3, v3, [F

    .line 465
    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 470
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 471
    invoke-virtual {v2, p0}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 476
    :cond_3a
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_44
    move-exception p0

    .line 477
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasCallbacks()Z
    .registers 6

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0xc00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".hasCallbacks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 500
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_35

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 501
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p0, 0x1

    :goto_36
    return p0
.end method

.method public onAppWindowTransition(II)V
    .registers 9

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onAppWindowTransition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; transition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 343
    :cond_3b
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_48

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransition(II)V

    :cond_48
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 564
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onDisplaySizeChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0xc00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onRotationChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayContent={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 330
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 331
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_4a

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onDisplaySizeChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_4a
    return-void
.end method

.method public onFocusChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_b
    if-eqz p2, :cond_1e

    .line 556
    invoke-interface {p2}, Lcom/android/server/wm/InputTarget;->getDisplayId()I

    move-result p1

    .line 557
    invoke-interface {p2}, Lcom/android/server/wm/InputTarget;->getIWindow()Landroid/view/IWindow;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 558
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public varargs onSomeWindowResizedOrMoved([I)V
    .registers 3

    .line 424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid(I[I)V

    return-void
.end method

.method public varargs onSomeWindowResizedOrMovedWithCallingUid(I[I)V
    .registers 11

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".onSomeWindowResizedOrMoved"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x400

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayIds={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v7, p1

    .line 429
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI)V

    :cond_46
    const/4 p1, 0x0

    .line 434
    :goto_47
    array-length v0, p2

    if-ge p1, v0, :cond_5c

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    aget v1, p2, p1

    .line 436
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_59

    .line 438
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindows()V

    :cond_59
    add-int/lit8 p1, p1, 0x1

    goto :goto_47

    :cond_5c
    return-void
.end method

.method public onWindowFocusChangedNot(I)V
    .registers 8

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onWindowFocusChangedNot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_33
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 372
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 373
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p1, :cond_47

    move-object v0, p1

    .line 377
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_51

    const/4 p1, 0x0

    .line 379
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 383
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController;->sendCallbackToUninitializedObserversIfNeeded()V

    return-void

    :catchall_55
    move-exception p0

    .line 377
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onWindowLayersChanged(I)V
    .registers 8

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0xc00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onWindowLayersChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 311
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_40

    .line 313
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChanged()V

    .line 315
    :cond_40
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 316
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p0, :cond_4d

    .line 318
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindows()V

    :cond_4d
    return-void
.end method

.method public onWindowTransition(Lcom/android/server/wm/WindowState;I)V
    .registers 9

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0xc00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onWindowTransition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowState={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}; transition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 357
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 358
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_4e

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_4e
    return-void
.end method

.method public performComputeChangedWindowsNot(IZ)V
    .registers 9

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".performComputeChangedWindowsNot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; forceSend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_3b
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 260
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 261
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p0, :cond_4f

    move-object v0, p0

    .line 265
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_58

    .line 267
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    :cond_58
    return-void

    :catchall_59
    move-exception p0

    .line 265
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final sendCallbackToUninitializedObserversIfNeeded()V
    .registers 7

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 389
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    if-eqz v1, :cond_11

    .line 390
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 392
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_22

    .line 393
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 395
    :cond_22
    :try_start_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_2f
    if-ltz v2, :cond_45

    .line 397
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 398
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 399
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->-$$Nest$fgetmInitialized(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 400
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 404
    :cond_45
    iput-boolean v3, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 405
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 408
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v2, v3

    :goto_51
    if-ltz v0, :cond_64

    .line 409
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 410
    invoke-virtual {v4, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 411
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->-$$Nest$fgetmInitialized(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    .line 413
    :cond_64
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 414
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 415
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_76
    move-exception p0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_7c
    move-exception p0

    .line 405
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setFocusedDisplay(I)V
    .registers 2

    .line 568
    iput p1, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedDisplay:I

    return-void
.end method

.method public setForceShowMagnifiableBounds(IZ)V
    .registers 9

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".setForceShowMagnifiableBounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 509
    :cond_3b
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_4b

    .line 511
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setForceShowMagnifiableBounds(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->showMagnificationBoundsIfNeeded()V

    :cond_4b
    return-void
.end method

.method public setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .registers 9

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".setMagnificationCallbacks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; callbacks={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_41
    const/4 v0, 0x1

    if-eqz p2, :cond_84

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7c

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    .line 177
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 178
    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7a

    .line 179
    new-instance v4, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v1, v3, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    .line 181
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 182
    invoke-virtual {p2, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    .line 181
    invoke-virtual {v4, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->notifyImeWindowVisibilityChanged(Z)V

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_96

    :cond_7a
    move v0, v2

    goto :goto_96

    .line 173
    :cond_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Magnification callbacks already set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_84
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p2, :cond_97

    .line 192
    invoke-virtual {p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroy()V

    .line 193
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_96
    return v0

    .line 190
    :cond_97
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Magnification callbacks already cleared!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .registers 9

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0xc00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".setMagnificationSpec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; spec={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 278
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_53

    .line 282
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 284
    :cond_53
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 285
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p0, :cond_60

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindows()V

    :cond_60
    return-void
.end method

.method public setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 9

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".setWindowsForAccessibilityCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; callback={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_41
    const-string v0, "Windows for accessibility callback of display "

    if-eqz p2, :cond_96

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 217
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v1, :cond_78

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " already set!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_72

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_78

    .line 223
    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->setWindowsNotification(Z)V

    .line 228
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    .line 230
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->-$$Nest$fgetmInitialized(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Z

    move-result p2

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    goto :goto_d7

    .line 233
    :cond_96
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 234
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez p2, :cond_c4

    .line 236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " already cleared!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 238
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_be

    goto :goto_c4

    .line 240
    :cond_be
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_c4
    :goto_c4
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 245
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_d7

    .line 246
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->setWindowsNotification(Z)V

    :cond_d7
    :goto_d7
    return-void
.end method

.method public updateImeVisibilityIfNeeded(IZ)V
    .registers 9

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/AccessibilityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".updateImeVisibilityIfNeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";shown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 522
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-ne v0, p2, :cond_45

    return-void

    .line 527
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 528
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_57

    .line 530
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->notifyImeWindowVisibilityChanged(Z)V

    :cond_57
    return-void
.end method
