.class final Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarVisibilityHelper"
.end annotation


# static fields
.field private static final blacklist MIN_SHOW_DURATION_FOR_MOVE_HIDE:J = 0x1f4L


# instance fields
.field private blacklist mActive:Z

.field private blacklist mHideRequested:Z

.field private blacklist mLastShowTime:J

.field private blacklist mMoving:Z

.field private blacklist mOutOfBounds:Z

.field private final blacklist mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mWindowFocused:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .registers 3
    .param p1, "toolbar"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 357
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 358
    return-void
.end method


# virtual methods
.method public blacklist activate()V
    .registers 2

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 362
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 363
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 366
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 367
    return-void
.end method

.method public blacklist deactivate()V
    .registers 2

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 371
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 372
    return-void
.end method

.method public blacklist setHideRequested(Z)V
    .registers 2
    .param p1, "hide"    # Z

    .line 375
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 376
    return-void
.end method

.method public blacklist setMoving(Z)V
    .registers 6
    .param p1, "moving"    # Z

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mLastShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 383
    .local v0, "showingLongEnough":Z
    :goto_10
    if-eqz p1, :cond_14

    if-eqz v0, :cond_16

    .line 384
    :cond_14
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 386
    :cond_16
    return-void
.end method

.method public blacklist setOutOfBounds(Z)V
    .registers 2
    .param p1, "outOfBounds"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 390
    return-void
.end method

.method public blacklist setWindowFocused(Z)V
    .registers 2
    .param p1, "windowFocused"    # Z

    .line 393
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 394
    return-void
.end method

.method public blacklist updateToolbarVisibility()V
    .registers 3

    .line 397
    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    if-nez v0, :cond_5

    .line 398
    return-void

    .line 401
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    if-nez v0, :cond_16

    goto :goto_22

    .line 404
    :cond_16
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->show()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mLastShowTime:J

    goto :goto_27

    .line 402
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->hide()V

    .line 407
    :goto_27
    return-void
.end method
