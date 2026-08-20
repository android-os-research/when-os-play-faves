.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 2774
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2784
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_3

    .line 2786
    return-void

    .line 2789
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2790
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2791
    return-void

    .line 2798
    :cond_13
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2799
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 2801
    .local v0, "currentAdapterView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    .line 2802
    .local v2, "checkedPos":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v4

    .line 2803
    .local v3, "hasValidSelection":Z
    :goto_28
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v5

    if-nez v5, :cond_6a

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-boolean v5, v5, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v5, :cond_6a

    if-eqz v3, :cond_40

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmLastSelected(Lcom/android/internal/app/ResolverActivity;)I

    move-result v5

    if-eq v5, v2, :cond_6a

    :cond_40
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_6a

    .line 2807
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4, v3, v2, v1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$msetAlwaysButtonEnabled(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    .line 2808
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2809
    if-eqz v3, :cond_64

    .line 2810
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 2811
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 2813
    :cond_64
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmLastSelected(Lcom/android/internal/app/ResolverActivity;I)V

    goto :goto_7a

    .line 2816
    :cond_6a
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-boolean v6, v5, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-boolean v6, v6, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-nez v6, :cond_77

    move v4, v1

    :cond_77
    invoke-virtual {v5, p3, v4, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 2821
    :goto_7a
    return-void
.end method

.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 2831
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_4

    .line 2833
    const/4 v0, 0x0

    return v0

    .line 2835
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2836
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2837
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 2838
    return v1
.end method
