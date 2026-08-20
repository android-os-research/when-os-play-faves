.class Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ActionBarContainer;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmIsSplit(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_44

    .line 473
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 476
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmStackedBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmIsStacked(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmStackedBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    :cond_44
    :goto_44
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmIsSplit(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1f

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v2, :cond_5d

    .line 509
    return v2

    .line 512
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmIsStacked(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmStackedBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmStackedBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v2, :cond_3c

    .line 514
    :cond_3b
    return v1

    .line 516
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmActionBarView(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$smisCollapsed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v2, :cond_5d

    .line 518
    return v2

    .line 522
    :cond_5d
    return v1
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmIsSplit(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_2b

    .line 490
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 494
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 498
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 502
    return-void
.end method
