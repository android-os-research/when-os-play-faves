.class public Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;
.super Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
.source "DexMetaKeyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexMetaKeyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpMetaKeyBoundsProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexMetaKeyPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    return-void
.end method


# virtual methods
.method public applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p2, :cond_f

    .line 438
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    return-void

    .line 442
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopAppToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_16

    return-void

    .line 449
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    return-void
.end method

.method public canUseShiftKey(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 417
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isMaxHeightBounds(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;
    .registers 5

    .line 391
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 392
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    return-object p0

    .line 395
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 396
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 397
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 398
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 399
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 400
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 401
    :cond_54
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 402
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 403
    :cond_6d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-eqz p2, :cond_83

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->canUseShiftKey(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_80

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmMaxHeightBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_82

    :cond_80
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    :goto_82
    return-object p0

    :cond_83
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 5

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    if-nez p2, :cond_29

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-nez v0, :cond_34

    .line 430
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isMaxHeightBounds(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_34
    const/4 p0, 0x0

    .line 431
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setMetaKeyBounds(Landroid/graphics/Rect;)V

    :cond_38
    return-void
.end method
