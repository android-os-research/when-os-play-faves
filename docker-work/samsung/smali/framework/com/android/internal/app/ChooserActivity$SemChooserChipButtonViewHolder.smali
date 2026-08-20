.class final Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SemChooserChipButtonViewHolder"
.end annotation


# instance fields
.field blacklist mChipButton:Landroid/view/View;

.field blacklist mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "view"    # Landroid/view/View;

    .line 11566
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11567
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11569
    const v0, 0x102053c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    .line 11570
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11607
    return-void
.end method


# virtual methods
.method public blacklist animatePrivateShareButton()V
    .registers 13

    .line 11618
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11619
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 11620
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 11621
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11622
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    .line 11625
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    .line 11626
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    .line 11627
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v11, v4, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 11629
    .local v3, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x1c2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 11630
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v4, v5, v5, v1, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11632
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 11633
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 11634
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 11636
    new-instance v2, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11651
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11652
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-app-ChooserActivity$SemChooserChipButtonViewHolder(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 11571
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semGetItemKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_copy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 11572
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$monCopyButtonClicked(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    goto/16 :goto_9b

    .line 11574
    :cond_16
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11575
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 11576
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 11577
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForPreloadServices(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11580
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 11583
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedApplyMultiSelectUI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 11584
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryIntent(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceTargetInfoWithNewIntent(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;Lcom/android/internal/app/ChooserListAdapter;I)V

    .line 11587
    :cond_47
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 11588
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 11591
    :cond_62
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v0, :cond_73

    .line 11592
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 11595
    :cond_73
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v0, :cond_8f

    .line 11596
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 11597
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 11598
    return-void

    .line 11600
    :cond_87
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11601
    return-void

    .line 11603
    :cond_8f
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 11604
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 11606
    :goto_9b
    return-void
.end method

.method public blacklist setExtraInfoText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 11656
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const v1, 0x102053f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11657
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11658
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11659
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11660
    return-void
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 11610
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const v1, 0x1020617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11611
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11612
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11613
    return-void
.end method
