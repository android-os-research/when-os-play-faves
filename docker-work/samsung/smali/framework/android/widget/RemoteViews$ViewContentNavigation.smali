.class final Landroid/widget/RemoteViews$ViewContentNavigation;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewContentNavigation"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mNext:Z

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;IZ)V
    .registers 4
    .param p2, "viewId"    # I
    .param p3, "next"    # Z

    .line 1751
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1752
    iput p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    .line 1753
    iput-boolean p3, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 1754
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1756
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1757
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    .line 1758
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 1759
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1769
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1770
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1773
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    .line 1774
    iget-boolean v2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "showNext"

    goto :goto_16

    :cond_13
    const-string/jumbo v2, "showPrevious"

    :goto_16
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1773
    invoke-static {v1, v0, v2, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$mgetMethod(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1774
    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_22

    .line 1777
    nop

    .line 1778
    return-void

    .line 1775
    :catchall_22
    move-exception v1

    .line 1776
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 1786
    const/4 v0, 0x5

    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 1781
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1762
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1763
    iget-boolean v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1764
    return-void
.end method
