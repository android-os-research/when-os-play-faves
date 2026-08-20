.class abstract Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemGroupViewHolder"
.end annotation


# instance fields
.field protected final blacklist mCells:[Landroid/view/View;

.field private final blacklist mColumnCount:I

.field private blacklist mItemIndices:[I

.field protected blacklist mMeasuredRowHeight:I


# direct methods
.method constructor blacklist <init>(ILandroid/view/View;I)V
    .registers 5
    .param p1, "cellCount"    # I
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .line 7060
    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 7061
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    .line 7062
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    .line 7063
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    .line 7064
    return-void
.end method


# virtual methods
.method abstract blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public blacklist getColumnCount()I
    .registers 2

    .line 7077
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    return v0
.end method

.method public blacklist getItemIndex(I)I
    .registers 3
    .param p1, "itemIndex"    # I

    .line 7095
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getMeasuredRowHeight()I
    .registers 2

    .line 7087
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return v0
.end method

.method abstract blacklist getRow(I)Landroid/view/ViewGroup;
.end method

.method abstract blacklist getRowByIndex(I)Landroid/view/ViewGroup;
.end method

.method public blacklist getView(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 7099
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method abstract blacklist getViewGroup()Landroid/view/ViewGroup;
.end method

.method public blacklist measure()V
    .registers 3

    .line 7081
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7082
    .local v0, "spec":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 7083
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    .line 7084
    return-void
.end method

.method public blacklist setItemIndex(II)V
    .registers 4
    .param p1, "itemIndex"    # I
    .param p2, "listIndex"    # I

    .line 7091
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aput p2, v0, p1

    .line 7092
    return-void
.end method

.method abstract blacklist setViewVisibility(II)V
.end method
