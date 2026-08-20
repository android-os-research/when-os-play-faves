.class Landroid/widget/RemoteViews$ViewGroupActionRemove;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionRemove"
.end annotation


# static fields
.field private static final greylist-max-o REMOVE_ALL_VIEWS_ID:I = -0x2


# instance fields
.field private greylist-max-o mViewIdToKeep:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I
    .registers 1

    iget p0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveAllViewsExceptIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;I)V
    .registers 4
    .param p2, "viewId"    # I

    .line 2850
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    .line 2851
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;II)V
    .registers 4
    .param p2, "viewId"    # I
    .param p3, "viewIdToKeep"    # I

    .line 2853
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2854
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    .line 2855
    iput p3, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 2856
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2858
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    .line 2860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 2861
    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$0(Landroid/widget/RemoteViews$ViewTree;)Z
    .registers 2
    .param p0, "childTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 2907
    invoke-static {p0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 2940
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2941
    .local v0, "index":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 2942
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v1, v2, :cond_17

    .line 2943
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2945
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2947
    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2871
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2873
    .local v0, "target":Landroid/view/ViewGroup;
    if-nez v0, :cond_b

    .line 2874
    return-void

    .line 2877
    :cond_b
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_31

    .line 2879
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_28

    .line 2880
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2881
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2879
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 2885
    .end local v1    # "i":I
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2886
    return-void

    .line 2889
    :cond_31
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    .line 2890
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2951
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 9
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2897
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2898
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 2900
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_58

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_14

    goto :goto_58

    .line 2904
    :cond_14
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2906
    .local v1, "targetVg":Landroid/view/ViewGroup;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_38

    .line 2907
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2908
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    goto :goto_52

    .line 2911
    :cond_38
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2912
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2913
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fputmChildren(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)V

    .line 2916
    :cond_52
    :goto_52
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    return-object v2

    .line 2901
    .end local v1    # "targetVg":Landroid/view/ViewGroup;
    :cond_58
    :goto_58
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$initActionAsync$1$android-widget-RemoteViews$ViewGroupActionRemove(Landroid/widget/RemoteViews$ViewTree;)Z
    .registers 4
    .param p1, "childTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 2911
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 2956
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2864
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2865
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2866
    return-void
.end method
