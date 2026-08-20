.class Landroid/widget/SemHorizontalAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private blacklist mActiveViews:[Landroid/view/View;

.field private blacklist mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFirstActivePosition:I

.field private blacklist mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

.field private blacklist mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewTypeCount:I

.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 9537
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9551
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private blacklist clearAccessibilityFromScrap(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 10049
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10050
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 10052
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 10053
    return-void
.end method

.method private blacklist clearScrap(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 10042
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10043
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 10044
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 10043
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 10046
    .end local v1    # "j":I
    :cond_17
    return-void
.end method

.method private blacklist pruneScrapViews()V
    .registers 11

    .line 9920
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 9921
    .local v0, "maxViews":I
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9922
    .local v1, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9923
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2a

    .line 9924
    aget-object v5, v2, v3

    .line 9925
    .local v5, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9926
    .local v6, "size":I
    sub-int v7, v6, v0

    .line 9927
    .local v7, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 9928
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_16
    if-ge v8, v7, :cond_27

    .line 9929
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "size":I
    .local v9, "size":I
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9928
    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_16

    .line 9923
    .end local v5    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "extras":I
    .end local v8    # "j":I
    .end local v9    # "size":I
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 9933
    .end local v3    # "i":I
    :cond_2a
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9934
    .local v3, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_4c

    .line 9935
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4c

    .line 9936
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9937
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-nez v7, :cond_49

    .line 9938
    invoke-direct {p0, v6, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9939
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9940
    add-int/lit8 v5, v5, -0x1

    .line 9935
    .end local v6    # "v":Landroid/view/View;
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 9945
    .end local v5    # "i":I
    :cond_4c
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9946
    .local v5, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v5, :cond_6e

    .line 9947
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_6e

    .line 9948
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 9949
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-nez v8, :cond_6b

    .line 9950
    invoke-direct {p0, v7, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9951
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 9952
    add-int/lit8 v6, v6, -0x1

    .line 9947
    .end local v7    # "v":Landroid/view/View;
    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 9956
    .end local v6    # "i":I
    :cond_6e
    return-void
.end method

.method private blacklist removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 10056
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 10057
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    # invokes: Landroid/widget/SemHorizontalAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->access$1600(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V

    .line 10058
    return-void
.end method

.method private blacklist retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 11
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 10014
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10015
    .local v0, "size":I
    if-lez v0, :cond_50

    .line 10017
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_44

    .line 10018
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 10019
    .local v2, "view":Landroid/view/View;
    nop

    .line 10020
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 10022
    .local v3, "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v4, v4, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_32

    .line 10023
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 10024
    .local v4, "id":J
    iget-wide v6, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_31

    .line 10025
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    return-object v6

    .line 10024
    .end local v4    # "id":J
    :cond_31
    goto :goto_40

    .line 10027
    :cond_32
    iget v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v4, p2, :cond_40

    .line 10028
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 10029
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    .line 10030
    return-object v4

    .line 10027
    .end local v4    # "scrap":Landroid/view/View;
    :cond_40
    :goto_40
    nop

    .line 10017
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 10033
    .end local v1    # "i":I
    :cond_44
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 10034
    .local v1, "scrap":Landroid/view/View;
    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    .line 10035
    return-object v1

    .line 10037
    .end local v1    # "scrap":Landroid/view/View;
    :cond_50
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method blacklist addScrapView(Landroid/view/View;I)V
    .registers 9
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 9772
    if-nez p1, :cond_3

    return-void

    .line 9774
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9775
    .local v0, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v0, :cond_c

    .line 9776
    return-void

    .line 9779
    :cond_c
    iput p2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 9783
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 9784
    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 9785
    return-void

    .line 9788
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9794
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalAbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 9798
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    .line 9799
    .local v2, "scrapHasTransientState":Z
    if-eqz v2, :cond_6d

    .line 9800
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v3, v3, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_45

    .line 9803
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_3d

    .line 9804
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9806
    :cond_3d
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8f

    .line 9807
    :cond_45
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v3, :cond_5c

    .line 9810
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_56

    .line 9811
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9813
    :cond_56
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8f

    .line 9816
    :cond_5c
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_67

    .line 9817
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 9819
    :cond_67
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 9822
    :cond_6d
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v4, v3, :cond_77

    .line 9823
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 9825
    :cond_77
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 9826
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9830
    :cond_88
    :goto_88
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    if-eqz v3, :cond_8f

    .line 9831
    invoke-interface {v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 9834
    :cond_8f
    :goto_8f
    return-void
.end method

.method blacklist addScrapView(Landroid/view/View;Z)V
    .registers 3
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "ignoreRetainView"    # Z

    .line 9760
    return-void
.end method

.method public blacklist addShouldRetainView(ILandroid/view/View;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 9568
    return-void
.end method

.method blacklist clear()V
    .registers 4

    .line 9641
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 9642
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9643
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 9644
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    goto :goto_1a

    .line 9645
    :cond_b
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9646
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1a

    .line 9647
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 9648
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 9646
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 9652
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 9653
    return-void
.end method

.method public blacklist clearShouldRetainView()V
    .registers 1

    .line 9571
    return-void
.end method

.method blacklist clearTransientStateViews()V
    .registers 7

    .line 9722
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9723
    .local v0, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 9724
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 9725
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_18

    .line 9726
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9725
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 9728
    .end local v3    # "i":I
    :cond_18
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9731
    .end local v2    # "N":I
    :cond_1b
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9732
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_35

    .line 9733
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 9734
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v3, :cond_32

    .line 9735
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9734
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 9737
    .end local v4    # "i":I
    :cond_32
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 9739
    .end local v3    # "N":I
    :cond_35
    return-void
.end method

.method blacklist fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .line 9663
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_9

    .line 9664
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9666
    :cond_9
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 9668
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9669
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p1, :cond_28

    .line 9670
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9671
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9673
    .local v3, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 9676
    aput-object v2, v0, v1

    .line 9669
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 9679
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method blacklist getActiveView(I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I

    .line 9689
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v0, p1, v0

    .line 9690
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9691
    .local v1, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    if-ltz v0, :cond_11

    array-length v3, v1

    if-ge v0, v3, :cond_11

    .line 9692
    aget-object v3, v1, v0

    .line 9693
    .local v3, "match":Landroid/view/View;
    aput-object v2, v1, v0

    .line 9694
    return-object v3

    .line 9696
    .end local v3    # "match":Landroid/view/View;
    :cond_11
    return-object v2
.end method

.method public blacklist getRetainViewPositions()[Ljava/lang/Object;
    .registers 2

    .line 9577
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getScrapView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I

    .line 9745
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 9746
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 9748
    :cond_c
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 9749
    .local v0, "whichScrap":I
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 9750
    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 9753
    .end local v0    # "whichScrap":I
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShouldRetainView(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 9585
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShouldRetainViewCount()I
    .registers 2

    .line 9581
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getTransientStateView(I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I

    .line 9700
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_26

    .line 9701
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 9702
    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9703
    .local v2, "result":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 9704
    return-object v2

    .line 9706
    .end local v0    # "id":J
    .end local v2    # "result":Landroid/view/View;
    :cond_26
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_3e

    .line 9707
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 9708
    .local v0, "index":I
    if-ltz v0, :cond_3e

    .line 9709
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 9710
    .local v1, "result":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9711
    return-object v1

    .line 9714
    .end local v0    # "index":I
    .end local v1    # "result":Landroid/view/View;
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist markChildrenDirty()V
    .registers 7

    .line 9603
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 9604
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9605
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9606
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1a

    .line 9607
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 9606
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 9609
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_1a
    goto :goto_3a

    .line 9610
    :cond_1b
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9611
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_3a

    .line 9612
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 9613
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9614
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    if-ge v4, v3, :cond_37

    .line 9615
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 9614
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 9611
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 9619
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_53

    .line 9620
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 9621
    .local v0, "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_43
    if-ge v1, v0, :cond_53

    .line 9622
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 9621
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 9625
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_53
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_6c

    .line 9626
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 9627
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5c
    if-ge v1, v0, :cond_6c

    .line 9628
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 9627
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 9631
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_6c
    return-void
.end method

.method blacklist reclaimScrapViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 9962
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 9963
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 9965
    :cond_b
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9966
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9967
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_1a

    .line 9968
    aget-object v3, v1, v2

    .line 9969
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9967
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 9972
    .end local v0    # "viewTypeCount":I
    .end local v1    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist removeShouldRetainView(I)V
    .registers 2
    .param p1, "position"    # I

    .line 9574
    return-void
.end method

.method blacklist removeSkippedScrap()V
    .registers 5

    .line 9840
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 9841
    return-void

    .line 9843
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9844
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 9845
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9844
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 9847
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9848
    return-void
.end method

.method blacklist scrapActiveViews()V
    .registers 14

    .line 9854
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9855
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 9856
    .local v1, "hasListener":Z
    :goto_b
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v2, :cond_10

    goto :goto_11

    :cond_10
    move v2, v3

    .line 9858
    .local v2, "multipleScraps":Z
    :goto_11
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9859
    .local v4, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v5, v0

    .line 9860
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_16
    if-ltz v6, :cond_a2

    .line 9861
    aget-object v7, v0, v6

    .line 9862
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_9e

    .line 9863
    nop

    .line 9864
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9865
    .local v8, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 9867
    .local v9, "whichScrap":I
    const/4 v10, 0x0

    aput-object v10, v0, v6

    .line 9869
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    const/4 v11, -0x2

    if-eqz v10, :cond_7a

    .line 9871
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9873
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v10, v10, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_5a

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v10, v10, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v10, :cond_5a

    .line 9874
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v10, :cond_49

    .line 9875
    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9877
    :cond_49
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v10, v10, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 9878
    .local v10, "id":J
    iget-object v12, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9879
    .end local v10    # "id":J
    goto :goto_9e

    :cond_5a
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v10, v10, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v10, :cond_74

    .line 9880
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v10, :cond_6b

    .line 9881
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9883
    :cond_6b
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9e

    .line 9884
    :cond_74
    if-eq v9, v11, :cond_9e

    .line 9886
    invoke-direct {p0, v7, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_9e

    .line 9888
    :cond_7a
    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-nez v10, :cond_86

    .line 9890
    if-eq v9, v11, :cond_9e

    .line 9891
    invoke-direct {p0, v7, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_9e

    .line 9895
    :cond_86
    if-eqz v2, :cond_8c

    .line 9896
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v10, v9

    .line 9899
    :cond_8c
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9900
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v6

    iput v10, v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 9901
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9903
    if-eqz v1, :cond_9e

    .line 9904
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    invoke-interface {v10, v7}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 9860
    .end local v7    # "victim":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v9    # "whichScrap":I
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_16

    .line 9910
    .end local v6    # "i":I
    :cond_a2
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->pruneScrapViews()V

    .line 9911
    return-void
.end method

.method blacklist setCacheColorHint(I)V
    .registers 8
    .param p1, "color"    # I

    .line 9980
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 9981
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9982
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9983
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1a

    .line 9984
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9983
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 9986
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_1a
    goto :goto_3a

    .line 9987
    :cond_1b
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9988
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_3a

    .line 9989
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 9990
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9991
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    if-ge v4, v3, :cond_37

    .line 9992
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9991
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 9988
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 9997
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9998
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9999
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    if-ge v2, v1, :cond_4a

    .line 10000
    aget-object v3, v0, v2

    .line 10001
    .local v3, "victim":Landroid/view/View;
    if-eqz v3, :cond_47

    .line 10002
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9999
    .end local v3    # "victim":Landroid/view/View;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 10005
    .end local v2    # "i":I
    :cond_4a
    return-void
.end method

.method public blacklist setViewTypeCount(I)V
    .registers 5
    .param p1, "viewTypeCount"    # I

    .line 9589
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1c

    .line 9593
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 9594
    .local v0, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p1, :cond_12

    .line 9595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 9594
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 9597
    .end local v1    # "i":I
    :cond_12
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9598
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9599
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9600
    return-void

    .line 9590
    .end local v0    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .line 9634
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
