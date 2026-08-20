.class Landroid/widget/RemoteViews$RemoveFromParentAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFromParentAction"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;I)V
    .registers 3
    .param p2, "viewId"    # I

    .line 2965
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2966
    iput p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    .line 2967
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2969
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2970
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    .line 2971
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2980
    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2982
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_1a

    if-ne v0, p1, :cond_b

    goto :goto_1a

    .line 2986
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2987
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewManager;

    if-eqz v2, :cond_19

    .line 2988
    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 2990
    :cond_19
    return-void

    .line 2983
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3022
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 9
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2997
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2998
    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 3000
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_35

    if-ne v0, p1, :cond_e

    goto :goto_35

    .line 3004
    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v1

    .line 3005
    .local v1, "parent":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v1, :cond_30

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewManager;

    if-nez v2, :cond_1d

    goto :goto_30

    .line 3008
    :cond_1d
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewManager;

    .line 3010
    .local v2, "parentVg":Landroid/view/ViewManager;
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3011
    new-instance v3, Landroid/widget/RemoteViews$RemoveFromParentAction$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/widget/RemoteViews$RemoveFromParentAction$1;-><init>(Landroid/widget/RemoteViews$RemoveFromParentAction;Landroid/view/ViewManager;Landroid/widget/RemoteViews$ViewTree;)V

    return-object v3

    .line 3006
    .end local v2    # "parentVg":Landroid/view/ViewManager;
    :cond_30
    :goto_30
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v2

    return-object v2

    .line 3001
    .end local v1    # "parent":Landroid/widget/RemoteViews$ViewTree;
    :cond_35
    :goto_35
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method public blacklist mergeBehavior()I
    .registers 2

    .line 3027
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2974
    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2975
    return-void
.end method
