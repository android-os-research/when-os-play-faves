.class public abstract Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
.super Ljava/lang/Object;
.source "DexMetaKeyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexMetaKeyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MetaKeyBoundsProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexMetaKeyPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 5

    .line 276
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->isMoveToDefaultDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 277
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 278
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 279
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I

    goto :goto_47

    .line 280
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 281
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_47

    .line 282
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 283
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopAppToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 285
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public canUseShiftKey(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 256
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isDexDualMode()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public getDefaultBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 5

    .line 260
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 263
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isDexDualMode()Z

    move-result p0

    if-eqz p0, :cond_27

    int-to-float p0, p1

    .line 264
    sget-object v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    int-to-float v2, v0

    .line 265
    iget v1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_31

    :cond_27
    int-to-float p0, p1

    .line 267
    sget-object v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    int-to-float v2, v0

    .line 268
    iget v1, v1, Landroid/graphics/PointF;->y:F

    :goto_31
    mul-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr p1, p0

    .line 270
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, v1

    .line 271
    div-int/lit8 v0, v0, 0x2

    .line 272
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p0, p1

    add-int/2addr v1, v0

    invoke-direct {v2, p1, v0, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public abstract getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;
.end method

.method public abstract updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
.end method
