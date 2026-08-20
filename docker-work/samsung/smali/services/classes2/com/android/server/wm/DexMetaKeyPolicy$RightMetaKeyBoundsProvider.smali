.class public Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;
.super Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
.source "DexMetaKeyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexMetaKeyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RightMetaKeyBoundsProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexMetaKeyPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    return-void
.end method


# virtual methods
.method public getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;
    .registers 4

    .line 345
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isDexDualMode()Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    goto :goto_13

    :cond_11
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    :goto_13
    return-object p0

    .line 349
    :cond_14
    iget-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 350
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasMetaKeyBounds()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->takeMetaKeyBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_2f

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object p0

    :goto_2f
    return-object p0

    .line 351
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 353
    :cond_43
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isTopQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 354
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 355
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_6e

    :cond_68
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    :goto_6e
    return-object p0

    .line 356
    :cond_6f
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isBottomQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 357
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 358
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_9a

    :cond_94
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    :goto_9a
    return-object p0

    .line 360
    :cond_9b
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isQuarterDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 374
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p0, 0x0

    .line 375
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setMetaKeyBounds(Landroid/graphics/Rect;)V

    .line 376
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    goto :goto_32

    .line 378
    :cond_24
    new-instance p2, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setMetaKeyBounds(Landroid/graphics/Rect;)V

    :goto_32
    return-void
.end method
