.class Lcom/android/internal/app/ChooserActivity$32;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->initGalleryRecyclerView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist prevState:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 12936
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 12937
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$32;->prevState:I

    return-void
.end method


# virtual methods
.method public blacklist onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 13
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 12940
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 12944
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsSmartShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsSmartShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12945
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsSmartShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 12947
    :cond_21
    const/4 v0, 0x0

    .line 12948
    .local v0, "enhanceLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSnapHelper(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareSnapHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/share/SemShareSnapHelper;->findSnapView(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    .line 12949
    .local v2, "currentView":Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 12950
    const v3, 0x1020546

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 12952
    :cond_3e
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "GalleryShareSheet"

    if-nez p2, :cond_dc

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$32;->prevState:I

    if-ne v6, v3, :cond_dc

    if-eqz v2, :cond_dc

    .line 12954
    const-string v3, "RecyclerView onScrollStateChanged SCROLL_STATE_IDLE"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12955
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 12956
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/share/SemShareImageFetcher;->setPauseWork(Z)V

    .line 12958
    :cond_60
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 12959
    .local v3, "currentPosition":I
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 12960
    .local v6, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    if-eqz v6, :cond_82

    iget-boolean v7, v6, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isPrivateImage:Z

    if-eqz v7, :cond_82

    move v7, v4

    goto :goto_83

    :cond_82
    move v7, v1

    .line 12961
    .local v7, "isPrivate":Z
    :goto_83
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v8

    if-eq v3, v8, :cond_8c

    goto :goto_8d

    :cond_8c
    move v4, v1

    .line 12962
    .local v4, "isFocusChanged":Z
    :goto_8d
    if-eqz v4, :cond_c8

    .line 12964
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecyclerView onScrollStateChanged, old position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12966
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msaveEnhancementsToFile(Lcom/android/internal/app/ChooserActivity;I)V

    .line 12967
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;I)V

    .line 12968
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsWritePending(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 12970
    :cond_c8
    if-eqz v7, :cond_cf

    .line 12971
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v3, v2, v1, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$menablePrivateShareTip(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;ZZ)V

    .line 12973
    :cond_cf
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_182

    .line 12974
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mstartEnhancementDetection(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    goto/16 :goto_182

    .line 12976
    .end local v3    # "currentPosition":I
    .end local v4    # "isFocusChanged":Z
    .end local v6    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    .end local v7    # "isPrivate":Z
    :cond_dc
    if-eqz v0, :cond_182

    .line 12977
    const-string v6, "OnScroll enhanceLayout gone"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12978
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12979
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsEnhanceButtonAnimRunning(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 12980
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_16a

    .line 12981
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 12982
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12983
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 12984
    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050380

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 12985
    const/16 v7, 0xe

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12986
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12987
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 12988
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_14d

    .line 12989
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12990
    :cond_14d
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 12991
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleTextView(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12992
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12994
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_16a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_183

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v1

    if-eqz v1, :cond_183

    .line 12995
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SemShareImageFetcher;->setPauseWork(Z)V

    goto :goto_183

    .line 12976
    :cond_182
    :goto_182
    nop

    .line 12998
    :cond_183
    :goto_183
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$32;->prevState:I

    .line 12999
    return-void
.end method

.method public blacklist onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 9
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 13002
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsScrolledToCenter(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 13003
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemStartCenterItemAnimationAndPostponeTransition(Lcom/android/internal/app/ChooserActivity;)V

    .line 13004
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsBindedLowPosition(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsBindedHighPosition(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 13005
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mstartPreviewSideItemAnimation(Lcom/android/internal/app/ChooserActivity;)V

    .line 13008
    :cond_22
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDrawerAnimEnded(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 13009
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_36

    if-ltz p2, :cond_40

    :cond_36
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_82

    if-lez p2, :cond_82

    .line 13010
    :cond_40
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedLastItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_82

    .line 13011
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 13012
    .local v0, "lastPosition":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedLastItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 13013
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 13014
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_82

    .line 13015
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 13016
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedLastItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13021
    .end local v0    # "lastPosition":I
    .end local v2    # "view":Landroid/view/View;
    :cond_82
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_8c

    if-gtz p2, :cond_96

    :cond_8c
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_d8

    if-gez p2, :cond_d8

    .line 13022
    :cond_96
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedFirstItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d8

    .line 13023
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 13024
    .local v0, "firstPosition":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedFirstItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 13025
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 13026
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_d8

    .line 13027
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 13028
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedFirstItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13035
    .end local v0    # "firstPosition":I
    .end local v2    # "view":Landroid/view/View;
    :cond_d8
    return-void
.end method
