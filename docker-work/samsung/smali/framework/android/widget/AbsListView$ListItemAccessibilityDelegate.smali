.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 2709
    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2712
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2714
    iget-object v0, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2715
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2716
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2720
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2721
    return v1

    .line 2724
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2725
    .local v0, "position":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8e

    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1a

    goto/16 :goto_8e

    .line 2730
    :cond_1a
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_25

    .line 2737
    return v3

    .line 2741
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2742
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v5, :cond_33

    .line 2743
    move-object v5, v4

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v5, v5, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .local v5, "isItemEnabled":Z
    goto :goto_34

    .line 2745
    .end local v5    # "isItemEnabled":Z
    :cond_33
    const/4 v5, 0x0

    .line 2748
    .restart local v5    # "isItemEnabled":Z
    :goto_34
    iget-object v6, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8d

    if-nez v5, :cond_3f

    goto :goto_8d

    .line 2753
    :cond_3f
    sparse-switch p2, :sswitch_data_90

    .line 2780
    return v3

    .line 2773
    :sswitch_43
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2774
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 2775
    .local v1, "id":J
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v3

    return v3

    .line 2777
    .end local v1    # "id":J
    :cond_58
    return v3

    .line 2767
    :sswitch_59
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->-$$Nest$misItemClickable(Landroid/widget/AbsListView;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2768
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 2769
    .restart local v1    # "id":J
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v3

    return v3

    .line 2771
    .end local v1    # "id":J
    :cond_6e
    return v3

    .line 2755
    :sswitch_6f
    iget-object v6, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v0, :cond_7d

    .line 2756
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2757
    return v1

    .line 2759
    :cond_7d
    return v3

    .line 2761
    :sswitch_7e
    iget-object v2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_8c

    .line 2762
    iget-object v2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2763
    return v1

    .line 2765
    :cond_8c
    return v3

    .line 2750
    :cond_8d
    :goto_8d
    return v3

    .line 2727
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "isItemEnabled":Z
    :cond_8e
    :goto_8e
    return v3

    nop

    :sswitch_data_90
    .sparse-switch
        0x4 -> :sswitch_7e
        0x8 -> :sswitch_6f
        0x10 -> :sswitch_59
        0x20 -> :sswitch_43
    .end sparse-switch
.end method
