.class public Lcom/android/server/wm/DisplayPolicy$2;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitted(I)V
    .registers 6

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 774
    :try_start_7
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 775
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 777
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2, p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$misTwoFingerSwipeGestureAcceptable(Lcom/android/server/wm/DisplayPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    if-ne p1, v2, :cond_24

    .line 779
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v1, v2, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBarByTwoFingerGesture(Lcom/android/server/wm/DisplayPolicy;Landroid/graphics/Region;II)V

    goto :goto_36

    :cond_24
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2e

    .line 782
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 p1, 0x2

    invoke-static {p0, v1, p1, p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBarByTwoFingerGesture(Lcom/android/server/wm/DisplayPolicy;Landroid/graphics/Region;II)V

    goto :goto_36

    :cond_2e
    const/4 v2, 0x4

    if-ne p1, v2, :cond_36

    .line 785
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v1, v2, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBarByTwoFingerGesture(Lcom/android/server/wm/DisplayPolicy;Landroid/graphics/Region;II)V

    .line 789
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public onDetecting()V
    .registers 5

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 761
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingController;->isFullToSplitEnabled()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 762
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTwoFingerSwipeGestureDetector(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/TwoFingerSwipeGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    goto :goto_3b

    .line 764
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTwoFingerSwipeGestureDetector(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/TwoFingerSwipeGestureDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    div-int/lit16 p0, p0, 0xa0

    int-to-float p0, p0

    const/16 v3, 0xd

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FI)V

    .line 768
    :goto_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw p0
.end method
