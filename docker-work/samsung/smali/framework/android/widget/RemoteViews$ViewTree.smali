.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# static fields
.field private static final greylist-max-o INSERT_AT_END_INDEX:I = -0x1


# instance fields
.field private greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoot:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChildren(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "root"    # Landroid/view/View;

    .line 6661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6662
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 6663
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private greylist-max-o addViewChild(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 6764
    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6765
    return-void

    .line 6771
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_19

    .line 6772
    new-instance v0, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    .line 6773
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6774
    nop

    .line 6775
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    goto :goto_1a

    .line 6776
    .end local v0    # "target":Landroid/widget/RemoteViews$ViewTree;
    :cond_19
    move-object v0, p0

    .line 6779
    .restart local v0    # "target":Landroid/widget/RemoteViews$ViewTree;
    :goto_1a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3d

    .line 6780
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_3d

    .line 6781
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 6782
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6783
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6784
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v2, :cond_3d

    .line 6785
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 6784
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 6789
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_3d
    return-void
.end method


# virtual methods
.method public greylist-max-o addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .registers 3
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    .line 6730
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 6731
    return-void
.end method

.method public greylist-max-o addChild(Landroid/widget/RemoteViews$ViewTree;I)V
    .registers 4
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "index"    # I

    .line 6739
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 6740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 6742
    :cond_b
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 6744
    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    .line 6745
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6746
    return-void

    .line 6749
    :cond_17
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6750
    return-void
.end method

.method public greylist-max-o createTree()V
    .registers 5

    .line 6666
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 6667
    return-void

    .line 6670
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 6671
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_25

    .line 6672
    check-cast v0, Landroid/view/ViewGroup;

    .line 6673
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6674
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_25

    .line 6675
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 6674
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 6678
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist findChildIndex(ILjava/util/function/Predicate;)I
    .registers 6
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 6801
    .local p2, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 6802
    return v1

    .line 6805
    :cond_6
    move v0, p1

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 6806
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    iget-object v2, v2, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6807
    return v0

    .line 6805
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6810
    .end local v0    # "i":I
    :cond_23
    return v1
.end method

.method public blacklist findChildIndex(Ljava/util/function/Predicate;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 6793
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o findViewById(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 6722
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 6723
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 6725
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 6726
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-nez v0, :cond_13

    const/4 v1, 0x0

    goto :goto_15

    :cond_13
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    :goto_15
    return-object v1
.end method

.method public greylist-max-o findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .registers 6
    .param p1, "id"    # I

    .line 6682
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 6683
    return-object p0

    .line 6685
    :cond_9
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 6686
    return-object v1

    .line 6688
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    .line 6689
    .local v2, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 6690
    .local v3, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v3, :cond_26

    .line 6691
    return-object v3

    .line 6693
    .end local v2    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .end local v3    # "result":Landroid/widget/RemoteViews$ViewTree;
    :cond_26
    goto :goto_13

    .line 6694
    :cond_27
    return-object v1
.end method

.method public blacklist findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;
    .registers 6
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    .line 6699
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6700
    return-object v1

    .line 6702
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    .line 6703
    .local v2, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-ne v2, p1, :cond_19

    .line 6704
    return-object p0

    .line 6706
    :cond_19
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 6707
    .local v3, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v3, :cond_20

    .line 6708
    return-object v3

    .line 6710
    .end local v2    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .end local v3    # "result":Landroid/widget/RemoteViews$ViewTree;
    :cond_20
    goto :goto_a

    .line 6711
    :cond_21
    return-object v1
.end method

.method public blacklist removeChildren(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 6753
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 6754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_f

    .line 6755
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6754
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6758
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public greylist-max-o replaceView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 6715
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 6716
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 6717
    invoke-virtual {p0}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 6718
    return-void
.end method
