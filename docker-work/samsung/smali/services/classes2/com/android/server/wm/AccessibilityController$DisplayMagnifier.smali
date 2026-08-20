.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMagnifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field public static final DEBUG_DISPLAY_SIZE:Z = false

.field public static final DEBUG_LAYERS:Z = false

.field public static final DEBUG_RECTANGLE_REQUESTED:Z = false

.field public static final DEBUG_VIEWPORT_WINDOW:Z = false

.field public static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayContext:Landroid/content/Context;

.field public mForceShowMagnifiableBounds:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLongAnimationDuration:J

.field public final mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRegion1:Landroid/graphics/Region;

.field public final mTempRegion2:Landroid/graphics/Region;

.field public final mTempRegion3:Landroid/graphics/Region;

.field public final mTempRegion4:Landroid/graphics/Region;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplay(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContext(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongAnimationDuration(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMagnifedViewport(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRect1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRegion1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRegion2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRegion3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRegion4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
    .registers 9

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 589
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 591
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 592
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 593
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 594
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    .line 614
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    .line 615
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 616
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 617
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 618
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    .line 619
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    .line 620
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 622
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 623
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    const-wide/16 v2, 0x800

    .line 625
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_a8

    .line 626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "windowManagerService={"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}; displayContent={"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}; display={"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}; callbacks={"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager.DisplayMagnifier.constructor"

    invoke-virtual {v1, p1, v2, v3, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_a8
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 5

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.destroy"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 813
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transition={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.drawMagnifiedRegionBorderIfNeeded"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 831
    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 835
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 7

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "outMagnificationRegion={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.getMagnificationRegion"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 805
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBounds()V

    .line 806
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public getMagnificationSpecForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 7

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "windowState={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.getMagnificationSpecForWindow"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 789
    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 790
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 791
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result p1

    if-nez p1, :cond_3e

    const/4 p0, 0x0

    :cond_3e
    return-object p0
.end method

.method public isForceShowingMagnifiableBounds()Z
    .registers 5

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.isForceShowingMagnifiableBounds"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 660
    :cond_11
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    return p0
.end method

.method public notifyImeWindowVisibilityChanged(Z)V
    .registers 7

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.notifyImeWindowVisibilityChanged"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 780
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 781
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAppWindowTransition(II)V
    .registers 8

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; transition="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "WindowManager.onAppWindowTransition"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 700
    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifying()Z

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p1, 0x6

    if-eq p2, p1, :cond_45

    const/16 p1, 0x8

    if-eq p2, p1, :cond_45

    const/16 p1, 0xa

    if-eq p2, p1, :cond_45

    const/16 p1, 0x1c

    if-eq p2, p1, :cond_45

    packed-switch p2, :pswitch_data_4c

    goto :goto_4b

    .line 710
    :cond_45
    :pswitch_45
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4b
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0xc
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public onDisplaySizeChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 677
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayContent={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "WindowManager.onDisplaySizeChanged"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 685
    :cond_28
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->onDisplaySizeChanged()V

    .line 686
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onWindowLayersChanged()V
    .registers 5

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.onWindowLayersChanged"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 671
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBounds()V

    .line 672
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public onWindowTransition(Lcom/android/server/wm/WindowState;I)V
    .registers 8

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "windowState={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}; transition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.onWindowTransition"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 727
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifying()Z

    move-result v0

    .line 728
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3d

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3d

    goto :goto_8a

    :cond_3d
    if-nez v0, :cond_40

    goto :goto_8a

    :cond_40
    const/4 p2, 0x2

    if-eq v1, p2, :cond_64

    const/4 p2, 0x4

    if-eq v1, p2, :cond_64

    const/16 p2, 0x3ed

    if-eq v1, p2, :cond_64

    const/16 p2, 0x7e4

    if-eq v1, p2, :cond_64

    const/16 p2, 0x7e8

    if-eq v1, p2, :cond_64

    const/16 p2, 0x7f3

    if-eq v1, p2, :cond_64

    const/16 p2, 0x7f6

    if-eq v1, p2, :cond_64

    packed-switch v1, :pswitch_data_8c

    packed-switch v1, :pswitch_data_98

    packed-switch v1, :pswitch_data_a2

    goto :goto_8a

    .line 756
    :cond_64
    :pswitch_64
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 757
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 761
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 762
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 763
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p0, p1, p2, v1, v0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x3e8
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x7d1
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x7d5
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public setForceShowMagnifiableBounds(Z)V
    .registers 7

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.setForceShowMagnifiableBounds"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 651
    :cond_23
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    .line 652
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShown(ZZ)V

    return-void
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 7

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spec={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.setMagnificationSpec"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 639
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBounds()V

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 643
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public showMagnificationBoundsIfNeeded()V
    .registers 5

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.showMagnificationBoundsIfNeeded"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 822
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 823
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
