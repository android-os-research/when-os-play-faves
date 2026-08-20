.class Landroid/widget/AbsListView$4;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 5894
    iput-object p1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 5897
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2e

    .line 5898
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5899
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;Z)V

    .line 5900
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_21

    .line 5901
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;Z)V

    .line 5903
    :cond_21
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5904
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5907
    :cond_2e
    return-void
.end method
