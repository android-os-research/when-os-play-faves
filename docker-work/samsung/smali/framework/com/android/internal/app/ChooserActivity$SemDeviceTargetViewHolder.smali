.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemDeviceTargetViewHolder"
.end annotation


# instance fields
.field private final blacklist mRow:Landroid/view/ViewGroup;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;II)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "row"    # Landroid/view/ViewGroup;
    .param p3, "cellCount"    # I
    .param p4, "viewType"    # I

    .line 9191
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 9192
    invoke-direct {p0, p3, p2, p4}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 9194
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 9195
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 9211
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9212
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 9214
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 9206
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    .line 9207
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "index"    # I

    .line 9202
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 9198
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist hideShareStatusAnim(I)V
    .registers 5
    .param p1, "i"    # I

    .line 9245
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9246
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareStatusView;

    .line 9248
    .local v1, "sv":Lcom/samsung/android/share/SemShareStatusView;
    if-eqz v1, :cond_17

    .line 9249
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareStatusView;->setVisibility(I)V

    .line 9250
    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V

    .line 9252
    :cond_17
    return-void
.end method

.method public blacklist setAngle(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "angle"    # F

    .line 9255
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9256
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9257
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    invoke-static {v1, p2}, Lcom/samsung/android/share/SemShareRotateLayout;->rotateView(Lcom/samsung/android/share/SemShareRotateLayout;F)V

    .line 9258
    return-void
.end method

.method public blacklist setFocus(IZ)V
    .registers 9
    .param p1, "i"    # I
    .param p2, "focused"    # Z

    .line 9261
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9262
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9263
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    const v2, 0x102057e

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 9264
    .local v2, "ivDetect":Landroid/widget/ImageView;
    const v3, 0x102057f

    invoke-virtual {v1, v3}, Lcom/samsung/android/share/SemShareRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 9266
    .local v3, "ivFocus":Landroid/widget/ImageView;
    if-eqz v2, :cond_35

    if-eqz v3, :cond_35

    .line 9267
    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz p2, :cond_2f

    .line 9268
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9269
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_35

    .line 9271
    :cond_2f
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9272
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9275
    :cond_35
    :goto_35
    return-void
.end method

.method public blacklist setPointerVisibility(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 9278
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9279
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9280
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    invoke-virtual {v1, p2}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    .line 9281
    return-void
.end method

.method public blacklist setViewVisibility(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 9218
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9219
    return-void
.end method

.method public blacklist setViewVisibilityWithAnimation(IIF)V
    .registers 12
    .param p1, "i"    # I
    .param p2, "visibility"    # I
    .param p3, "startValue"    # F

    .line 9284
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9285
    .local v0, "v":Landroid/view/View;
    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const-string v4, "alpha"

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p2, :cond_3b

    .line 9286
    new-array v3, v3, [F

    const/4 v6, 0x0

    aput p3, v3, v6

    const/4 v7, 0x1

    aput v5, v3, v7

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9287
    .local v3, "fadeAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9288
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9289
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9290
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9296
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9302
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .end local v3    # "fadeAnim":Landroid/animation/ValueAnimator;
    goto :goto_5e

    .line 9303
    :cond_3b
    const/4 v6, 0x4

    if-ne p2, v6, :cond_5e

    .line 9304
    new-array v3, v3, [F

    fill-array-data v3, :array_60

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9305
    .restart local v3    # "fadeAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9306
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9307
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9312
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5f

    .line 9303
    .end local v3    # "fadeAnim":Landroid/animation/ValueAnimator;
    :cond_5e
    :goto_5e
    nop

    .line 9314
    :goto_5f
    return-void

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public blacklist startShareStatusAnim(IIIIZ)V
    .registers 12
    .param p1, "i"    # I
    .param p2, "status"    # I
    .param p3, "startProgress"    # I
    .param p4, "endProgress"    # I
    .param p5, "isUWB"    # Z

    .line 9222
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9223
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareStatusView;

    .line 9225
    .local v1, "sv":Lcom/samsung/android/share/SemShareStatusView;
    if-eqz v1, :cond_3c

    .line 9226
    const v2, 0x1020577

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9227
    .local v2, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    const/4 v3, 0x0

    if-eqz v2, :cond_36

    .line 9228
    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq p2, v4, :cond_33

    const/4 v4, 0x1

    if-eq p2, v4, :cond_33

    const/4 v4, 0x6

    if-eq p2, v4, :cond_33

    const/4 v4, 0x2

    if-eq p2, v4, :cond_33

    const/4 v4, 0x7

    if-ne p2, v4, :cond_2c

    goto :goto_33

    .line 9235
    :cond_2c
    if-eqz p5, :cond_2f

    move v5, v3

    :cond_2f
    invoke-virtual {v2, v5}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    goto :goto_36

    .line 9233
    :cond_33
    :goto_33
    invoke-virtual {v2, v5}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    .line 9239
    :cond_36
    :goto_36
    invoke-virtual {v1, v3}, Lcom/samsung/android/share/SemShareStatusView;->setVisibility(I)V

    .line 9240
    invoke-static {v1, p2, p3, p4}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V

    .line 9242
    .end local v2    # "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    :cond_3c
    return-void
.end method
