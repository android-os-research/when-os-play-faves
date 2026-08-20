.class public final Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;
.super Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemChooserPreloadAppAdapter"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 11081
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11082
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 11083
    return-void
.end method


# virtual methods
.method blacklist bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    .line 11102
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetPreloadAppTargets()Ljava/util/List;

    move-result-object v0

    .line 11104
    .local v0, "preloadAppTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_85

    .line 11105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3f

    .line 11106
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 11107
    .local v1, "lastIndex":I
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_3f

    .line 11108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3f

    .line 11109
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 11110
    .local v3, "firtstItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 11112
    .local v4, "lastItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11113
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11117
    .end local v1    # "lastIndex":I
    .end local v3    # "firtstItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    .end local v4    # "lastItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    :cond_3f
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->displayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object v1, p2, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 11118
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->mainLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 11119
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_69

    .line 11120
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->setExtraInfoText(Ljava/lang/CharSequence;)V

    .line 11123
    :cond_69
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsPrivateShareAnimCompleted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-nez v1, :cond_85

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 11124
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->preloadType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_85

    .line 11125
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->animatePrivateShareButton()V

    .line 11129
    :cond_85
    return-void
.end method

.method public blacklist getItemCount()I
    .registers 2

    .line 11087
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetPreloadAppTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getListPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .line 11133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 11098
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V

    .line 11099
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 11092
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090144

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 11093
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    return-object v1
.end method
