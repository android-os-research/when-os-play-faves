.class Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 9275
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 2

    .line 9278
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 9279
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 9280
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSectionsChanged()V

    .line 9282
    :cond_14
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 2

    .line 9286
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 9287
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 9288
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSectionsChanged()V

    .line 9290
    :cond_14
    return-void
.end method
