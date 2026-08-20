.class public Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MousePositionTracker"
.end annotation


# instance fields
.field public mLatestEventWasMouse:Z

.field public mLatestMouseX:F

.field public mLatestMouseY:F

.field public mPointerDisplayId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLatestEventWasMouse(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatestMouseX(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatestMouseY(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPointerDisplayId(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 8286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8295
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$MousePositionTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4

    const/16 v0, 0x2002

    .line 8324
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 8326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 8325
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(IFF)Z

    goto :goto_1d

    .line 8328
    :cond_18
    monitor-enter p0

    const/4 p1, 0x0

    .line 8329
    :try_start_1a
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 8330
    monitor-exit p0

    :goto_1d
    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public setPointerDisplayId(I)V
    .registers 2

    .line 8317
    monitor-enter p0

    .line 8318
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    .line 8319
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public updatePosition(IFF)Z
    .registers 6

    .line 8302
    monitor-enter p0

    const/4 v0, 0x1

    .line 8303
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 8305
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    if-eq p1, v1, :cond_b

    const/4 p1, 0x0

    .line 8308
    monitor-exit p0

    return p1

    .line 8310
    :cond_b
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 8311
    iput p3, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 8312
    monitor-exit p0

    return v0

    :catchall_11
    move-exception p1

    .line 8313
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw p1
.end method
