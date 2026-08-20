.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemDeviceTargetDefaultViewHolder"
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

    .line 9157
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 9158
    invoke-direct {p0, p3, p2, p4}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 9160
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 9161
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 9177
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9178
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 9180
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 9172
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    .line 9173
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "index"    # I

    .line 9168
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 9164
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist setViewVisibility(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 9184
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9185
    return-void
.end method
