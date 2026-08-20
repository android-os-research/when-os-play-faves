.class public final Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;
.super Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemChooserRankedAppAdapter"
.end annotation


# static fields
.field private static final blacklist DUMMY_PADDING_WIDTH:I = 0x64

.field private static final blacklist MAX_TARGET_COUNT_IN_ONE_ROW:I = 0x4

.field private static final blacklist VIEW_TYPE_MORE_BUTTON:I = 0x1

.field private static final blacklist VIEW_TYPE_NORMAL:I


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 11348
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11349
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 11350
    return-void
.end method


# virtual methods
.method blacklist bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    .line 11450
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    .line 11451
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->getListPosition(I)I

    move-result v1

    .line 11452
    .local v1, "listPosition":I
    iput v1, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 11453
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 11455
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v2, v3, p2, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCheckToShowCreateTipPoup(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/ChooserActivity$ItemViewHolder;I)V

    .line 11456
    return-void
.end method

.method public blacklist getItemCount()I
    .registers 3

    .line 11362
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 11363
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->needToShowMoreButton()Z

    move-result v1

    add-int/2addr v0, v1

    .line 11362
    return v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .line 11368
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->needToShowMoreButton()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 11369
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_10

    .line 11370
    return v2

    .line 11372
    :cond_10
    return v1

    .line 11375
    :cond_11
    return v1
.end method

.method blacklist getListPosition(I)I
    .registers 5
    .param p1, "position"    # I

    .line 11443
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    .line 11444
    .local v0, "deviceCount":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    .line 11446
    .local v1, "serviceCount":I
    add-int v2, v0, v1

    add-int/2addr v2, p1

    return v2
.end method

.method blacklist needToShowMoreButton()Z
    .registers 3

    .line 11459
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11354
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 11356
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mRecyclerViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11357
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108026c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11356
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 11358
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 11391
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 11392
    .local v0, "viewType":I
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11393
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 11394
    return-void

    .line 11397
    :cond_a
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_c0

    .line 11398
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->getItemCount()I

    move-result v2

    .line 11399
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->semGetMaxWidth()I

    move-result v3

    .line 11400
    .local v3, "totalWidth":I
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050468

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 11402
    .local v4, "itemWidth":I
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x102056a

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 11403
    .local v5, "recyclerViewParent":Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/widget/RecyclerView;

    if-eqz v6, :cond_a3

    .line 11404
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 11405
    .local v6, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_65

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmWindowRect(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_65

    .line 11406
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    .line 11407
    if-nez v3, :cond_a3

    .line 11408
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    goto :goto_a3

    .line 11411
    :cond_65
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->semGetMaxWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmWindowRect(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmWindowRect(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_9a

    .line 11412
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmWindowRect(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmWindowRect(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    goto :goto_a2

    :cond_9a
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->semGetMaxWidth()I

    move-result v7

    :goto_a2
    move v3, v7

    .line 11416
    .end local v6    # "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    :cond_a3
    :goto_a3
    mul-int v6, v4, v2

    sub-int v6, v3, v6

    add-int/lit8 v6, v6, -0x64

    mul-int/lit8 v7, v2, 0x2

    div-int/2addr v6, v7

    .line 11417
    .local v6, "sidePadding":I
    if-gez v6, :cond_af

    const/4 v6, 0x0

    .line 11419
    :cond_af
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11423
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 11424
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 11425
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 11426
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11429
    .end local v2    # "count":I
    .end local v3    # "totalWidth":I
    .end local v4    # "itemWidth":I
    .end local v5    # "recyclerViewParent":Landroid/view/View;
    .end local v6    # "sidePadding":I
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c0
    const v2, 0x1020542

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11430
    .local v2, "badgeTv":Landroid/widget/TextView;
    if-nez p2, :cond_d6

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    iget v3, v3, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargetsBadgeNumber:I

    if-eqz v3, :cond_d6

    .line 11433
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_db

    .line 11435
    :cond_d6
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11438
    :goto_db
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    .line 11439
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 11381
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 11382
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090152

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 11383
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    return-object v1

    .line 11385
    .end local v0    # "view":Landroid/view/View;
    :cond_15
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserRankedAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1
.end method
