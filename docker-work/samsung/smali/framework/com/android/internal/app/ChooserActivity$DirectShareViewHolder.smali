.class Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectShareViewHolder"
.end annotation


# instance fields
.field private blacklist mCellCountPerRow:I

.field private final blacklist mCellVisibility:[Z

.field private blacklist mDirectShareCurrHeight:I

.field private blacklist mDirectShareMaxHeight:I

.field private blacklist mDirectShareMinHeight:I

.field private blacklist mHideDirectShareExpansion:Z

.field private final blacklist mListAdapterSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mParent:Landroid/view/ViewGroup;

.field private final blacklist mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p3, "cellCountPerRow"    # I
    .param p4, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;II",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ">;)V"
        }
    .end annotation

    .line 7153
    .local p2, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    .local p5, "listAdapterSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/app/ChooserListAdapter;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-direct {p0, v0, p1, p4}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 7142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 7143
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 7144
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 7145
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 7155
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 7156
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    .line 7157
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    .line 7158
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    .line 7159
    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mListAdapterSupplier:Ljava/util/function/Supplier;

    .line 7160
    return-void
.end method

.method private blacklist updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 14
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "yDiff"    # I
    .param p3, "newHeight"    # I

    .line 7269
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_b

    goto :goto_67

    .line 7274
    :cond_b
    const/4 v0, 0x0

    .line 7275
    .local v0, "foundExpansion":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 7276
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7278
    .local v2, "child":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 7279
    invoke-virtual {v2, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_5f

    .line 7281
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v3, :cond_5f

    .line 7282
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 7284
    .local v3, "widthSpec":I
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 7286
    .local v4, "heightSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 7287
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7288
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 7289
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 7288
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 7291
    const/4 v0, 0x1

    .line 7275
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7296
    .end local v1    # "i":I
    :cond_62
    if-eqz v0, :cond_66

    .line 7297
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 7299
    :cond_66
    return-void

    .line 7270
    .end local v0    # "foundExpansion":Z
    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 7163
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 7164
    .local v0, "row":Landroid/view/ViewGroup;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7165
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v1, p1

    .line 7167
    return-object v0
.end method

.method blacklist collapse(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 7264
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 7266
    return-void
.end method

.method blacklist expand(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 7259
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 7261
    return-void
.end method

.method public blacklist getMeasuredRowHeight()I
    .registers 2

    .line 7196
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    return v0
.end method

.method public blacklist getMinRowHeight()I
    .registers 2

    .line 7200
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    return v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 7179
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I

    .line 7175
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 7171
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist handleScroll(Lcom/android/internal/widget/RecyclerView;III)V
    .registers 10
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "y"    # I
    .param p3, "oldy"    # I
    .param p4, "maxTargetsPerRow"    # I

    .line 7232
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 7233
    .local v0, "notExpanded":Z
    :goto_a
    if-eqz v0, :cond_22

    .line 7234
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    if-eqz v1, :cond_11

    .line 7235
    return-void

    .line 7240
    :cond_11
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mListAdapterSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserListAdapter;

    .line 7241
    .local v1, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v3

    .line 7242
    .local v3, "validTargets":I
    if-gt v3, p4, :cond_22

    .line 7243
    iput-boolean v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 7244
    return-void

    .line 7248
    .end local v1    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    .end local v3    # "validTargets":I
    :cond_22
    sub-int v1, p3, p2

    int-to-float v1, v1

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 7250
    .local v1, "yDiff":I
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 7251
    .local v2, "prevHeight":I
    add-int v3, v2, v1

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7252
    .local v3, "newHeight":I
    iget v4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7253
    sub-int v1, v3, v2

    .line 7255
    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 7256
    return-void
.end method

.method public blacklist measure()V
    .registers 4

    .line 7183
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7184
    .local v1, "spec":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 7189
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 7190
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    if-lez v2, :cond_1b

    .line 7191
    goto :goto_1c

    :cond_1b
    move v2, v0

    :goto_1c
    iput v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 7192
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 7193
    return-void
.end method

.method public blacklist setViewVisibility(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 7204
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 7206
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    if-nez p2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    aput-boolean v2, v1, p1

    .line 7207
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7227
    return-void
.end method
